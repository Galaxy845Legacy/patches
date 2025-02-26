
---

# System-side Bluetooth Audio HAL (sysbta) Patches

These patches are used to ensure that Bluetooth audio works correctly.

Google has modularized some components, including Bluetooth, in Android 13. However, the Broadcom Bluetooth (BCM BT) from our vendor, which is prebuilt and comes with the stock firmware of the devices, does not support this change. Therefore, we need to compile modified versions of "android.hardware.bluetooth.audio" to disable BCM BT and switch to AOSP BT. I opted for this implementation because we do not build the vendor, and this same solution has worked very well in GSIs since then.

## Applying the Patches

To apply the patches, follow the steps below:

1. Clone the repository in the root folder of the Android source code directory, in the patches folder:
  ```
  git clone https://github.com/Galaxy845Legacy/patches.git patches
  ```

2. Run the apply.sh script:
  ```
  bash patches/apply.sh
  ```

## Credits

Special thanks to @petercxy for providing the necessary patches for sysbta to function and for his implementation.

---
