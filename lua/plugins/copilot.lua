return {
  "github/copilot.vim",
   config = function()
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_no_tab_map = true  -- Evitar que Copilot use la tecla <Tab>
  end,  
}
