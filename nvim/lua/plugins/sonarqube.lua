-- Sonarqube deshabilitado: el LSP daba errores al iniciar.
-- Para los mismos warnings que WebStorm, usar eslint + tsserver (ya incluidos en LazyVim).
return {
  {
    "iamkarasik/sonarqube.nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      local extension_path = vim.fn.stdpath("data") .. "/mason/packages/sonarlint-language-server/extension"

      require("sonarqube").setup({
        lsp = {
          cmd = {
            vim.fn.exepath("java"),
            "-jar",
            extension_path .. "/server/sonarlint-ls.jar",
            "-stdio",
            "-analyzers",
            extension_path .. "/analyzers/sonarjs.jar",
            extension_path .. "/analyzers/sonarhtml.jar",
            extension_path .. "/analyzers/sonarxml.jar",
            extension_path .. "/analyzers/sonartext.jar",
            extension_path .. "/analyzers/sonarjava.jar",
          },
          settings = {
            sonarlint = {
              pathToCompileCommands = "",
              rules = {
                -- TypeScript rules
                ["typescript:S101"] = { level = "on", parameters = { format = "^[A-Z][a-zA-Z0-9]*$" } },
                ["typescript:S103"] = { level = "on", parameters = { maximumLineLength = 180 } },
                ["typescript:S106"] = { level = "on" },
                ["typescript:S107"] = { level = "on", parameters = { maximumFunctionParameters = 7 } },
                -- Java rules
                ["java:S106"]  = { level = "on" },           -- No usar System.out, usar logger
                ["java:S1192"] = { level = "on" },           -- String literals duplicados
                ["java:S1481"] = { level = "on" },           -- Variables locales no utilizadas
                ["java:S2093"] = { level = "on" },           -- Usar try-with-resources
                ["java:S3776"] = { level = "on", parameters = { threshold = 15 } }, -- Complejidad cognitiva
                ["java:S4449"] = { level = "on" },           -- Parametros @Nonnull no deben ser nulos
              },
            },
          },
        },
        filetypes = {
          "typescript",
          "javascript",
          "html",
          "css",
          "java",
          "xml",
        },
      })
    end,
  },
}
