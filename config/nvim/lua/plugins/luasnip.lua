-- https://www.lazyvim.org/configuration/recipes#supertab
-- Disable default <tab> and <s-tab> behavior in LuaSnip
return {
  "L3MON4D3/LuaSnip",
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  keys = function()
    return {}
  end,
}
