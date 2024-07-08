#encoding: utf-8
import base64
#把图片存储为64 编码格式，以便于在Markdown中插入图片
#缺点：markdown文件末尾会添加一堆字符串，并不美观
#引用方法![avatar][doge]
#引入：利用管道符号直接复制粘贴到markdown文件末尾，可以改名字(doge)
img = '/home/lxddlh/.config/Typora/typora-user-images/image-20200914101230207.png'

with open(img,'rb') as f:
    img_data = f.read()
    base64_data = base64.b64encode(img_data)
    print("[doge]:data:image/png;base64,"+base64_data)

