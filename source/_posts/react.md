---
title: React
date: 2018-11-12 12:06:52
tags: JS
categories: JS
---

# TIPS
* 可能引起组件更新:1、父组件重新render()或props改变; 2、this.setState()造成state改变；3、暴露ref被操作；

# 组件与Props
* 组件从概念上看就像是函数，它可以接收任意的输入值（称之为“props”），并返回一个需要在页面上展示的React元素。
* 所有的React组件必须像纯函数那样使用它们的props。
* props与state: state和props之间最重要的区别是props是从父组件传递的，而state是由组件本身管理的。组件不能改变其props，但可以改变state。 通过使用this.setState()。 只有定义为类的组件才可以具有状态。
* 受控 & 非受控组件
* [React 理念](https://react.docschina.org/docs/thinking-in-react.html)1、按UI划分出组件层级；2、用React创建一个静态版本；3、确定哪些数据是state；4、确定你的State应该位于哪里。。。。。。

# 性能优化
## 生命周期
![生命周期图解](https://upload-images.jianshu.io/upload_images/4118241-d979d05af0b7d4db.png)  
## 避免重复渲染与shouldComponentUpdate应用
* React组件更新DOM（调用浏览器DOMapi）决策  
组件生命周期shouldComponentUpdate(preProps, preState)，默认返回 true，即始终会执行 render() 方法，然后做 Virtual DOM 比较，并得出是否需要做真实 DOM 更新；先看SCU，再看vDOMEq：
![渲染](https://react.docschina.org/static/should-component-update-5ee1bdf4779af06072a17b7a0654f6db-9a3ff.png)  
对其中每个组件来说，SCU表明了shouldComponentUpdate的返回内容，vDOMEq表明了待渲染的React元素与原始元素是否相等，最后，圆圈的颜色表明这个组件是否需要重新渲染。（绿色true，红色flase）
* 当一个组件的props或者state改变时，React通过比较新返回的元素（render()返回）和之前渲染的元素来决定是否有必要更新实际的DOM。当他们不相等时，React会更新DOM。
* 性能优化思路：如果你知道在某些情况下你的组件不需要更新，你可以在shouldComponentUpdate内返回false来跳过整个渲染进程，该进程包括了对该组件和之后的内容调用render()指令及Virtual DOM比较。
* React.PureComponent（没看懂）

# 协调（Reconciliation）
* 关于Virtual DOM的比较算法，无约束的情况下算法时间复杂度O(n^3)。
* 约束两点，提高算法效率到O(n)
两个不同类型的元素将产生不同的树。
通过渲染器附带key属性，开发者可以示意哪些子元素可能是稳定的。（key必须在其兄弟节点中是唯一的，而非全局唯一）
---
文档
# 高级指引
---
# 深入 JSX
## 指定 React 元素类型
OO### React 必须声明
### 点表示法
例如，有一个名为 MyComponents.DatePicker 的组件，你可以直接在 JSX 中使用它
### 首字母大写
### 在运行时选择类型
## 属性
### 使用 JavaScript 表达式
### 字符串常量
### 默认为 True
### 扩展属性
---
## 子代
props.children
### 字符串常量
### JSX
### JavaScript 表达式
### 函数
Render Props的一种情况，使用children属性[参考](#使用-Props-而非-render)
### 布尔值、Null 和 Undefined 被忽略

# 使用 PropTypes 检查类型
## PropTypes
## 限制单个子代
## 属性默认值

# 静态类型检查
## Flow
## 在一个项目中添加 Flow
## 从编译过的代码中剥离 Flow 语法
## 运行 Flow
## 添加 Flow 类型注释
## TypeScript
## 在一个项目中添加 TypeScript
## 配置 TypeScript 编译器
## 文件扩展名
## 运行 TypeScript
## 类型定义
## 和 Create React App 一起使用 TypeScript
## Reason
## Kotlin
## 其他语言
---
# Refs & DOM
## Refs 提供了一种方式，用于访问在 render 方法中创建的 DOM 节点或 React 元素。
## 何时使用 Refs
下面是几个适合使用 refs 的情况：
* 处理焦点、文本选择或媒体控制。
* 触发强制动画。
* 集成第三方 DOM 库
## 不要过度使用 Refs
## Note
## 创建 Refs
## 访问 Refs
## 为 DOM 元素添加 Ref
## 为类组件添加 Ref
## Refs 与函数式组件
## 对父组件暴露 DOM 节点
## 回调 Refs
## 旧版 API：String 类型的 Refs
## 注意

# 非受控组件
# 性能优化
# 不使用 ES6
# 不使用 JSX
# Reconciliation
---
# Context
## Context 通过组件树提供了一个传递数据的方法，从而避免了在每一个层级手动的传递 props 属性。
## 何时使用 Context
## API
## React.createContext
## Provider
## Consumer
## 例子
## 动态 Context
## 父子耦合
## 作用于多个上下文
## 在生命周期方法中访问 Context
## 高阶组件中的 Context
## 转发 Refs
## 告诫
## 遗留 API

# Fragments
# Portals
# Error Boundaries
# Web Components
# 高阶组件
# 传递 Refs
---
# Render Props
## 术语 “render prop” 是指一种在 React 组件之间使用一个值为函数的 prop 在 React 组件间共享代码的简单技术。
## 在交叉关注点（Cross-Cutting Concerns）使用 render props
## 使用 Props 而非 render
## 警告
## 在 React.PureComponent 中使用 render props 要注意
# 与第三方库协同
# 可访问性
# Code-Splitting
# 严格模式

# API参考
# React
# React.Component
# ReactDOM
# ReactDOMServer
# DOM 元素
# 合成事件
# Test Utilities
# 浅层渲染
# Test Renderer
# JavaScript 环境要求
# 术语表
