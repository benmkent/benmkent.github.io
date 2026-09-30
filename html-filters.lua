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
