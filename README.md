# Web 项目总库

## 项目简介

这是一个包含多个子项目的 Web 开发仓库，主要包括 Vue 前端应用和 VS Code 扩展开发。本仓库集中管理相关项目代码，方便统一开发和维护。

## 项目结构

```
web/
├── vuetest/               # Vue 前端应用项目
│   ├── public/            # 静态资源
│   ├── server/            # 后端服务
│   ├── src/               # 源代码
│   │   ├── components/    # 组件
│   │   ├── router/        # 路由配置
│   │   ├── views/         # 页面视图
│   │   └── ...
│   ├── package.json       # 项目依赖
│   └── ...
│
├── ex1/                   # VS Code 扩展项目
│   ├── src/               # 源代码
│   ├── include/           # 包含的库文件
│   ├── nlohmann/          # JSON 处理库
│   ├── cmake-3.31.5-windows-x86_64/ # CMake 工具
│   ├── package.json       # 项目依赖
│   └── ...
```

## 子项目说明

### vuetest - Vue 前端应用

这是一个基于 Vue.js 开发的前端应用，主要功能包括：

- 用户登录系统（教师/学生角色）
- 教师端功能：教学管理、问题管理、Python 编程环境等
- 学生端功能：练习题、AI 对话、考试系统、个人信息管理等

#### 运行方法

```bash
cd vuetest
npm install
npm run serve
```

### ex1 - VS Code 扩展项目

这是一个 VS Code 扩展项目，使用了以下技术和库：

- C++ 开发环境
- nlohmann/json 库用于 JSON 处理
- CMake 构建系统

#### 安装和使用

请参考项目内的 README.md 文件获取详细的安装和使用说明。

## 开发环境要求

- Node.js 和 npm（Vue 项目）
- Visual Studio Code
- CMake 3.31+（扩展项目）
- C++ 编译器（扩展项目）

## 如何贡献

1. Fork 本仓库
2. 创建您的特性分支 (`git checkout -b feature/amazing-feature`)
3. 提交您的更改 (`git commit -m 'Add some amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 打开一个 Pull Request

## 许可证

[MIT](https://opensource.org/licenses/MIT)

## 联系方式

如有任何问题或建议，请通过 Issues 与我们联系。