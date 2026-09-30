-- Each page's first non-empty "##" heading names the page; template.html
-- uses it in the browser tab title.

function Pandoc(doc)
  for _, b in ipairs(doc.blocks) do
    if b.t == "Header" and b.level == 2 and #b.content > 0 then
      doc.meta["page-name"] = pandoc.utils.stringify(b)
      break
    end
  end
  return doc
end

-- Experience headings are written as "Role<br>Place<br>Dates". Split them at
-- the first <br> into a .role span and a .meta span so the stylesheet can
-- show the role as the heading and the place/dates as smaller grey text.

local function isBr(el)
  return el.t == "RawInline" and el.format == "html" and el.text:match("^<%s*br%s*/?>$")
end

function Header(el)
  if el.level ~= 3 then
    return nil
  end
  for i, x in ipairs(el.content) do
    if isBr(x) then
      local role = pandoc.List({ table.unpack(el.content, 1, i - 1) })
      local meta = pandoc.List({ table.unpack(el.content, i + 1) })
      el.content = {
        pandoc.Span(role, { class = "role" }),
        pandoc.Span(meta, { class = "meta" }),
      }
      return el
    end
  end
end
