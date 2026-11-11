---@type LazySpec
return {
  "mfussenegger/nvim-jdtls",
  -- astrocommunity java pack 只認 .git/mvnw/gradlew，補上 pom.xml/build.gradle，
  -- 都找不到時退而使用檔案所在目錄（單一 .java 練習檔）
  opts = function(_, opts)
    local markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle", "build.gradle.kts" }
    opts.root_dir = vim.fs.root(0, markers) or vim.fs.dirname(vim.api.nvim_buf_get_name(0))
  end,
}
