# 🎯 从这里开始 - START HERE

> 欢迎使用 Bernard's Toolbox v2.0！这是你的一站式指南。

---

## 📖 你现在想做什么?

### 🚀 我想快速部署到 GitHub
**→ 查看:** [`QUICK_DEPLOY_GUIDE.md`](./QUICK_DEPLOY_GUIDE.md)
- ⏱️ 只需 8 分钟
- 💻 无需安装任何软件
- 📱 网页端全程操作

---

### ➕ 我想添加新工具
**→ 查看:** [`HOW_TO_ADD_TOOLS.md`](./HOW_TO_ADD_TOOLS.md)
- 📝 详细图文教程
- 🎯 三种添加方法
- ✅ 完整检查清单

---

### 🔧 我想了解所有功能
**→ 查看:** [`README.md`](./README.md)
- ✨ 功能清单
- ⌨️ 快捷键速查
- 🎨 自定义配置

---

### ⚡ 我想快速上手使用
**→ 查看:** [`QUICKSTART.md`](./QUICKSTART.md)
- 🎮 5 分钟上手路线
- 💡 使用技巧
- ❓ 常见问题

---

### 🎓 我想学习 Git 部署
**→ 查看:** [`DEPLOY_TO_GITHUB.md`](./DEPLOY_TO_GITHUB.md)
- 📚 完整 Git 教程
- 🛠️ 自动化脚本
- 🌐 自定义域名

---

## 🗂️ 文件结构说明

```
my - toolbox/
├── 📄 index.html              ← 主页面 (打开这个文件开始使用)
├── 📁 data/
│   └── 📄 tools.json          ← 工具数据 (添加工具编辑这个)
│
├── 📚 文档目录
│   ├── 📄 START_HERE.md       ← 你正在看的文件
│   ├── 📄 QUICK_DEPLOY_GUIDE.md   ← ⭐ 快速部署
│   ├── 📄 HOW_TO_ADD_TOOLS.md     ← ⭐ 添加工具
│   ├── 📄 DEPLOY_TO_GITHUB.md     ← Git 完整教程
│   ├── 📄 README.md               ← 功能说明
│   ├── 📄 QUICKSTART.md           ← 快速上手
│   └── 📄 CHANGELOG.md            ← 更新日志
│
└── 🔧 自动化脚本
    ├── 📄 deploy.bat          ← Windows 部署脚本
    └── 📄 deploy.sh           ← Mac/Linux 部署脚本
```

---

## 🎯 推荐学习路线

### 路线 1: 新手快速上线 (30分钟)
```
1. 打开 index.html 本地体验 (5分钟)
   ↓
2. 阅读 QUICKSTART.md 了解功能 (10分钟)
   ↓
3. 跟随 QUICK_DEPLOY_GUIDE.md 部署到 GitHub (8分钟)
   ↓
4. 使用 HOW_TO_ADD_TOOLS.md 添加第一个工具 (7分钟)
```

### 路线 2: 进阶完整配置 (1小时)
```
1. 本地体验所有功能 (15分钟)
   ↓
2. 学习 DEPLOY_TO_GITHUB.md 中的 Git 命令 (20分钟)
   ↓
3. 配置自动化部署脚本 (10分钟)
   ↓
4. 自定义工具和 Workflow (15分钟)
```

---

## ⚡ 快速操作指令

### 本地使用
```bash
# 直接双击打开
index.html

# 或启动本地服务器
python -m http.server 8000
# 访问: http://localhost:8000
```

### 添加工具
```bash
# 编辑数据文件
notepad data\tools.json  # Windows
open data/tools.json     # Mac

# 参考模板
{
  "id": "your-tool",
  "name": "工具名称",
  "url": "https://...",
  "category": "分类",
  "tags": ["标签1", "标签2"],
  "icon": "fa-solid fa-star",
  "rating": 5,
  "difficulty": 2
}
```

### GitHub 部署
```bash
# 方式 1: 自动脚本 (推荐)
deploy.bat  # Windows
./deploy.sh # Mac/Linux

# 方式 2: Git 命令
git add .
git commit -m "Update"
git push
```

---

## 🎮 核心功能速查

| 功能 | 快捷键 | 说明 |
|------|--------|------|
| 命令面板 | `Ctrl+K` | 搜索工具/执行命令 |
| 关闭面板 | `Esc` | 关闭当前面板 |
| Boss Key | `Shift+Esc` | 切换到 Google 页面 |
| 强制刷新 | `Ctrl+Shift+R` | 清除缓存刷新 |

---

## 📌 重要提示

### ✅ 部署前检查
- [ ] 确认 `data/tools.json` 格式正确
- [ ] 使用 [JSONLint](https://jsonlint.com/) 验证
- [ ] 本地测试所有功能正常

### ✅ 部署后检查
- [ ] GitHub Pages 已启用
- [ ] 网站可以访问
- [ ] 所有功能正常工作
- [ ] 移动端显示正常

---

## 🆘 遇到问题?

### 问题类型导航

**功能问题:**
- 查看 [`README.md`](./README.md) 的常见问题部分
- 按 F12 查看浏览器控制台错误

**添加工具问题:**
- 参考 [`HOW_TO_ADD_TOOLS.md`](./HOW_TO_ADD_TOOLS.md) 的错误排查

**部署问题:**
- 查看 [`DEPLOY_TO_GITHUB.md`](./DEPLOY_TO_GITHUB.md) 的 Q&A

**数据格式问题:**
- 使用 https://jsonlint.com/ 验证 JSON
- 参考现有工具的格式

---

## 🎁 额外资源

### 在线工具
- **JSON 验证:** https://jsonlint.com/
- **JSON 编辑器:** https://jsoneditoronline.org/
- **图标搜索:** https://fontawesome.com/search
- **颜色选择:** https://coolors.co/

### 学习资源
- **Git 教程:** https://git-scm.com/book/zh/v2
- **GitHub Pages 文档:** https://pages.github.com/
- **Markdown 语法:** https://www.markdownguide.org/

---

## 📊 项目统计

| 指标 | 数值 |
|------|------|
| 当前版本 | v2.0.0 |
| 工具数量 | 60+ |
| 功能数量 | 15+ |
| 文档页数 | 7 |
| 代码行数 | ~750 |

---

## 🗺️ 版本路线图

### v2.0 (当前) ✅
- [x] 数据分离
- [x] Command Palette
- [x] 模糊搜索
- [x] Workflow 系统
- [x] 实时监控

### v3.0 (计划中)
- [ ] Notion API 集成
- [ ] 多语言支持
- [ ] PWA 离线支持
- [ ] 使用统计
- [ ] 主题切换

---

## 💬 反馈与贡献

如果你有建议或发现问题:
1. 在 GitHub 仓库创建 Issue
2. 或发送邮件至: your-email@example.com

---

<div align="center">

## 🚀 准备好了吗?

**开始使用:** 双击 `index.html`

**快速部署:** 查看 [`QUICK_DEPLOY_GUIDE.md`](./QUICK_DEPLOY_GUIDE.md)

**添加工具:** 查看 [`HOW_TO_ADD_TOOLS.md`](./HOW_TO_ADD_TOOLS.md)

---

**Built with ❤️ by Bernard**

*Powered by Claude Code*

</div>
