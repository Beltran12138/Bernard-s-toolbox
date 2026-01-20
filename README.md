# Bernard's Toolbox v2.0 🚀

> 极客风格的工具导航站 - 现已全面升级

## ✨ 新功能一览

### 🎯 核心升级

#### 1️⃣ 数据与视图分离
- ✅ 工具数据独立存储于 `data/tools.json`
- ✅ 支持通过编辑 JSON 文件快速添加/修改工具
- ✅ 未来可接入 Notion API 或 GitHub Issues 作为后端

#### 2️⃣ Command Palette (命令面板)
**快捷键:** `Ctrl+K` 或 `Cmd+K`

**功能:**
- 🔍 快速搜索工具 (模糊匹配)
- ⚡ 执行系统命令:
  - `> 导出数据` - 导出工具列表为 JSON 备份
  - `> 重置筛选` - 清除所有筛选条件
  - `> 查看统计` - 显示工具箱统计信息
- 🎨 支持键盘导航 (Esc 关闭)

#### 3️⃣ Fuse.js 模糊搜索
- 🧠 智能语义匹配
  - 搜 "修图" 能匹配 "图片处理"
  - 搜 "code" 匹配 "Cursor" / "Qwen"
- 🔤 支持拼写容错 (如 "gmeini" → "Gemini")
- 🏷️ 多字段搜索 (名称/描述/分类/标签)

#### 4️⃣ Workflow 场景预设
预置 4 个工作流快速切换:
- 💻 **DEEP_WORK** - 专注编程 (Cursor, Gemini, NotebookLM...)
- 💰 **CRYPTO_RESEARCH** - 加密货币研究 (Messari, Coindesk, a16z...)
- 💼 **JOB_HUNTING** - 求职准备 (LinkedIn, Myjob, MLH...)
- 🎨 **CONTENT_CREATION** - 内容创作 (Flow, Figma, 即梦...)

#### 5️⃣ 实时状态监控
状态栏实时显示:
- 🟢 **API 状态** - 监控 GitHub API (每 30 秒检测)
- 💵 **BTC 价格** - 实时比特币价格 (每分钟更新)
- 📊 **工具计数** - 当前工具总数

#### 6️⃣ 视觉效果升级
- 🎭 **噪音纹理** - SVG Noise 增加模拟信号质感
- 🧲 **磁吸效果** - 卡片悬停时 3D 变换 + 阴影放大
- ✨ **边框流光** - 悬停时边框呼吸光效
- 🎯 **评分系统** - 5 星推荐度 + 难度等级 (⚡)
- 🏷️ **多维标签** - 每个工具显示 2 个关键标签

#### 7️⃣ Boss Key (老板键)
**快捷键:** `Shift+Esc`

**效果:** 瞬间切换到 Google 搜索页面 (摸鱼必备 😏)
- 再次按 `Shift+Esc` 恢复原页面

---

## 🎮 快捷键速查表

| 快捷键 | 功能 |
|--------|------|
| `Ctrl+K` / `Cmd+K` | 打开命令面板 |
| `Esc` | 关闭命令面板 |
| `Shift+Esc` | Boss Key (切换到 Google) |
| 点击搜索框右侧 `Ctrl+K` 提示 | 快速访问命令面板 |

---

## 📁 项目结构

```
my - toolbox/
├── index.html          # 主页面 (包含所有逻辑)
├── data/
│   └── tools.json      # 工具数据源 (可独立编辑)
└── README.md           # 使用文档 (本文件)
```

---

## 🛠️ 如何添加新工具

### 方法 1: 直接编辑 JSON (推荐)

编辑 `data/tools.json`，添加新条目:

```json
{
  "id": "your-tool-id",
  "name": "工具名称",
  "url": "https://example.com",
  "desc": "工具简短描述",
  "category": "分类名称",
  "tags": ["标签1", "标签2", "标签3"],
  "icon": "fa-solid fa-star",
  "rating": 5,
  "difficulty": 3
}
```

