---
title: Iconfont
date: 2018-12-28 15:38:40
tags: ui
---
# SVG
# Iconfont
## unicode与font-class引用
使用的是使用系统字体渲染引擎，其实就是文字。  
通过@font-face引入icon字体，再通过类名.iconfont设置元素的font-family属性值为icon字体。  
font-class方式是unicode使用方式的一种变种，这种方式只是在原来的dom上增加一个伪元素。
## symbol引用
使用SVG渲染技术   
通过引入js，利用<symbol>生成svg图标集合，再通过<use>显示某一图标   
## 比较
兼容性  
单色/多色  
通过font-size,color来调整样式  
* 可能有些童鞋又疑惑了，svg的大小不是不支持font-size修改的吗？如何实现的呢？其实这里用了一个比较hack的方式，就是把图标元素的宽高都写为1em，而em的大小是相对于该元素的字体大小的，这样就实现了svg宽高跟着svg的字体大小一起变了。多色不支持color属性。

## 参考
[iconfont的实现原理及如何使用?](https://my.oschina.net/codingDog/blog/1618232)
[使用SVG symbols建立图标系统](https://www.w3cplus.com/svg/how-to-create-an-icon-system-using-svg-symbols.html)
[未来必热：SVG Sprite技术介绍](https://www.zhangxinxu.com/wordpress/2014/07/introduce-svg-sprite-technology/)