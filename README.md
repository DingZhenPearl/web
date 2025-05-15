# 数据结构与算法导论 - IDE集成实时编程调试反馈学习系统

本项目是一款创新的IDE集成实时编程调试反馈学习系统，专为《数据结构与算法导论》课程设计。该系统深度融合大模型人工智能技术，为学生提供全面的编程学习支持平台。

## 项目架构

本系统由两个核心子项目组成：
- **ex1**：基于VS Code的智能编程练习扩展
- **vuetest**：新一代教育平台Web应用

`html1`目录为vuetest的legacy（历史遗留）版本，仅供参考。

## 关键研究内容

### 1. IDE智能插件（ex1）

- **技术基础**：TypeScript、VS Code Extension API
- **核心功能**：
  - 实时代码审查与智能分析
  - AI驱动的错误诊断与优化建议
  - 渐进式学习辅导（五步策略）
  - 与教育平台数据同步

**开发环境：**
```bash
cd ex1
npm install
# 按F5启动开发调试
```

### 2. 教育平台（vuetest）

- **技术架构**：
  - 前端：Vue 3、Element Plus、TDesign、ECharts
  - 后端：Node.js (Express)、Python、MySQL
  - AI引擎：讯飞星火大模型、Ollama本地模型

- **创新功能**：
  - 智能学习路径推荐
  - 教学数据分析与可视化
  - AI驱动的个性化辅导
  - 教师教学洞察系统

**开发启动：**
```bash
cd vuetest
npm install
python -m venv .venv
# Windows
.\.venv\Scripts\activate
# macOS/Linux
source .venv/bin/activate
pip install -r requirements.txt
# 启动服务
npm run serve  # 前端
npm run dev    # 后端
```

## 系统特色

1. **渐进式智能辅导**
   - 智能审题分析
   - 代码结构建议
   - 关键知识点拨
   - 详细解决方案
   - 示例代码指导

2. **智能错误诊断**
   - 实时代码分析
   - 错误模式识别
   - 针对性修复建议
   - 调试路径推荐

3. **个性化学习系统**
   - 学习行为分析
   - 知识图谱构建
   - 资源智能推荐
   - 进度自适应调整

4. **教学分析平台**
   - 学习数据采集
   - 错误模式分析
   - 知识点掌握度评估
   - 教学策略优化建议

## 环境要求

- Node.js 16+
- Python 3.8+
- MySQL 8.0+
- G++ 编译器
- Visual Studio Code (ex1)

## 部署方案

- 支持Docker容器化部署
- 提供数据库初始化脚本
- 支持云开发环境配置
- 详细部署文档见各子项目目录

## 研究团队

如有问题或建议，请通过Issues联系我们。欢迎加入研究或提供改进建议。

[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/DingZhenPearl/web)