---
title: Cookie
date: 2019-01-02 09:59:37
tags: HTTP
categories: HTTP
---

# TIPS
## RAS加密

## 不设置expires的cookie默认是session级别的,expires显示为1969-12-31T23:59:59.000Z,理论上是关闭浏览器tab页面就应当过期,但现在的浏览器很少这么做，chrome浏览器的设置是“从上次停下的地方继续”。也就是说我关闭之后再打开会回到关闭之前的状态。没想到Chrome居然认为这是一个连续会话。把设置改成"打开新标签页就好了"
# 跨域请求中 cookie
默认情况下，在发生跨域时，cookie 作为一种 credential 信息是不会被传送到服务端的。必须要进行额外设置才可以。
>xhr.withCredentials与 CORS 什么关系  
>我们都知道，在发同域请求时，浏览器会将cookie自动加在request header中。但大家是否遇到过这样的场景：在发送跨域请求时，cookie并没有自动加在request header中。  
>造成这个问题的原因是：在CORS标准中做了规定，默认情况下，浏览器在发送跨域请求时，不能发送任何认证信息（credentials）如"cookies"和"HTTP authentication schemes"。除非xhr.withCredentials为true（xhr对象有一个属性叫withCredentials，默认值为false）。 

所以根本原因是cookies也是一种认证信息，在跨域请求中，client端必须手动设置xhr.withCredentials=true，且server端也必须允许request能携带认证信息（即response header中包含Access-Control-Allow-Credentials:true），这样浏览器才会自动将cookie加在request header中。  
另外，要特别注意一点，一旦跨域request能够携带认证信息，server端一定不能将Access-Control-Allow-Origin设置为*，而必须设置为请求页面的域名。  
# session
# 参考
[你真的会使用XMLHttpRequest吗？](https://segmentfault.com/a/1190000004322487#articleHeader13)  
