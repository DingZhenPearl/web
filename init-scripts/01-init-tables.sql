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

-- 插入示例用户
INSERT INTO edu_users (email, password, user_type) VALUES
('teacher@example.com', '$2b$10$X7JlKxqpn4jv1XkPi5WHT.vsQMmNxrZ0AkRYYxL3yRmWYjxKqCyDC', 'teacher'),
('student@example.com', '$2b$10$X7JlKxqpn4jv1XkPi5WHT.vsQMmNxrZ0AkRYYxL3yRmWYjxKqCyDC', 'student');
-- 注意：上述密码哈希值对应的原始密码是'password123'

-- 插入示例编程题
INSERT INTO edu_problems (teacher_email, title, difficulty, content, input_example, output_example) VALUES
('teacher@example.com', '两数之和', 'easy', '给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。', '2 7 11 15\n9', '[0, 1]'),
('teacher@example.com', '判断回文数', 'easy', '判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。', '121', 'true');
