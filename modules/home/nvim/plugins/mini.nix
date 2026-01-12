{
  programs.nixvim.plugins.mini = {
    enable = true;
    autoLoad = true;

    modules = {
      pick = {
        options = {
          content_from_bottom = false;
          use_cache = false;
        };
      };
    };
  };
}
