require("telescope").setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--ignore-file',
      '.gitignore',
      '--glob',
      '"!{**/MakeFile/*,**/CMakeFiles/*,**/lua/*}"',
    },
    file_ignore_patterns = {
      "node_modules",
      "MakeFile",
      "CMakeFiles",
      ".git"
    },
  },
  -- extensions = {
  --   fzf = {
  --     fuzzy = true,
  --     override_generic_sorter = false,
  --     override_file_sorter = true,
  --     case_mode = "smart_case"
  --   }
  -- }
}
