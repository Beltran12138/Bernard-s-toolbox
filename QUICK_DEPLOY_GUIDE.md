# ⚡ 5分钟快速部署指南

> **目标:** 零基础快速部署到 GitHub Pages

---

## 🎯 方案选择

### 推荐: 网页端部署 (无需安装任何软件)

---

## 📝 Step-by-Step 图文教程

### Step 1: 注册 GitHub 账号 (2分钟)

1. 访问 https://github.com/signup
2. 填写信息:
   ```
   Email: 你的邮箱
   Password: 设置密码
   Username: 选择用户名 (如 bernard-dev)
   ```
3. 验证邮箱 (打开邮箱点击验证链接)

---

### Step 2: 创建仓库 (1分钟)

1. 登录 GitHub 后,点击右上角 **+** → **New repository**

2. 填写仓库信息:
   ```
   Repository name: bernard-toolbox
   Description: 🚀 My personal toolbox
   ✅ Public (必须选这个!)
   ❌ 不要勾选任何初始化选项
   ```

3. 点击绿色按钮 **Create repository**

---

### Step 3: 上传文件 (2分钟)

1. 在新仓库页面,点击 **uploading an existing file** 链接

2. 打开你的 `my - toolbox` 文件夹

3. **全选所有文件** (Ctrl+A)

4. **拖拽到 GitHub 上传区域** (看到虚线框)

5. 在底部输入:
   ```
   Commit message: Initial commit - Toolbox v2.0
   ```

6. 点击 **Commit changes**

7. 等待上传完成 (10-30秒)

---

### Step 4: 启用 GitHub Pages (30秒)

1. 点击仓库顶部的 **Settings** (齿轮图标)

2. 在左侧菜单找到 **Pages**

3. 在 **Source** 下:
   - Branch: 选择 `main`
   - Folder: 选择 `/ (root)`

4. 点击 **Save**

5. 看到绿色提示:
   ```
   Your site is published at https://你的用户名.github.io/bernard-toolbox/
   ```

---

### Step 5: 访问你的网站 (30秒)

1. **等待 1-2 分钟** (GitHub 正在部署)

2. 点击显示的链接,例如:
   ```
   https://bernard-dev.github.io/bernard-toolbox/
   ```

3. **🎉 成功!** 你的工具箱已上线!

---

## 🔄 后续更新 (每次 30 秒)

### 方式 1: 网页编辑 (推荐)

**添加新工具:**

1. 进入仓库,点击 `data/tools.json`

2. 点击右上角 ✏️ 铅笔图标

3. 编辑内容 (参考 `HOW_TO_ADD_TOOLS.md`)

4. 滚动到底部,填写:
   ```
   Add new tool: ChatGPT
   ```

5. 点击 **Commit changes**

6. **等待 1-2 分钟,刷新网站** 即可看到更新!

### 方式 2: 使用自动化脚本 (高级)

参考 `DEPLOY_TO_GITHUB.md` 中的 Git 命令行部分

---

## 📌 记住你的网址

你的工具箱永久网址:
```
https://你的GitHub用户名.github.io/bernard-toolbox/
```

**示例:**
- 用户名: `bernard-dev`
- 网址: `https://bernard-dev.github.io/bernard-toolbox/`

---

## 🎁 完成后可以做什么?

1. ✅ **添加到浏览器书签**
   - 按 `Ctrl+D` 收藏

2. ✅ **设为浏览器主页**
   - Chrome: 设置 → 启动时 → 打开特定网页

3. ✅ **分享给朋友**
   - 复制链接发送

4. ✅ **继续添加工具**
   - 查看 `HOW_TO_ADD_TOOLS.md`

5. ✅ **自定义域名** (可选)
   - 查看 `DEPLOY_TO_GITHUB.md`

---

## ❓ 遇到问题?

### 问题 1: 上传文件后看不到?
**解决:** 刷新页面,确认文件在列表中

### 问题 2: 网站显示 404?
**解决:**
1. 检查 Settings → Pages 是否已启用
2. 等待 2-3 分钟
3. 确认仓库是 Public

### 问题 3: 修改后网站没更新?
**解决:**
1. 等待 1-2 分钟
2. 强制刷新浏览器 (Ctrl+Shift+R)
3. 清除缓存

### 问题 4: 功能不正常?
**解决:**
1. 按 F12 打开控制台
2. 查看是否有错误信息
3. 检查 `data/tools.json` 格式是否正确

---

## 📚 完整文档

- **添加工具详细教程:** `HOW_TO_ADD_TOOLS.md`
- **完整部署指南:** `DEPLOY_TO_GITHUB.md`
- **功能说明文档:** `README.md`
- **快速上手:** `QUICKSTART.md`

---

## ⏱️ 时间轴总结

| 步骤 | 时间 | 累计 |
|------|------|------|
| 注册 GitHub | 2 分钟 | 2 分钟 |
| 创建仓库 | 1 分钟 | 3 分钟 |
| 上传文件 | 2 分钟 | 5 分钟 |
| 启用 Pages | 0.5 分钟 | 5.5 分钟 |
| 等待部署 | 2 分钟 | 7.5 分钟 |
| **总计** | - | **约 8 分钟** |

---

## 🎓 视频教程 (推荐)

搜索 YouTube/B站:
- "GitHub Pages 部署静态网站"
- "如何使用 GitHub Pages"

---

<div align="center">

**只需 8 分钟,你的工具箱就能上线! 🚀**

**立即开始 →** https://github.com/new

</div>
