#!/bin/bash

# 数据库连接信息
DB_USER="root"
DB_NAME="education_platform"
IMPORT_DIR="../init-scripts"

echo "请输入数据库密码:"
read -s DB_PASSWORD

echo "开始导入数据库..."

# 创建数据库(如果不存在)
mysql -u$DB_USER -p$DB_PASSWORD -e "CREATE DATABASE IF NOT EXISTS $DB_NAME"
echo "数据库 $DB_NAME 已确保存在"

# 检查是否存在完整备份，优先使用完整备份
if [ -f "${IMPORT_DIR}/complete-backup.sql" ]; then
  echo "发现完整备份，正在导入..."
  mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < "${IMPORT_DIR}/complete-backup.sql"
  echo "完整备份导入成功!"
else
  # 分步导入各个文件
  # 导入表结构
  if [ -f "${IMPORT_DIR}/00-schema.sql" ]; then
    echo "导入表结构..."
    mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < "${IMPORT_DIR}/00-schema.sql"
  fi
  
  # 导入用户数据
  if [ -f "${IMPORT_DIR}/01-users.sql" ]; then
    echo "导入用户数据..."
    mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < "${IMPORT_DIR}/01-users.sql"
  fi
  
  # 导入问题数据
  if [ -f "${IMPORT_DIR}/02-questions.sql" ]; then
    echo "导入问答数据..."
    mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < "${IMPORT_DIR}/02-questions.sql"
  fi
  
  # 导入编程题数据
  if [ -f "${IMPORT_DIR}/03-problems.sql" ]; then
    echo "导入编程题数据..."
    mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < "${IMPORT_DIR}/03-problems.sql"
  fi
  
  # 导入学生资料
  if [ -f "${IMPORT_DIR}/04-student-profiles.sql" ]; then
    echo "导入学生资料..."
    mysql -u$DB_USER -p$DB_PASSWORD $DB_NAME < "${IMPORT_DIR}/04-student-profiles.sql"
  fi
  
  echo "数据分步导入完成!"
fi

echo "数据库导入操作完成!"
