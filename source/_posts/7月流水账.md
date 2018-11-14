---
title: 7月流水账
date: 2018-07-03 19:08:54
---

# 7月3号

## 前端路由hashHistory与browserHistory
### 为什么需要前端路由
SPA应用后，用户操作页面后，因为URL不变，当前页面状态流失
### 符合做路由的条件
1. 造成URL的改变，但不会引起页面重新加载；
2. 这种改变可控（可以被捕捉）

### hashHistory
* hash改变，页面不会刷新
* onhashchange时间，监听hash变化
***
* 由于hash的存在，造成URL里带有#字符
* hash部分不会传给后端

### browserHistory
* html5中，对window.history新增了history.pushState/history.replaceState两个API，通过这两个API修改URL，但不会造成刷新页面
* 调用上述API，增加的浏览记录，通过history.go()匹配中，不会造成页面刷新
***
* 缺少监听history改变的事件，需要考虑修改history的各种途径，从行为上而不是在结果上监听事件

# 7月19号

## webpack2及以上为什么不支持IE8？用es5shim能支持IE8？
## IE8ajax的post请求跨域问题，报错"Error: 拒绝访问..."
