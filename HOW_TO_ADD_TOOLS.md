# 🎯 如何添加新工具 - 完全指南

## 📋 目录
1. [方法 1: 手动编辑 JSON (推荐)](#方法-1-手动编辑-json)
2. [方法 2: 使用命令面板导出编辑](#方法-2-使用命令面板导出编辑)
3. [方法 3: 在线工具辅助](#方法-3-在线工具辅助)
4. [常见问题](#常见问题)

---

## 方法 1: 手动编辑 JSON

### Step 1: 打开数据文件

#### Windows 用户:
1. 打开文件资源管理器
2. 进入项目文件夹: `my - toolbox`
3. 进入 `data` 文件夹
4. 右键 `tools.json` → 选择**记事本**或 **VS Code** 打开

#### Mac 用户:
1. 打开访达 (Finder)
2. 进入项目文件夹
3. 右键 `tools.json` → 选择 **文本编辑** 或 **VS Code** 打开

### Step 2: 找到插入位置

文件结构如下:
```json
{
  "tools": [
    { 工具1 },
    { 工具2 },
    { 工具3 }  ← 最后一个工具后面有逗号
  ],          ← 注意这里没有逗号
  "workflows": [...]
}
```

**关键:** 在 `]` (数组结束符) 之前添加新工具

### Step 3: 复制模板

```json
{
  "id": "your-tool-id",
  "name": "工具名称",
  "url": "https://example.com",
  "desc": "简短描述 (建议20字以内)",
  "category": "分类名称",
  "tags": ["标签1", "标签2", "标签3"],
  "icon": "fa-solid fa-star",
  "rating": 5,
  "difficulty": 2
}
```

### Step 4: 填写字段

#### 🆔 `id` - 唯一标识符
- **格式:** 小写字母 + 连字符
- **要求:** 必须唯一,不能重复
- **示例:**
  ```
  ✅ "chatgpt"
  ✅ "notion-ai"
  ✅ "claude-code"
  ❌ "ChatGPT" (不能有大写)
  ❌ "chat gpt" (不能有空格)
  ```

#### 📛 `name` - 显示名称
- **格式:** 任意文本
- **建议:** 保持简短 (1-15 字符)
- **示例:**
  ```json
  "name": "ChatGPT"
  "name": "Notion"
  "name": "豆包 AI"
  ```

#### 🔗 `url` - 网址
- **格式:** 完整的 URL (包含 https://)
- **注意:** 必须加引号
- **示例:**
  ```json
  "url": "https://chat.openai.com"
  "url": "https://www.notion.so"
  ```

#### 💬 `desc` - 描述
- **建议长度:** 10-30 字
- **用途:** 鼠标悬停时显示
- **示例:**
  ```json
  "desc": "OpenAI 对话 AI"
  "desc": "全能笔记 & 项目管理"
  "desc": "AI 生图/视频工具"
  ```

#### 📂 `category` - 分类
**现有分类 (建议选择):**
- `AI` - AI 工具
- `图片视频处理` - 图片/视频编辑
- `搜索` - 搜索引擎
- `开发工具` - 编程/设计工具
- `升学求职` - 求职/教育
- `学习备考` - 学习工具
- `实习训练营` - Bootcamp
- `研报` - 研究报告
- `新闻` - 新闻资讯
- `视频频道` - YouTube/B站频道
- `其他工具` - 其他

**添加新分类:**
直接写一个新名称即可,页面会自动生成分类按钮
```json
"category": "效率工具"  // 新分类
```

#### 🏷️ `tags` - 标签
- **格式:** 数组 (用 `[]` 包裹)
- **建议:** 3-5 个标签
- **作用:** 搜索匹配 + 卡片展示 (显示前 2 个)
- **示例:**
  ```json
  "tags": ["AI工具", "对话", "GPT"]
  "tags": ["笔记", "协作", "数据库"]
  "tags": ["开发", "IDE", "AI编程"]
  ```

#### 🎨 `icon` - 图标
**从 FontAwesome 选择图标:**

1. 访问 https://fontawesome.com/search?o=r&m=free
2. 搜索关键词 (如 "chat", "code", "image")
3. 点击图标,复制类名

**常用图标推荐:**
```json
// AI 工具
"icon": "fa-solid fa-brain"
"icon": "fa-solid fa-robot"
"icon": "fa-solid fa-wand-magic-sparkles"

// 开发工具
"icon": "fa-solid fa-code"
"icon": "fa-solid fa-terminal"
"icon": "fa-brands fa-github"

// 图片视频
"icon": "fa-solid fa-image"
"icon": "fa-solid fa-video"
"icon": "fa-solid fa-camera"

// 搜索
"icon": "fa-solid fa-magnifying-glass"
"icon": "fa-solid fa-search"

// 学习
"icon": "fa-solid fa-book"
"icon": "fa-solid fa-graduation-cap"

// 求职
"icon": "fa-solid fa-briefcase"
"icon": "fa-brands fa-linkedin"

// 金融
"icon": "fa-solid fa-coins"
"icon": "fa-brands fa-bitcoin"
"icon": "fa-solid fa-chart-line"

// 设计
"icon": "fa-brands fa-figma"
"icon": "fa-solid fa-palette"
```

#### ⭐ `rating` - 推荐度
- **范围:** 1-5 的整数
- **显示:** 卡片底部的星星 ⭐
- **建议:**
  ```
  5 星 - 强烈推荐,必备工具
  4 星 - 非常好用
  3 星 - 还不错
  2 星 - 偶尔使用
  1 星 - 备选
  ```

#### ⚡ `difficulty` - 难度
- **范围:** 1-5 的整数
- **显示:** 卡片底部的闪电 ⚡
- **建议:**
  ```
  1 ⚡ - 极易上手 (如 Google)
  2 ⚡ - 简单 (如 ChatGPT)
  3 ⚡ - 中等 (如 Figma)
  4 ⚡ - 较难 (如 编程训练营)
  5 ⚡ - 专家级 (如 量化交易平台)
  ```

### Step 5: 插入到正确位置

#### ✅ 正确示例:
```json
{
  "tools": [
    {
      "id": "gemini",
      "name": "Gemini",
      ...
    },   ← 注意逗号
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
    }   ← 最后一个工具后面不要逗号
  ],
  "workflows": [...]
}
```

#### ❌ 常见错误:
```json
// 错误 1: 最后多了逗号
{
  "id": "chatgpt",
  ...
},  ← 多余的逗号会导致解析失败
]

// 错误 2: 缺少逗号
{
  "id": "tool1",
  ...
}   ← 缺少逗号
{
  "id": "tool2",
  ...
}

//错误 3: 引号不匹配
"name": "ChatGPT  ← 缺少结尾引号
```

### Step 6: 保存并验证

1. **保存文件** (Ctrl+S)
2. **验证 JSON 格式**:
   - 访问 https://jsonlint.com/
   - 复制粘贴你的 JSON
   - 点击 "Validate JSON"
   - ✅ 显示 "Valid JSON" 才能用

3. **刷新页面** (F5 或 Ctrl+R)
4. **查找新工具**:
   - 使用搜索框搜索工具名
   - 或点击对应分类

---

## 方法 2: 使用命令面板导出编辑

### Step 1: 导出当前数据
1. 打开 `index.html`
2. 按 `Ctrl+K` 打开命令面板
3. 输入 `> 导出数据`
4. 文件会自动下载为 `bernard-toolbox-backup-2025-01-20.json`

### Step 2: 编辑下载的文件
1. 用文本编辑器打开下载的 JSON 文件
2. 按照 [方法 1](#方法-1-手动编辑-json) 的步骤添加工具
3. 保存

### Step 3: 替换原文件
1. 将编辑后的文件重命名为 `tools.json`
2. 复制到 `data/` 文件夹,覆盖原文件
3. 刷新页面

---

## 方法 3: 在线工具辅助

### 使用 JSON Editor Online

1. 访问 https://jsoneditoronline.org/
2. 点击左上角 "Open" → 选择 `data/tools.json`
3. 使用可视化界面编辑:
   - 点击 `tools` 数组
   - 点击右侧 "Append" 按钮
   - 填写字段
4. 点击右上角 "Save" → 下载
5. 替换原文件

### 优点:
- ✅ 自动格式化
- ✅ 语法高亮
- ✅ 自动检测错误
- ✅ 可视化树状结构

---

## 🎯 实战示例

### 示例 1: 添加 ChatGPT

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

**插入位置:**
```json
{
  "tools": [
    {
      "id": "gemini",
      "name": "Gemini",
      ...
    },
    {
      "id": "chatgpt",   ← 在这里插入
      "name": "ChatGPT",
      ...
    }
  ]
}
```

### 示例 2: 添加 Notion

```json
{
  "id": "notion",
  "name": "Notion",
  "url": "https://www.notion.so",
  "desc": "全能笔记 & 项目管理",
  "category": "效率工具",
  "tags": ["笔记", "协作", "数据库"],
  "icon": "fa-solid fa-note-sticky",
  "rating": 5,
  "difficulty": 2
}
```

### 示例 3: 添加 Midjourney

```json
{
  "id": "midjourney",
  "name": "Midjourney",
  "url": "https://www.midjourney.com",
  "desc": "AI 艺术图像生成",
  "category": "图片视频处理",
  "tags": ["AI生图", "艺术", "创作"],
  "icon": "fa-solid fa-paintbrush",
  "rating": 5,
  "difficulty": 3
}
```

---

## 🛠️ 常见问题

### Q1: 添加后页面空白怎么办?
**A:** JSON 格式错误,按 F12 打开控制台查看错误:
1. 检查是否多/少了逗号
2. 检查引号是否匹配
3. 使用 [JSONLint](https://jsonlint.com/) 验证

### Q2: 新工具不显示怎么办?
**A:** 检查以下几点:
1. 是否保存了文件?
2. 是否刷新了页面? (强制刷新: Ctrl+Shift+R)
3. JSON 格式是否正确?
4. 浏览器缓存: 清空缓存后重试

### Q3: 如何批量添加工具?
**A:** 复制模板多次:
```json
{
  "tools": [
    { "id": "tool1", ... },
    { "id": "tool2", ... },
    { "id": "tool3", ... }
  ]
}
```
注意最后一个工具后面不要加逗号!

### Q4: 如何删除工具?
**A:** 直接删除对应的 `{ }` 对象,注意调整逗号

**删除前:**
```json
{
  "tools": [
    { "id": "tool1", ... },
    { "id": "tool2", ... },  ← 要删除这个
    { "id": "tool3", ... }
  ]
}
```

**删除后:**
```json
{
  "tools": [
    { "id": "tool1", ... },
    { "id": "tool3", ... }   ← 注意保持逗号正确
  ]
}
```

### Q5: 如何修改现有工具?
**A:** 直接编辑对应字段:
```json
{
  "id": "gemini",
  "name": "Gemini Pro",      ← 修改名称
  "rating": 5,               ← 调整评分
  "difficulty": 2,           ← 调整难度
  ...
}
```

### Q6: 图标不显示怎么办?
**A:** 检查:
1. 图标类名是否正确 (fa-solid/fa-brands)
2. 访问 [FontAwesome](https://fontawesome.com/) 确认图标存在
3. 使用默认图标: `"icon": "fa-solid fa-cube"`

### Q7: 如何找到合适的分类?
**A:** 查看现有分类:
1. 打开页面
2. 查看分类按钮
3. 选择最匹配的,或创建新分类

### Q8: tags 写几个合适?
**A:** 建议 3-5 个:
- 2 个会显示在卡片上
- 其余用于搜索匹配
- 太多会影响性能

---

## ✅ 检查清单

添加工具前确认:
- [ ] `id` 是唯一的
- [ ] `url` 包含完整的 https://
- [ ] `icon` 来自 FontAwesome
- [ ] `rating` 和 `difficulty` 是 1-5 的整数
- [ ] `tags` 是数组格式 `["tag1", "tag2"]`
- [ ] JSON 格式正确 (通过 JSONLint 验证)
- [ ] 保存后刷新页面

---

## 🎓 进阶技巧

### 技巧 1: 使用 VS Code 编辑
1. 安装 VS Code
2. 安装 "JSON Tools" 插件
3. 打开 `tools.json`
4. 自动格式化: `Shift+Alt+F`
5. 自动补全 + 语法检查

### 技巧 2: 快速查找图标
在 FontAwesome 搜索中文:
- 搜 "对话" → 找到 fa-comments
- 搜 "代码" → 找到 fa-code
- 搜 "图片" → 找到 fa-image

### 技巧 3: 统一命名规范
建议 `id` 使用规则:
- 品牌名: `chatgpt`, `notion`, `figma`
- 通用工具: `ai-image-gen`, `code-editor`
- 中文拼音: `doubao`, `jimeng`

### 技巧 4: 批量生成
使用 Excel/Google Sheets:
1. 列出工具信息
2. 使用公式拼接 JSON
3. 复制结果粘贴到 `tools.json`

公式示例:
```excel
="{""id"":"""&A2&""",""name"":"""&B2&""",""url"":"""&C2&""",...}"
```

---

## 📞 需要帮助?

如果遇到问题:
1. 检查控制台错误 (F12)
2. 使用 JSONLint 验证格式
3. 查看示例工具模仿格式
4. 重新下载原始 `tools.json` 对比

---

<div align="center">

**现在你已经是添加工具的专家了! 🎉**

</div>
