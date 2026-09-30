-- Pandoc converts raw <br> tags to no-ops for non-HTML writers (they are
-- silently dropped), so headings/paragraphs written with <br> collapse
-- onto one line in the PDF. Turn them into real line breaks instead.
-- Also drop empty headings (e.g. bio.md's leading "##"), which exist only
-- to give the HTML sidebar/TOC a section boundary and otherwise leave a
-- large blank gap under the title in the PDF.

local function isBr(el)
  return el.t == "RawInline" and el.format == "html" and el.text:match("^<%s*br%s*/?>$")
end

local function fixBr(inlines)
  local out = pandoc.List()
  for _, el in ipairs(inlines) do
    if isBr(el) then
      out:insert(pandoc.LineBreak())
    else
      out:insert(el)
    end
  end
  return out
end

-- Experience headings are written as "Role<br>Place<br>Dates". Keep the
-- role as the heading and set the place/dates below it in smaller text.
-- \needspace stops an entry's heading being left at the bottom of a page
-- without its first bullets.
local function splitExperience(el)
  for i, x in ipairs(el.content) do
    if isBr(x) then
      local meta = fixBr({ table.unpack(el.content, i + 1) })
      meta:insert(1, pandoc.RawInline("latex", "\\vspace{-\\parskip}\\noindent{\\small "))
      meta:insert(pandoc.RawInline("latex", "\\par}"))
      el.content = { table.unpack(el.content, 1, i - 1) }
      return { pandoc.RawBlock("latex", "\\needspace{6\\baselineskip}"), el, pandoc.Plain(meta) }
    end
  end
end

function Header(el)
  if el.level == 3 then
    local split = splitExperience(el)
    if split then
      return split
    end
  end
  el.content = fixBr(el.content)
  if #el.content == 0 then
    return {}
  end
  return el
end

function Para(el)
  el.content = fixBr(el.content)
  return el
end

-- cv_pdf.md's "contact" metadata list becomes a centred line under the
-- name, with items separated by middle dots.
function Pandoc(doc)
  local items = doc.meta.contact
  if not items then
    return nil
  end
  local line = pandoc.List()
  for i, item in ipairs(items) do
    if i > 1 then
      line:extend({ pandoc.Space(), pandoc.Str("·"), pandoc.Space() })
    end
    line:extend(item)
  end
  doc.blocks:insert(1, pandoc.RawBlock("latex", "\\begin{center}\\small"))
  doc.blocks:insert(2, pandoc.Plain(line))
  doc.blocks:insert(3, pandoc.RawBlock("latex", "\\end{center}"))
  return doc
end
