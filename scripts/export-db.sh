#!/bin/bash

# 数据库连接信息
DB_USER="root"
DB_NAME="education_platform"
EXPORT_DIR="../init-scripts"

# 创建导出目录(如果不存在)
mkdir -p $EXPORT_DIR

echo "请输入数据库密码:"
read -s DB_PASSWORD

echo "开始导出数据库..."

# 导出表结构
mysqldump -u$DB_USER -p$DB_PASSWORD --no-data $DB_NAME > "${EXPORT_DIR}/00-schema.sql"
echo "表结构已导出到 ${EXPORT_DIR}/00-schema.sql"

# 导出各表数据
# 用户表
mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME edu_users > "${EXPORT_DIR}/01-users.sql"
echo "用户数据已导出到 ${EXPORT_DIR}/01-users.sql"

# 问题表
mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME edu_qa_questions > "${EXPORT_DIR}/02-questions.sql"
echo "问答数据已导出到 ${EXPORT_DIR}/02-questions.sql"

# 编程题表
mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME edu_problems > "${EXPORT_DIR}/03-problems.sql"
echo "编程题数据已导出到 ${EXPORT_DIR}/03-problems.sql"

# 学生信息表
mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME edu_profiles_student > "${EXPORT_DIR}/04-student-profiles.sql"
echo "学生资料已导出到 ${EXPORT_DIR}/04-student-profiles.sql"

# 导出完整备份(可选)
mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > "${EXPORT_DIR}/complete-backup.sql"
echo "完整备份已导出到 ${EXPORT_DIR}/complete-backup.sql"

echo "数据库导出完成!"
echo "这些SQL文件将在Docker环境启动时自动导入，或者可以手动导入。"
