# My configs

I store my Ubuntu configurations and scripts here. Most of the scripts have been converted into Fish shell functions.

I have attempted to categorize the files by different environments, but it's not an easy task.

There are two group commands(script): one is static and can be used directly on all systems, while the other depends on specific environment information (like IP addresses).
For the second, I put it in ./Kits, change it and save it to functions or alias.

## Changes
* Changed terminal shell from `zsh` to `fish`.

## My choices

### gtk-theme

I use **[WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)** , **[WhiteSur Icon Theme](https://github.com/vinceliuice/WhiteSur-gtk-theme?tab=readme-ov-file#whitesur-icon-theme)** and **[hatsune-miku-windows-linux-cursors](https://github.com/supermariofps/hatsune-miku-windows-linux-cursors)**. 

#### Must-have Extensions:

Pano

Tiling Assistant

Dash to Dock

Hide Top Bar

Vitals( mabye )


### using fish

install fish and [Oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

**IMPORTANT PLUGINS**

~~~fish
omf install z
omf install https://github.com/jhillyerd/plugin-git
~~~

### ranger
**required:**

execute `pip install ueberzug`

## Commonly used software and its alternatives ( ALL PLATFORM )

Ubuntu users can refer to the programs listed in the apt*.txt files located in the install directory.

The software's official site will tell u how to install it.  If there's no suitable format of the app that you like, I recommend you try the `AppImage` . Mostly you will need to create a desktop file for the APPIAMGE.

If you wanna running a specific  Windows application like `PhotoShop ` , try [wine](https://www.winehq.org/). But seriously?

| Common use in windows      | APPS                                               |      |
| -------------------------- | -------------------------------------------------- | ---- |
| Microsoft Office           | [LibreOffice](https://www.libreoffice.org/) , WPS  |      |
| Mail                       | Mozilla Thunderbird   (凡是网易系的公司邮箱都支持) |      |
| Navicat                    | DBeaver                                            |      |
| Music                      | Spotify                                            |      |
| Meeting                    | Zoom                                               |      |
| Reader (PDF, EPUB ,MOBI  ) | [FBReader](https://fbreader.org/en)                |      |
| Snipaste                   | [Flameshot](https://flameshot.org/)                |      |
| Postman                    | Thunder clint （Vscode Plugin ）                   |      |
| Video Recorder             | OBS                                                |      |
| PotPlayer                  | VLC                                                |      |
| Vscode                     | [lunarvim](https://www.lunarvim.org/)              |      |

[Screenkey](https://www.thregr.org/wavexx/software/screenkey/) ：Screencast your keys.

`NeoVim` If you are willing to invest time in learning and using Vim.

### CN only  （Chromium : 你好！）

 **飞书**、**腾讯会议**都有Linux端，网易云原来支持后面被移除了(建议`vscode` 插件替代)

**微信** 仅支持国产系统麒麟和统信UOS, Ubuntu勉强可用

**[QQ](https://im.qq.com/linuxqq/index.shtml)** 各平台可用 （更新后遗留旧版本文件，需要手动清理垃圾玩意）,小毛病不少

### Server
[cockpit](https://cockpit-project.org/)