**字段说明:**
- `id` - 唯一标识符 (小写字母+连字符)
- `category` - 分类 (会自动生成筛选按钮)
- `tags` - 标签数组 (用于搜索和展示)
- `icon` - FontAwesome 图标类名 ([查找图标](https://fontawesome.com/icons))
- `rating` - 推荐度 (1-5 星)
- `difficulty` - 难度 (1-5，显示为 ⚡ 数量)

### 方法 2: 使用命令面板导出

1. 按 `Ctrl+K` 打开命令面板
2. 输入 `> 导出数据`
3. 编辑导出的 JSON 文件
4. 替换 `data/tools.json`

---

## 🎨 自定义 Workflow

编辑 `data/tools.json` 中的 `workflows` 数组:

```json
{
  "id": "my_workflow",
  "name": "MY_WORKFLOW",
  "desc": "场景描述",
  "icon": "fa-solid fa-rocket",
  "color": "primary",
  "tools": ["tool-id-1", "tool-id-2", "tool-id-3"]
}
```

**颜色选项:**
- `primary` - 极客绿
- `blue-500` - 蓝色
- `yellow-500` - 黄色
- `purple-500` - 紫色

---

## 🔧 技术栈

- **前端框架:** 原生 JavaScript (无依赖)
- **CSS 框架:** Tailwind CSS (CDN)
- **图标库:** FontAwesome 6.4.0
- **字体:** JetBrains Mono (极客等宽字体)
- **搜索引擎:** Fuse.js 7.0.0 (模糊搜索)

---

## 📊 数据统计

使用命令面板查看:
1. 按 `Ctrl+K`
2. 输入 `> 查看统计`

会显示:
- 总工具数
- 分类数量
- 平均评分
- 工作流数量

---

## 🚀 下一步优化建议

### Phase 3 (可选高级功能)

1. **Notion API 集成**
   - 在 Notion 中维护工具表格
   - 网页自动拉取更新

2. **多语言支持**
   - 切换中英文界面
   - 只需替换 JSON 文件

3. **使用统计**
   - LocalStorage 记录点击次数
   - 显示 "最常用工具"

4. **暗色/亮色模式切换**
   - 添加 "极简白" 主题
   - 保存用户偏好

5. **离线支持 (PWA)**
   - Service Worker 缓存
   - 支持离线访问

6. **迁移到 Vite + TypeScript**
   - 预编译 Tailwind (消除 FOUC)
   - 代码分割 + Tree Shaking
   - 性能提升 40%+

---

## 💡 使用技巧

### 1. 快速导航
- 使用搜索框实时筛选 (支持中英文)
- 点击分类按钮过滤特定领域
- 使用 Workflow 切换工作场景

### 2. 数据备份
- 定期使用 `> 导出数据` 命令
- 保存到云盘 (OneDrive/Google Drive)

### 3. 性能优化
- 图标加载较慢时刷新页面
- BTC 价格更新可能延迟 1-2 分钟

### 4. 移动端体验
- 响应式设计,支持手机/平板
- Command Palette 在移动端通过搜索框右侧按钮激活

---

## 🐛 已知问题

1. **Workflow 按钮颜色**
   - Tailwind 动态类名可能不生效
   - 解决方案: 在 `tailwind.config` 中预定义颜色

2. **CDN 依赖**
   - 首次加载需要联网
   - 后续优化: 本地化资源文件

3. **Boss Key 限制**
   - 切换后需刷新页面恢复
   - 未来改进: 使用 DOM 隐藏而非替换

---

## 📝 更新日志

### v2.0.0 (2025-01-20)
- ✅ 数据分离 (JSON 独立存储)
- ✅ Command Palette (Ctrl+K)
- ✅ Fuse.js 模糊搜索
- ✅ Workflow 场景预设
- ✅ 实时状态监控 (BTC/API)
- ✅ 视觉效果升级 (噪音/磁吸/流光)
- ✅ 评分系统 (推荐度+难度)
- ✅ Boss Key (Shift+Esc)

### v1.0.0 (2025-01-07)
- 🎉 初始版本发布
- 基础工具导航功能

---

## 📞 联系方式

- **GitHub:** [你的 GitHub 链接]
- **Twitter:** [你的 Twitter 链接]

---

<div align="center">

**Made with ❤️ by Bernard**

*Powered by Claude Code*

</div>
