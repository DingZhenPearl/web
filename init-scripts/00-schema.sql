-- 数据库结构定义
-- 此文件仅包含表结构，不包含敏感数据

-- 创建用户表
CREATE TABLE IF NOT EXISTS edu_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    user_type ENUM('student', 'teacher') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 创建问题表
CREATE TABLE IF NOT EXISTS edu_qa_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    status ENUM('pending', 'answered') DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    answer TEXT,
    answered_at TIMESTAMP NULL,
    follow_ups JSON
);

-- 创建编程题表
CREATE TABLE IF NOT EXISTS edu_problems (
    id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_email VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    difficulty ENUM('easy', 'medium', 'hard') NOT NULL,
    content TEXT NOT NULL,
    input_example TEXT,
    output_example TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX (teacher_email)
);

-- 创建学生个人信息表
CREATE TABLE IF NOT EXISTS edu_profiles_student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    student_id VARCHAR(50),
    class_name VARCHAR(100),
    major VARCHAR(100),
    name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    INDEX (email)
);

-- 注：用户数据应在安全环境中另行导入或通过用户注册功能创建
