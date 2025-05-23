-- 示例数据
-- 此文件包含非敏感的示例/测试数据，可安全包含在代码仓库中

-- 清空表（如有必要）
-- TRUNCATE edu_problems;  -- 取消注释以清空表

-- 示例编程题目数据
INSERT INTO edu_problems (teacher_email, title, difficulty, content, input_example, output_example) VALUES
('teacher@example.com', '两数之和', 'easy', '给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。\n\n你可以假设每个输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。', '2 7 11 15\n9', '[0, 1]'),
('teacher@example.com', '判断回文数', 'easy', '判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。\n\n示例 1: 输入: 121 输出: true\n示例 2: 输入: -121 输出: false\n解释: 从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数。', '121', 'true'),
('teacher@example.com', '合并两个有序链表', 'easy', '将两个升序链表合并为一个新的升序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。', '1->2->4, 1->3->4', '1->1->2->3->4->4'),
('teacher@example.com', '有效的括号', 'medium', '给定一个只包括 ''(''，'')''，''{''，''}''，''[''，'']'' 的字符串，判断字符串是否有效。\n\n有效字符串需满足：\n1. 左括号必须用相同类型的右括号闭合。\n2. 左括号必须以正确的顺序闭合。\n注意空字符串可被认为是有效字符串。', '()', 'true');

-- 注：更多示例数据可以在这里添加
