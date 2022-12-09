local M = {}

function M.delete_file(prompt_bufnr)
  local picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
  local multi_selection = picker:get_multi_selection()
  require("telescope.actions").close(prompt_bufnr)

  if #multi_selection > 0 then
    for i, entry in ipairs(multi_selection) do
      local filename = entry[1]
     if filename then
        pcall(vim.cmd, string.format("silent bd! %s", filename))
        pcall(vim.cmd, string.format("silent !rm %s", filename))
      end
    end
  end
end

require("telescope").setup({
  defaults = {
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
  },
  pickers = {
    git_files = {
      mappings = {
        n = {
          ["xx"] = M.delete_file
        },
      },
    },
    buffers = {
      mappings = {
        n = {
          ["xx"] = require("telescope.actions").delete_buffer
        },
      },
    },
  }
})

