## 笔记本关闭屏幕电脑无法唤醒（未关机）
安装tlp后问题解决

## N卡安装完显卡驱动，没有`nvidia-smi`，播放视频文件卡顿
额外安装
```
sudo dnf install xorg-x11-drv-nvidia-cuda
```
## 设置terminal 快捷键失败
`gnome-terminal` 不再是默认终端，已被`ptyxis` 取代
命令设置为:
```
ptyxis --new-window
```
 
