# Web 项目总库

## 项目简介

这是一个包含多个子项目的教育平台开发仓库，主要包括基于Vue的Web应用和配套的VS Code扩展。该平台旨在提供完整的教学互动解决方案，方便教师发布编程题目和学生在VS Code中进行编程练习。

## 项目结构

```
web/
├── vuetest/               # Vue前端及后端服务项目
│   ├── public/            # 静态资源
│   ├── server/            # Express后端服务
│   │   ├── routes/        # API路由
│   │   ├── services/      # 服务层
│   │   └── ...
│   ├── src/               # 前端源代码
│   │   ├── components/    # 组件
│   │   ├── router/        # 路由配置
│   │   ├── views/         # 页面视图
│   │   ├── services/      # Python后端服务
│   │   └── ...
│   ├── package.json       # 项目依赖
│   ├── requirements.txt   # Python依赖
│   └── ...
│
├── ex1/                   # VS Code编程练习扩展项目
│   ├── src/               # 扩展源代码
│   ├── include/           # C++库文件
│   ├── nlohmann/          # JSON处理库
│   ├── package.json       # 项目依赖
│   └── ...
```

## 子项目说明

### vuetest - 教育平台Web应用

这是一个全栈应用，前端基于Vue.js，后端采用Express和Python服务，主要功能包括：

- **用户系统**：支持教师和学生两种角色的注册登录
- **教师端功能**：
  - 题目管理：创建、编辑、删除编程题目
  - 答疑系统：回答学生提出的问题
  - Python在线运行环境
  
- **学生端功能**：
  - 编程题目列表：浏览和筛选题目
  - VS Code集成：可直接从Web界面跳转到VS Code解题
  - 问答系统：向教师提问
  - AI辅助对话
  - 个人信息管理

#### 运行方法

```bash
cd vuetest

# 安装Node依赖
npm install

# 安装Python依赖
python -m venv .venv
.\.venv\Scripts\activate  # Windows
# source .venv/bin/activate  # Linux/Mac
pip install -r requirements.txt

# 开发环境运行前端
npm run serve

# 开发环境运行后端
npm run dev

# 生产环境构建并运行
npm run build
npm start
```

### ex1 - VS Code编程练习扩展

这是一个VS Code扩展，为学生提供直接在VS Code中解决编程题目的环境：

- 与Web平台集成，可接收并显示Web平台的题目
- C++代码编写与运行环境
- 代码验证和结果提交
- 学习数据收集与统计

#### 使用流程

1. 学生在Web平台浏览题目
2. 点击"开始解题"按钮，将题目发送到VS Code
3. 在VS Code中编写和测试代码
4. 点击提交按钮验证代码并记录结果

#### 安装和使用

开发环境下:
```bash
cd ex1
npm install
# 按F5在开发模式下运行扩展
```

## 技术栈

- **前端**: Vue 3, Element Plus, Chart.js
- **后端**: Express.js, Python, MySQL
- **扩展**: TypeScript, VS Code API
- **编程环境**: C++, G++ compiler

## 开发环境要求

- Node.js 14+和npm
- Python 3.7+
- MySQL数据库
- G++编译器（用于C++代码运行）
- Visual Studio Code

## 功能亮点

- **无缝集成**: Web平台和VS Code扩展之间的无缝连接体验
- **实时验证**: 学生提交的代码可以立即验证并提供反馈
- **多角色支持**: 为教师和学生提供各自所需的功能
- **数据分析**: 收集编程练习数据以便教师了解学生学习情况

## 许可证

MIT

## 团队协作与项目分享

### 0. 使用GitHub协作（推荐）

最简单有效的方法是使用GitHub进行代码托管和协作：

```bash
# 初始化Git仓库（如果尚未初始化）
git init

# 添加.gitignore文件确保不提交敏感信息
# 已为您创建基本的.gitignore文件

# 添加所有文件到暂存区
git add .

# 提交更改
git commit -m "初始化项目"

# 添加GitHub远程仓库（将URL替换为您的GitHub仓库）
git remote add origin https://github.com/DingZhenPearl/web.git

# 推送到GitHub
git push -u origin main
```

团队成员只需克隆仓库并按照以下步骤设置环境：

```bash
# 克隆仓库
git clone https://github.com/DingZhenPearl/web.git
cd 项目名称

# 按照README说明设置环境

# 数据库初始化（从SQL文件导入或使用Docker）
```

### 1. 使用Docker容器化（推荐）

通过Docker可以将整个环境打包，确保所有团队成员拥有相同的开发环境。

```bash
# 安装Docker后，构建项目镜像
docker-compose up -d
```

### 2. 远程数据库方案

- 在团队可访问的远程服务器上部署MySQL数据库
- 修改`server/config/db.js`和Python服务中的数据库配置
- 所有团队成员连接到同一个远程数据库

### 3. 数据库脚本导出

- 导出数据库结构和已有数据
```bash
# 导出完整数据库结构和数据
mysqldump -u root -p education_platform > db_backup.sql

# 或使用我们提供的导出脚本自动生成SQL文件
bash scripts/export-db.sh
```
- 这些SQL文件会自动保存在`init-scripts`目录下，这样当Docker容器启动时会自动导入
- 手动导入时，团队成员可以执行以下命令：
```bash
# 创建数据库(如果不存在)
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS education_platform"

# 导入导出的数据库文件
mysql -u root -p education_platform < db_backup.sql

# 或执行导入脚本
bash scripts/import-db.sh
```

### 4. 使用云开发环境

- 考虑使用GitHub Codespaces或GitPod等云开发环境
- 配置`.devcontainer`定义开发容器环境
- 团队成员可以直接在浏览器中进行开发，无需本地环境设置

### 5. 项目部署到测试服务器

- 在团队共用的测试服务器上部署项目
- 配置远程开发，让团队成员可以远程编辑代码

## 联系方式

如有任何问题或建议，请通过Issues与我们联系。

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/DingZhenPearl/web)