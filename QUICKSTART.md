# 🚀 快速启动指南

## 立即开始使用

### 方法 1: 本地打开 (推荐)

1. **直接双击** `index.html` 文件
2. 浏览器会自动打开页面
3. 开始探索你的工具箱！

### 方法 2: 启动本地服务器

如果遇到 CORS 错误(无法加载 JSON),使用以下方法:

#### 使用 Python
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```

然后访问: http://localhost:8000

#### 使用 Node.js (npx)
```bash
npx serve
```

#### 使用 VS Code Live Server
1. 安装 "Live Server" 插件
2. 右键 `index.html` → "Open with Live Server"

---

## ⚡ 核心功能速览

### 🔍 智能搜索
在顶部搜索框输入任何关键词:
- "AI" → 显示所有 AI 工具
- "crypto" → 加密货币相关
- "图片" → 图片处理工具

### ⌨️ 命令面板 (Ctrl+K)
1. 按下 `Ctrl+K` 或 `Cmd+K`
2. 输入 `>` 查看所有命令
3. 直接输入工具名快速跳转

### 🎯 场景预设
点击顶部 Workflow 按钮:
- **DEEP_WORK** - 编程专注模式
- **CRYPTO_RESEARCH** - 币圈研究
- **JOB_HUNTING** - 求职准备
- **CONTENT_CREATION** - 内容创作

### 📊 实时监控
状态栏自动显示:
- API 在线状态
- BTC 实时价格
- 工具总数

---

## 🎨 添加你的第一个工具

### 1. 打开数据文件
编辑 `data/tools.json`

### 2. 添加新工具
在 `tools` 数组末尾添加:

```json
{
  "id": "chatgpt",
  "name": "ChatGPT",
  "url": "https://chat.openai.com",
  "desc": "OpenAI 对话 AI",
  "category": "AI",
  "tags": ["AI工具", "对话", "GPT"],
  "icon": "fa-solid fa-comments",
  "rating": 5,
  "difficulty": 1
}
```

### 3. 保存并刷新页面
新工具会立即出现！

---

## 🎯 5 分钟上手路线

### 第 1 分钟: 浏览工具
- 滚动查看所有工具卡片
- 点击任意卡片打开对应网站

### 第 2 分钟: 尝试搜索
- 输入 "Cursor" 查找代码编辑器
- 观察实时筛选效果

### 第 3 分钟: 使用命令面板
- 按 `Ctrl+K` 打开面板
- 输入 `> 查看统计` 查看数据

### 第 4 分钟: 体验 Workflow
- 点击 **DEEP_WORK** 按钮
- 查看专为编程准备的工具集

### 第 5 分钟: 添加自己的工具
- 编辑 `data/tools.json`
- 添加你最常用的网站

---

## 🛠️ 常见问题

### Q: 为什么数据加载失败?
**A:** 确保以下条件:
1. `data/tools.json` 文件存在
2. JSON 格式正确 (使用 [JSONLint](https://jsonlint.com/) 验证)
3. 通过本地服务器运行(而非直接打开 HTML)

### Q: 如何修改主题颜色?
**A:** 编辑 `index.html` 第 24-30 行:
```javascript
colors: {
    primary: '#00dc82', // 改为你喜欢的颜色
    // ...
}
```

### Q: 如何禁用 BTC 价格更新?
**A:** 在 `index.html` 中注释掉第 337 行:
```javascript
// setInterval(updateBTCPrice, 60000);
```

### Q: Boss Key 是什么?
**A:** 按 `Shift+Esc` 可以瞬间切换到 Google 搜索页(摸鱼专用)

---

## 🎓 进阶技巧

### 自定义图标
访问 [FontAwesome](https://fontawesome.com/search?o=r&m=free) 查找图标:
1. 搜索你想要的图标
2. 复制类名 (如 `fa-solid fa-rocket`)
3. 填入 `icon` 字段

### 创建专属 Workflow
编辑 `data/tools.json` 的 `workflows` 部分:
```json
{
  "id": "study",
  "name": "STUDY_MODE",
  "desc": "学习专用",
  "icon": "fa-solid fa-book",
  "color": "blue-500",
  "tools": ["notebooklm", "qwen", "gemini"]
}
```

### 数据导出与备份
1. 按 `Ctrl+K`
2. 输入 `> 导出数据`
3. 保存到云盘备份

---

## 📱 移动端使用

在手机/平板上:
1. 搜索框自动适配触摸
2. Command Palette 通过搜索框右侧激活
3. 卡片自动调整为单列布局

---

## 🔥 立即尝试这些功能

1. ✅ 按 `Ctrl+K` 打开命令面板
2. ✅ 搜索 "Flow" 找到 Google AI 生图工具
3. ✅ 点击 **CRYPTO_RESEARCH** 查看所有币圈工具
4. ✅ 观察状态栏的 BTC 价格变化
5. ✅ 悬停在工具卡片上查看流光效果
6. ✅ 按 `Shift+Esc` 激活 Boss Key

---

## 💬 需要帮助?

查看完整文档: [README.md](./README.md)

---

<div align="center">

**现在就开始探索你的工具箱吧! 🎉**

</div>
