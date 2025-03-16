# 数据库初始化脚本

本目录包含MySQL数据库初始化脚本，Docker容器启动时会自动按字母顺序执行这些脚本。

## 脚本说明

- `00-schema.sql`: 表结构定义
- `01-users.sql`: 用户数据
- `02-questions.sql`: 问答系统数据
- `03-problems.sql`: 编程题目数据
- `04-student-profiles.sql`: 学生个人信息数据
- `complete-backup.sql`: 完整数据库备份（可选）

## 导入/导出操作

这些文件可以通过项目根目录中的脚本自动生成或导入：

```bash
# 导出当前数据库
bash scripts/export-db.sh

# 导入数据到本地数据库
bash scripts/import-db.sh
```

## 手动操作

也可以手动执行导入/导出操作：

```bash
# 导出
mysqldump -u root -p education_platform > complete-backup.sql

# 导入
mysql -u root -p education_platform < complete-backup.sql
```

## 注意事项

- 确保密码安全，不要将包含敏感信息的SQL文件提交到公共仓库
- 如果需要，可以在SQL文件中添加`-- 注释`来说明数据的用途
