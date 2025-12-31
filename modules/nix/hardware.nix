{ pkgs, ... }:

{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = true;
      extraPackages = with pkgs; [
        mesa
        vulkan-loader
        vulkan-validation-layers
        vulkan-tools
      ];
      extraPackages32 = with pkgs.pkgsi686Linux; [
        mesa
      ];
    };
  };

  services.xserver.videoDrivers = [ "amdgpu" ];  
}
