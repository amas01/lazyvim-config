return {
  "folke/snacks.nvim",
  opts = {
    explorer = { enabled = false },
  },
  keys = {
    {
      "<leader>r",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume Picker",
    },
  },
}
