# Htop for OnionOS on Miyoo Mini Plus

## How to install:
### Manual way:
  - Download the latest [release](https://github.com/allanxp4/miyoo-htop/releases/latest/download/Htop.zip), extract it and move the downloaded folder into the `/mnt/SDCARD/App` folder of your SD Card.
  - You can also use the Onion web file manager to upload the folder.
  - If you want to use it globally as `htop` on a shell, run `/mnt/SDCARD/App/Htop/create-symlink.sh`.

### SSH Shell Way:
  - login to your Miyoo SSH and run `wget -q -O - https://github.com/allanxp4/miyoo-htop/releases/latest/download/remoteinst.sh | sh`.
  - *Always check what any script on the internet is doing before running it!*
  - Now you should be able to use it as a Onion App (that uses the existing onion `st` terminal) or over SSH/Telnet using the normal `htop` program.

## How to build:
  - If you don't have a machine capable of running ARM32 docker containers (Pi, ARM SBCs, ARM Macs), you need to setup QEMU to run with docker.
  - After being able to run arm32 containers, just run `./build.sh` and a `Htop.zip` folder should appear in the project folder.

## Some details
  - Included busybox has a broken/weird TERMINFO, so we supply our own
  - Compiled statically with musl to avoid any library compatibility or rootfs compatibility issues
  - TODO: use a cross compiler instead of the native image (not a priority for me since my daily driver is ARM)
  
