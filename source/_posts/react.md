---
title: react
date: 2018-11-12 12:06:52
tags:
---

# react
* 更新界面的两个办法:1、创建一个新的元素，然后将它传入 ReactDOM.render() 方法; 2、this.setState()
## 组件与Props
* 组件从概念上看就像是函数，它可以接收任意的输入值（称之为“props”），并返回一个需要在页面上展示的React元素。
* 所有的React组件必须像纯函数那样使用它们的props。
* props与state: state和props之间最重要的区别是props是从父组件传递的，而state是由组件本身管理的。组件不能改变其props，但可以改变state。 通过使用this.setState()。 只有定义为类的组件才可以具有状态。
* 受控 & 非受控组件
* [React 理念](https://react.docschina.org/docs/thinking-in-react.html)1、按UI划分出组件层级；2、用React创建一个静态版本；3、确定哪些数据是state；4、确定你的State应该位于哪里。。。。。。

## 性能优化
### 避免重复渲染与shouldComponentUpdate应用
* React组件更新DOM（调用浏览器DOMapi）决策  
组件生命周期shouldComponentUpdate(preProps, preState)，默认返回 true，即始终会执行 render() 方法，然后做 Virtual DOM 比较，并得出是否需要做真实 DOM 更新；先看SCU，再看vDOMEq：
![渲染](https://react.docschina.org/static/should-component-update-5ee1bdf4779af06072a17b7a0654f6db-9a3ff.png)  
对其中每个组件来说，SCU表明了shouldComponentUpdate的返回内容，vDOMEq表明了待渲染的React元素与原始元素是否相等，最后，圆圈的颜色表明这个组件是否需要重新渲染。（绿色true，红色flase）
* 当一个组件的props或者state改变时，React通过比较新返回的元素（render()返回）和之前渲染的元素来决定是否有必要更新实际的DOM。当他们不相等时，React会更新DOM。
* 性能优化思路：如果你知道在某些情况下你的组件不需要更新，你可以在shouldComponentUpdate内返回false来跳过整个渲染进程，该进程包括了对该组件和之后的内容调用render()指令及Virtual DOM比较。
* React.PureComponent（没看懂）

## 协调（Reconciliation）
* 关于Virtual DOM的比较算法，无约束的情况下算法时间复杂度O(n^3)。
* 约束两点，提高算法效率到O(n)
两个不同类型的元素将产生不同的树。
通过渲染器附带key属性，开发者可以示意哪些子元素可能是稳定的。（key必须在其兄弟节点中是唯一的，而非全局唯一）
