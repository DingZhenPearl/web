# 贡献指南

感谢您考虑为教育平台项目做出贡献！以下是参与此项目的一些指南。

## 使用GitHub协作

### 分支策略

- `main`: 主分支，保持稳定可发布状态
- `develop`: 开发分支，新功能合并到此分支
- `feature/*`: 功能分支，用于开发新功能
- `bugfix/*`: 修复分支，用于修复问题

### 工作流程

1. 从最新的`develop`分支创建新分支：

```bash
git checkout develop
git pull
git checkout -b feature/your-feature-name
```

2. 进行开发并提交更改：

```bash
git add .
git commit -m "描述性的提交消息"
```

3. 定期推送到GitHub：

```bash
git push -u origin feature/your-feature-name
```

4. 完成后，在GitHub创建Pull Request合并到`develop`分支

## 开发环境设置

### 使用Docker（推荐）

```bash
docker-compose up -d
```

### 手动设置

按照README.md中的说明设置前端和后端环境。

## 数据库管理

### 初始化测试数据

```bash
# Docker环境中，数据库会自动初始化
# 手动环境，运行:
bash scripts/import-db.sh
```

### 更新测试数据

如果您添加了新的测试数据并希望与团队共享，请执行：

```bash
bash scripts/export-db.sh
# 注意：确保不要将包含敏感或个人信息的数据提交到仓库
```

## 代码规范

- 前端遵循ESLint配置
- 后端使用PEP 8 Python风格指南
- 提交前运行测试确保代码质量：
  ```bash
  npm run test      # 前端测试
  python -m pytest  # 后端测试
  ```

## 文档规范

- 保持README.md和其他文档的更新
- 为复杂功能添加详细注释
- 使用JSDoc和Python文档字符串标准
