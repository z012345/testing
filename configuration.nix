{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda"; # or "nodev" for efi only

  networking.hostName = "ni"; # Define your hostname.
  networking.useDHCP = false;
  networking.interfaces.eno1.useDHCP = true;
  networking.interfaces.wlp7s0b1.useDHCP = true;
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  environment.systemPackages = with pkgs; [
     wget vim  jwm mc ncdu nmon lynx irssi chromium  firefox terminator
     tmux geany conky pulseaudio volumeicon  moc gnome3.networkmanagerapplet
     dmenu
     ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  services.xserver = {
    enable = true;

    desktopManager = {
      default = "none";
      xterm.enable = false;
    };

    windowManager.ratpoison = {
      enable = true;
    };
  };

  # Enable the X11 windowing system.
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "eurosign:e";
  # Enable touchpad support.
  services.xserver.libinput.enable = true;


  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.z0 = {
     isNormalUser = true;
     extraGroups = [ "wheel" "disk" "audio" "video"
    "networkmanager" "systemd-journal" ]; # Enable ‘sudo’ for the user.
   };

  services.nixosManual.showManual = true; 
  system.stateVersion = "19.09"; # Did you read the comment?

}
