{ pkgs, ... }:

{
  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      rocm-opencl-icd    # OpenCL support for AMD
      rocm-opencl-runtime
      amdvlk             # Vulkan support
      vaapiVdpau
      libvdpau-va-gl
      mesa              # Essential for AMD graphics
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      vaapiVdpau
      libvdpau-va-gl
      mesa
    ];
  };
}
