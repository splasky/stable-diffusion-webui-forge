#!/usr/bin/env python3
import PIL.WebPImagePlugin
from PIL import Image, features

print("WebP supported:", features.check("webp"))
print("SAVE 支持的格式：", sorted(Image.SAVE.keys()))

img = Image.new("RGB", (64, 64), "purple")
img.save("out.webp", "WEBP", quality=80)
print("成功寫出 out.webp！")
