# 个人使用配置保存用

`exec.sh` &`my-terminal-config.sh` 在使用的服务器上用, 基于我以前ubuntu来的, 升级出错后，发现自己原意折腾意愿变少了，以后再整理吧

## 相关位置

### 环境配置文件

**Note**：使用中间件时，注意创建的用户的环境变量，为了免去麻烦，最本的是在启动配置文件中设置环境变量

 /etc/profile : 针对所有用户，第一个被执行的配置文件。就是上面的形式。 

 /etc /environment : 在登录时操作系统使用的第二个文件, 系统在读取你自己的profile前,设置环境文件的环境变量。 不需要使用export，直接在path的变量中加入你的地址就行了，分隔符是：。

 ~/.profile :  在登录时用到的第三个文件 是.profile文件,针对一个用户,当用户登录时,该文件仅仅执行一次!默认情况下,他设置一些环境变量,执行用户的.bashrc文件。

/etc/bash.bashrc : 为每一个运行bash shell的用户执行此文件.当bash shell被打开时,该文件被读取. 

~/bash.bashrc : 该文件包含专用于你的bash shell的bash信息,当登录时以及每次打开新的shell时,该该文件被读取。

### 头文件：

对于c语言：/usr/include/

特定版本的linux：/usr/include/linux/    和 /usr/include/sys/

标准系统库文件：/usr/lib/

## Ubuntu Gnome相关

MacOs比较好的主题，脚本直接完成安装，已star.

```
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -t all  -N glassy -s 220
sudo ./tweaks.sh -g
```

#### Gnome的主题的位置

```
/usr/share/themes
```

#### Gnome的图标的位置

```
/usr/share/icons
```