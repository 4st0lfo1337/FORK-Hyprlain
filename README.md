<div align="center">
   <img  width="100" src="https://github.com/user-attachments/assets/8df531d8-a59c-41af-b6fa-a129099b9149" /><a id=-Alice>
</div>

<div align="center">
   
[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=【+4st0lfo1337+-+HyprlainFork+】)](https://git.io/typing-svg)
</div>

---

<br><br>

Inspired by 1998 anime [Serial Experiments Lain](https://en.wikipedia.org/wiki/Serial_Experiments_Lain),

This config is just my version of the [Hyprlain](https://github.com/Ascaniolamp/Hyprlain) by Ascaniolamp Rice, that I use on my daily driver PC,
With a few color changes, some Hyprland configuration tweaks, and a handful of other modifications to better fit my style...
If you're looking for the complete setup with GTK themes, sddm Theme, Animated Wallpapers, and more, I highly recommend visiting the original Hyprlain repository.

If you like Lain and Linux as much as I do, check out the [LainOS project](https://gitlab.com/lainos)
An Arch-based, privacy-focused distribution inspired by the aesthetics of Copland-OS!

> [!IMPORTANT]
> I only use the Super + C and Super + R keybindings because
> I use multiple monitors, you don't need to use these keys if you use a single monitor.
> 
> *This Hyprland 0.56.2 setup is running in CachyOS*

<br><br>


## [![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Gallery)](https://git.io/typing-svg)

| <img width="1920" height="1078" alt="2026-07-26-234451_hyprshot" src="https://github.com/user-attachments/assets/e5338d6a-5661-4398-8bc8-3d0117f36659" /> | <img width="1916" height="1076" alt="2026-07-26-234612_hyprshot" src="https://github.com/user-attachments/assets/431b6cd3-3be1-47d2-8614-90d07d66f446" /> |
|--|--|
| <img width="1918" height="1078" alt="2026-07-26-234710_hyprshot" src="https://github.com/user-attachments/assets/c615218a-06fc-4c4b-a097-2621880ecf63" /> | <img width="1918" height="1077" alt="2026-07-26-235011_hyprshot" src="https://github.com/user-attachments/assets/12eb37a6-6652-4969-90f1-d12c7c02ab92" /> |

<br><br>

## [![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Showcase+(Video))](https://git.io/typing-svg)

| Shaders | Hypr-Sounds |
| :--------: | :------------: |
| <a href="https://youtu.be/3uQDOzU91Qc"><img src="https://github.com/user-attachments/assets/a77992c9-6a9c-43a1-a9bb-a0eeab01f100" width="450" alt="Shaders"></a> | <a href="https://youtu.be/e8ihUREKLTs"><img src="https://img.youtube.com/vi/e8ihUREKLTs/maxresdefault.jpg" width="450" alt="Hypr-Sounds"></a> |

<br><br>

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Content:)](https://git.io/typing-svg)
---
As I said before, this is just a Fork, but what does it add?

- Updated Hyprland configuration;
- Micro Custom Lain Theme;
- Cava Theme;
- LainOS Fastfetch;
- Custom Hyprland Workspace Animations;
- Border Animations;
- Cleaner Blur;
- Collection of Screen Shaders;
- Zsh Config.

<br><br>

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Hypr-sounds:)](https://git.io/typing-svg)
---

- **How it Works?**

Hypr-sounds is a script built in Rust that plays a sound every time you open a new window in Hyprland.

- **installation:**

Git clone this repo:
```
git clone <repository-url>
```
> [!IMPORTANT]
>Place your sound files in `~/.config/hypr/sounds`. Then, edit `main.rs` and configure the open and close sound files to match the filenames in that directory.

After, release the shortcut for the script using this comands:

```
cd /Fork-Hyprlain/hypr-sounds
cargo build --release
```
Place the `hypr-sounds` executable in the `~/.config/hypr/scripts` directory.

To run the script automatically when Hyprland starts, add the following line to your Hyprland configuration file:

```ini
exec-once = ~/.config/hypr/scripts/hypr-sounds
```

<br><br>

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Software+Used:)](https://git.io/typing-svg)
---

<img align="right" width="130" 
   src="https://github.com/user-attachments/assets/1d85cf4b-0245-496b-a49d-da691d0aab02"/>

- *WM* - [Hyprland latest version](https://github.com/hyprwm/Hyprland)
- *File Manager* - [Yazi](https://github.com/sxyazi/yazi)
- *Fetch* - [Fastfetch](https://github.com/fastfetch-cli/fastfetch)
- *Terminal* - [Kitty](https://github.com/kovidgoyal/kitty)
- *Shell* - [Zsh](https://github.com/ohmyzsh/ohmyzsh)
- *Prompt* - [p10k](https://github.com/romkatv/powerlevel10k) 
- *Bar* - [Waybar](https://github.com/Alexays/Waybar)
- *Editor* - [Micro](https://github.com/zyedidia/micro)
- *App Launcher* - [Rofi](https://github.com/davatorium/rofi)
- *Audio Visualizer* - [Cava](https://github.com/karlstav/cava)
- *System Monitor* - [Bottom](https://github.com/clementtsang/bottom) 

Zsh Dependency:
```
paru -S zsh neovim micro eza bat fd fzf zoxide starship ripgrep
```

<br clear="right">

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Rofi+config:)](https://git.io/typing-svg)
---

> [!NOTE]
>I have made a repo just for my Rofi Config, also based in the Hyprlain rice.

- **Repository -** https://github.com/4st0lfo1337/RofiConfig

 <br><br>

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Based+on+these+repositories:)](https://git.io/typing-svg)
---

<img align="right" width="230" 
   src="https://github.com/user-attachments/assets/8775c18c-5e3f-4635-91b8-9f62f25d789c"/>

- [Hyprlain](https://github.com/Ascaniolamp/Hyprlain)
- [lain-i3wm](https://github.com/cynaax/lain-i3wm)
- [Lain Linux Rice](https://github.com/FlexUnder/Lain-linux-rice)
- [LainOS Ricer Arch](https://github.com/The-LainOS-Project/LainOS-ricer-arch)
- [HyDE](https://github.com/HyDE-Project/HyDE)

<br clear="right">

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Shaders+source:)](https://git.io/typing-svg)
---

All of the shaders that im using on the rice are not mine, are just some random shaders that i found on reddit or github, with some tweaks i made.
<ul>
  <li>https://github.com/hyprwm/Hyprland/issues/1140</li>
  <li>https://www.reddit.com/r/hyprland/comments/1n3i18s/hyprland_screen_shaders_ctr_effect_cracking/</li>
  <li>https://www.reddit.com/r/hyprland/comments/1j74137/loving_shaders/</li>
</ul>

> [!CAUTION]
>To use the shaders, you need to uncomment
>the line "damage_tracking = 0" in debug.

<br><br>

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Courier+New&size=35&pause=999999&color=CE7688&vCenter=true&width=700&lines=╰─❮+Future+updates:)](https://git.io/typing-svg)
---

- Bug fixes for the hypr-sounds, and for it to detect only your actions;
- Hyprland Lua Config;
- Install.sh script;
- nvim theme.

<p align="center">
  <a href="https://git.io/typing-svg">
    <img src="https://readme-typing-svg.herokuapp.com?font=Courier+New&size=30&pause=999999&color=CE7688&center=true&vCenter=true&width=600&lines=<3" />


---

<div align="center">
   <img width="300" src="https://github.com/user-attachments/assets/e07bf6fb-1593-43e8-ba28-fd11fc810154" />
</div>

<p align="center">
  <a href="https://git.io/typing-svg">
    <img src="https://readme-typing-svg.herokuapp.com?font=Courier+New&size=30&pause=1000&color=CE7688&center=true&vCenter=true&width=600&lines=See+you+in+the+wired..." />
  </a>
</p>
