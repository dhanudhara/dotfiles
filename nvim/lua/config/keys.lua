local diagnostics_active = true

local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.enable(nil, { bufnr = 0 })
  else
    vim.diagnostic.disable(nil, { bufnr = 0 })
  end
end

return {
  vim.keymap.set('n', '<Leader>dt', toggle_diagnostics, { desc = "Toggle diagnostics" }),
}
