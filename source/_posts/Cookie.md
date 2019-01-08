---
title: Cookie
date: 2019-01-02 09:59:37
tags: HTTP
categories: HTTP
---

# TIPS
## RAS加密
## HTML转义、字符编码、base64
\u0061\u006c\u0065\u0072\u0074(1)  
&lt;script&gt;window.location.href='http://www.baidu.com';&lt;/script&gt;
## 不设置expires的cookie默认是session级别的,expires显示为1969-12-31T23:59:59.000Z,理论上是关闭浏览器tab页面就应当过期,但现在的浏览器很少这么做，chrome浏览器的设置是“从上次停下的地方继续”。也就是说我关闭之后再打开会回到关闭之前的状态。没想到Chrome居然认为这是一个连续会话。把设置改成"打开新标签页就好了"
## session
