# https://github.com/AdisonCavani/distro-grub-themes
## Create themes directory
To create themes directory, replace BOOT_GRUB_LOCATION with the directory where GRUB is located.
Usually it's /boot/grub or /boot/grub2 but some distributions have a different one, so you'll have to figure it out.
```bash
sudo mkdir BOOT_GRUB_LOCATION/themes
sudo cp -r <theme_name>/ BOOT_GRUB_LOCATION/themes
```

## Edit GRUB config
sudo nano /etc/default/grub
Uncomment this line and set your display resolution:
GRUB_GFXMODE=1920x1080
Make sure GRUB_TERMINAL_OUTPUT="console" is commented out!
At the end of the file, add the path of your theme:
GRUB_THEME="BOOT_GRUB_LOCATION/themes/<theme_name>/theme.txt"

## Update Grub config
You'll need to tell GRUB to update its configuration in order to include the new theme.
Ubuntu and Debian-based systems:

sudo update-grub

Fedora, Arch & others:

If you have a UEFI system, run:

sudo grub-mkconfig -o BOOT_GRUB_LOCATION/grub.cfg

or

sudo grub2-mkconfig -o BOOT_GRUB_LOCATION/grub.cfg
