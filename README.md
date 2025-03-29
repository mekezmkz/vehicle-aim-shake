# Camera Shake While Aiming in Vehicle (FiveM)

This FiveM script introduces a camera shake effect when the player aims while inside a vehicle.

## 🚀 Features
- Camera shake effect when aiming in a vehicle.
- Dynamic adjustment of shake intensity.
- Performance optimized with variable wait times.
- Command to adjust shake intensity in-game.

## 📂 Installation
1. Download the `vehicle_aim_shake.zip` file and place it in your custom FiveM resource folder.
2. Restart the server or reload the resources using `ensure vehicle_aim_shake`.

## ⚙️ Configuration
In the `vehicle_aim_shake.lua` file, you can modify the `shakeIntensity` value to adjust the camera shake strength:

```lua
local shakeIntensity = 0.2 -- Adjust this value to increase/decrease intensity
```

## 🎮 In-game Commands
> **Note:** This command is currently commented out in the script. You can enable it by removing the `--` comments.

- **Adjust camera shake intensity:**
  ```
  /setaimshake [value]
  ```
  - Example: `/setaimshake 1.5` to increase intensity.
  - Minimum value: `0.0`, maximum: `2.0`.

## 📜 License
This script is open-source and can be freely used for FiveM projects. If you modify or use it in a public project, credit is always appreciated!

---

🔥 **Contribute to the project!** If you have suggestions or improvements, feel free to fork and submit a pull request on GitHub! 🚀
