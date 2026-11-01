# Decacher
A no-reboot background cache cleaner. Works in UIDs 0, 2000 and 1000.

`main.sh` works standalone, other files are helpers.

# Build module

```bash
git clone https://github.com/ivanzasilly/decacher-android-module.git
cd decacher-android-module
chmod +x build.sh
./build.sh

```

# Install module

1. Navigate to the module manager
2. Select the built `decacher.zip`

No reboot required, `customize.sh` automatically starts the daemon. `uninstall.sh` stops it.
