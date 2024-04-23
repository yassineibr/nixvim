{pkgs, ...}: {
  extraPlugins = [
    pkgs.vimExtraPlugins.typst-preview-chomsuke
  ];
  extraConfigLua = ''
    require 'typst-preview'.setup {
      -- Setting this true will enable printing debug information with print()
      debug = false,

      -- Custom format string to open the output link provided with %s
      -- Example: open_cmd = 'firefox %s -P typst-preview --class typst-preview'
      open_cmd = nil,

      -- Provide the path to binaries for dependencies.
      -- Setting this will skip the download of the binary by the plugin.
      -- Warning: Be aware that your version might be older than the one
      -- required.
      dependencies_bin = {
       ['typst-preview'] = "${pkgs.typst-preview}/bin/typst-preview",
       ['websocat'] = "${pkgs.websocat}/bin/websocat"
      },

      -- Setting this to 'always' will invert black and white in the preview
      -- Setting this to 'auto' will invert depending if the browser has enable
      -- dark mode
      invert_colors = 'never',

      -- This function will be called to determine the root of the typst project
      get_root = function(bufnr_of_typst_buffer)
        return vim.fn.getcwd()
      end,
    }
  '';
}
