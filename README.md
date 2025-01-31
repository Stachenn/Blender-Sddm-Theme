
# Blender Sddm Theme

Sddm theme that look like startup blender

# Demo
![](https://github.com/Stachenn/Blender-Sddm-Theme/blob/main/docs/sdmm-blender.gif)


# Installation
### 1. Plasma system settings app(new user friendly)
- Download latest release
- Open Plasma system settings app
- Click on search box and type "sddm" and click "Sddm login screen"
- ![](https://github.com/Stachenn/Blender-Sddm-Theme/blob/main/docs/instgui0.png)
- Click 3 dots icon in right corner of window
- ![](https://github.com/Stachenn/Blender-Sddm-Theme/blob/main/docs/instgui1.png)
- Click "Load from file" and select downloaded release
### 2. Terminal
- Download latest release
- Open terminal
- Write `cd ~/Folder where you downloaded release`
- Write `tar -xvf Blender-Sddm-Theme.tar`
- Write `sudo cp Blender-Sddm-Theme /usr/share/sddm/themes -r`
# Apply theme
### 1. Plasma system settings app(new user friendly)
- Open Plasma system settings app
- Click on search box and type "sddm" and click "Sddm login screen"
- ![](https://github.com/Stachenn/Blender-Sddm-Theme/blob/main/docs/instgui0.png)
- Select Blender-Sddm-Theme and click Apply
### 2. Terminal
- Open terminal
- Write `sudo nano /etc/sddm.conf`
- Delete content of file and write:
- 1.[Theme]
- 2.Current=Blender-Sddm-Theme

## License

[GPLv3.0](https://github.com/Stachenn/Blender-Sddm-Theme/blob/main/LICENSE)


## Others
If you have any suggestion's don't be afraid and write your suggestion in "Issues - > Idea -> New Issue -> Labels -> Idea"
