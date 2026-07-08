-- Pandoc converts raw <br> tags to no-ops for non-HTML writers (they are
-- silently dropped), so headings/paragraphs written with <br> collapse
-- onto one line in the PDF. Turn them into real line breaks instead.
-- Also drop empty headings (e.g. bio.md's leading "##"), which exist only
-- to give the HTML sidebar/TOC a section boundary and otherwise leave a
-- large blank gap under the title in the PDF.

local function fixBr(inlines)
  local out = pandoc.List()
  for _, el in ipairs(inlines) do
    if el.t == "RawInline" and el.format == "html" and el.text:match("^<%s*br%s*/?>$") then
      out:insert(pandoc.LineBreak())
    else
      out:insert(el)
    end
  end
  return out
end

function Header(el)
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