return {
  -- GitHub Copilot inline suggestions
  { "github/copilot.vim" },

  -- Which-key AI group
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      spec = {
        { "<leader>a", group = "ai" },
      },
    },
  },

  -- CopilotChat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    event = "VeryLazy",
    opts = {
      -- Usa Claude Sonnet via GitHub Copilot (cambiar modelo con :CopilotChatModels)
      model = "claude-sonnet-4",
      question_header = "## User ",
      answer_header = "## Copilot ",
      error_header = "## Error ",
      auto_follow_cursor = false,
      auto_insert_mode = true,
      window = {
        layout = "vertical",
        width = 0.4,
      },
      mappings = {
        close = { normal = "q", insert = "<C-c>" },
        reset = { normal = "<C-x>", insert = "<C-x>" },
        submit_prompt = { normal = "<CR>", insert = "<C-CR>" },
        accept_diff = { normal = "<C-y>", insert = "<C-y>" },
      },
      prompts = {
        Explain = { prompt = "Please explain how the following code works." },
        Review = { prompt = "Please review the following code and provide suggestions for improvement." },
        Tests = { prompt = "Please explain how the selected code works, then generate unit tests for it." },
        Refactor = { prompt = "Please refactor the following code to improve its clarity and readability." },
        FixCode = { prompt = "Please fix the following code to make it work as intended." },
        FixError = { prompt = "Please explain the error in the following text and provide a solution." },
        BetterNamings = { prompt = "Please provide better names for the following variables and functions." },
        Documentation = { prompt = "Please provide documentation for the following code." },
        JsDocs = { prompt = "Please provide JsDocs for the following code." },
        Commit = {
          prompt = "Write commit message for the change with commitizen convention",
          selection = function(source)
            return require("CopilotChat.select").gitdiff(source)
          end,
        },
        CommitStaged = {
          prompt = "Write commit message for the change with commitizen convention",
          selection = function(source)
            return require("CopilotChat.select").gitdiff(source, true)
          end,
        },
      },
    },
    keys = {
      -- Toggle chat
      { "<leader>av", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Toggle" },
      -- Ask input
      {
        "<leader>ai",
        function()
          local input = vim.fn.input("Ask Copilot: ")
          if input ~= "" then
            require("CopilotChat").ask(input)
          end
        end,
        desc = "CopilotChat - Ask input",
      },
      -- Quick chat with buffer context
      {
        "<leader>aq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "CopilotChat - Quick chat",
      },
      -- Inline chat (visual mode)
      {
        "<leader>ax",
        function()
          local input = vim.fn.input("Inline Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input, {
              selection = require("CopilotChat.select").visual,
              window = { layout = "float", relative = "cursor", width = 1, height = 0.4, row = 1 },
            })
          end
        end,
        mode = "x",
        desc = "CopilotChat - Inline chat",
      },
      -- Prompt actions
      { "<leader>ae", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
      { "<leader>at", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
      { "<leader>ar", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
      { "<leader>aR", "<cmd>CopilotChatRefactor<cr>", desc = "CopilotChat - Refactor code" },
      { "<leader>an", "<cmd>CopilotChatBetterNamings<cr>", desc = "CopilotChat - Better Naming" },
      { "<leader>af", "<cmd>CopilotChatFixDiagnostic<cr>", desc = "CopilotChat - Fix Diagnostic" },
      -- Git
      { "<leader>am", "<cmd>CopilotChatCommit<cr>", desc = "CopilotChat - Commit message" },
      { "<leader>aM", "<cmd>CopilotChatCommitStaged<cr>", desc = "CopilotChat - Commit staged" },
      -- Utils
      { "<leader>ad", "<cmd>CopilotChatDebugInfo<cr>", desc = "CopilotChat - Debug Info" },
      { "<leader>al", "<cmd>CopilotChatReset<cr>", desc = "CopilotChat - Reset chat" },
      { "<leader>a?", "<cmd>CopilotChatModels<cr>", desc = "CopilotChat - Select Models" },
    },
  },
}
