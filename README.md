# waybar-headsetcontrol-script
This is a basic Bash script that shows the headset's battery using the headsetcontrol package


you need to add this code to waybar config"
"custom/headset-battery": {
        "format": " {}",
        "exec": "/home/username/.config/waybar/headset_battery.sh",
        "interval": 60
    },


"
then add this to "modules-left": [
       "custom/headset-battery",
  ],"

