# 🚀 GitHub 部署完全指南

## 📋 目录
1. [准备工作](#准备工作)
2. [方法 1: GitHub 网页端操作 (零基础推荐)](#方法-1-github-网页端操作)
3. [方法 2: Git 命令行操作 (进阶)](#方法-2-git-命令行操作)
4. [启用 GitHub Pages](#启用-github-pages)
5. [后续更新](#后续更新)
6. [自定义域名 (可选)](#自定义域名)
7. [常见问题](#常见问题)

---

## 准备工作

### 1. 注册 GitHub 账号
- 访问 https://github.com/signup
- 填写邮箱/用户名/密码
- 验证邮箱

### 2. 检查文件结构
确保你的文件夹包含:
```
my - toolbox/
├── index.html
├── data/
│   └── tools.json
├── README.md
├── QUICKSTART.md
├── CHANGELOG.md
└── .gitignore
```

---

## 方法 1: GitHub 网页端操作

> **适合人群:** 没有 Git 经验的用户
> **优点:** 无需安装任何软件,全程网页操作
> **缺点:** 每次更新需要手动上传文件

### Step 1: 创建仓库

1. **登录 GitHub**
   - 访问 https://github.com
   - 点击右上角头像 → "Your repositories"

2. **新建仓库**
   - 点击绿色按钮 "New" 或 "New repository"
   - 填写仓库信息:
     ```
     Repository name: bernard-toolbox
     Description: 🚀 My personal toolbox - A cyberpunk-style tool navigator
     Public ✅ (必须选 Public 才能用 GitHub Pages)
     ❌ 不要勾选 "Add a README file"
     ```
   - 点击 "Create repository"

### Step 2: 上传文件

1. **进入仓库页面**
   - 你会看到一个空仓库的引导页面

2. **上传文件**
   - 点击 "uploading an existing file" 链接
   - 或者直接点击 "Add file" → "Upload files"

3. **拖拽上传**
   - 打开文件资源管理器,进入 `my - toolbox` 文件夹
   - **全选所有文件和文件夹** (Ctrl+A)
   - 拖拽到 GitHub 上传区域

4. **提交更改**
   - 在底部 "Commit changes" 输入框填写:
     ```
     Initial commit - Toolbox v2.0
     ```
   - 点击 "Commit changes"

### Step 3: 等待上传完成
- 上传可能需要 10-30 秒
- 完成后会自动跳转到仓库主页
- 确认所有文件都在列表中

---

## 方法 2: Git 命令行操作

> **适合人群:** 有一定技术基础,想学习 Git 的用户
> **优点:** 更新快速,支持版本控制
> **缺点:** 需要安装 Git 并学习基础命令

### Step 1: 安装 Git

#### Windows:
1. 下载 Git: https://git-scm.com/download/win
2. 双击安装包,一路 "Next"
3. 完成后打开 "Git Bash"

#### Mac:
```bash
# 安装 Homebrew (如果未安装)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 安装 Git
brew install git
```

#### 验证安装:
```bash
git --version
# 应该显示: git version 2.x.x
```

### Step 2: 配置 Git

打开终端 (Windows: Git Bash, Mac: Terminal):

```bash
# 设置用户名 (替换为你的 GitHub 用户名)
git config --global user.name "YourGitHubUsername"

# 设置邮箱 (替换为你的 GitHub 邮箱)
git config --global user.email "your.email@example.com"

# 验证配置
git config --global --list
```

### Step 3: 创建 GitHub 仓库

1. 访问 https://github.com/new
2. 填写信息 (同方法 1)
3. 点击 "Create repository"
4. **保持页面打开,后续会用到仓库地址**

### Step 4: 初始化本地仓库

打开终端,进入项目文件夹:

#### Windows (Git Bash):
```bash
cd "C:\Users\lenovo\OneDrive\桌面\my - toolbox"
```

#### Mac/Linux:
```bash
cd /path/to/my\ -\ toolbox
```

#### 初始化 Git:
```bash
# 初始化仓库
git init

# 查看状态
git status

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit - Toolbox v2.0"
```

### Step 5: 关联远程仓库并推送

**从 GitHub 仓库页面复制 URL:**
- 仓库页面会显示类似: `https://github.com/YourUsername/bernard-toolbox.git`

**执行命令:**
```bash
# 添加远程仓库 (替换 URL 为你的仓库地址)
git remote add origin https://github.com/YourUsername/bernard-toolbox.git

# 推送到 GitHub (首次需要输入账号密码)
git branch -M main
git push -u origin main
```

**如果提示输入密码:**
- GitHub 现在需要使用 Personal Access Token (PAT)
- 访问 https://github.com/settings/tokens
- 点击 "Generate new token" (classic)
- 勾选 `repo` 权限
- 复制生成的 Token (只显示一次!)
- 粘贴作为密码使用

### Step 6: 验证推送成功

刷新 GitHub 仓库页面,应该能看到所有文件

---

## 启用 GitHub Pages

### Step 1: 进入设置

1. 在仓库页面点击 "Settings" (齿轮图标)
2. 在左侧菜单找到 "Pages"

### Step 2: 配置 Pages

1. **Source** (源分支)
   - Branch: `main`
   - Folder: `/ (root)`

2. **点击 "Save"**

### Step 3: 等待部署

- 部署需要 1-3 分钟
- 刷新页面,顶部会显示:
  ```
  Your site is live at https://YourUsername.github.io/bernard-toolbox/
  ```

### Step 4: 访问网站

点击链接,你的工具箱就上线了! 🎉

**你的网址格式:**
```
https://YourUsername.github.io/bernard-toolbox/
```

---

## 后续更新

### 方法 1: 网页端更新

1. 进入 GitHub 仓库
2. 点击要修改的文件 (如 `data/tools.json`)
3. 点击右上角铅笔图标 ✏️ "Edit this file"
4. 修改内容
5. 滚动到底部,填写 commit 信息
6. 点击 "Commit changes"
7. **等待 1-2 分钟,刷新网站即可看到更新**

### 方法 2: Git 命令行更新

```bash
# 进入项目文件夹
cd "C:\Users\lenovo\OneDrive\桌面\my - toolbox"

# 修改文件 (用编辑器打开 data/tools.json)

# 查看修改
git status

# 添加修改
git add data/tools.json

# 或者添加所有修改
git add .

# 提交
git commit -m "Add new tool: ChatGPT"

# 推送到 GitHub
git push
```

**网站会在 1-2 分钟后自动更新**

### 方法 3: 使用快捷脚本

创建一个更新脚本 (后续章节)

---

## 自定义域名

### 如果你有自己的域名 (如 tools.example.com)

#### Step 1: 在 GitHub 设置
1. 进入仓库 Settings → Pages
2. "Custom domain" 输入: `tools.example.com`
3. 点击 "Save"

#### Step 2: 在域名注册商设置
添加 DNS 记录:

**A 记录 (指向 GitHub IP):**
```
类型: A
主机: @ 或 tools
值: 185.199.108.153
值: 185.199.109.153
值: 185.199.110.153
值: 185.199.111.153
```

**CNAME 记录 (推荐):**
```
类型: CNAME
主机: tools
值: YourUsername.github.io
```

#### Step 3: 等待 DNS 生效
- 需要 5-60 分钟
- 勾选 "Enforce HTTPS" (强制 HTTPS)

---

## 自动化部署脚本

### Windows 批处理脚本

创建 `deploy.bat`:

```batch
@echo off
echo ========================================
echo Bernard's Toolbox - Auto Deploy
echo ========================================

cd "C:\Users\lenovo\OneDrive\桌面\my - toolbox"

echo.
echo [1/4] Checking status...
git status

echo.
echo [2/4] Adding files...
git add .

echo.
echo [3/4] Committing...
set /p message="Enter commit message (default: Update toolbox): "
if "%message%"=="" set message=Update toolbox
git commit -m "%message%"

echo.
echo [4/4] Pushing to GitHub...
git push

echo.
echo ========================================
echo Deploy complete!
echo Your site will update in 1-2 minutes.
echo Visit: https://YourUsername.github.io/bernard-toolbox/
echo ========================================
pause
```

**使用方法:**
1. 修改文件后,双击 `deploy.bat`
2. 输入提交信息 (或直接回车使用默认)
3. 等待推送完成

### Mac/Linux Shell 脚本

创建 `deploy.sh`:

```bash
#!/bin/bash

echo "========================================"
echo "Bernard's Toolbox - Auto Deploy"
echo "========================================"

cd "/path/to/my - toolbox"

echo ""
echo "[1/4] Checking status..."
git status

echo ""
echo "[2/4] Adding files..."
git add .

echo ""
echo "[3/4] Committing..."
read -p "Enter commit message (default: Update toolbox): " message
message=${message:-Update toolbox}
git commit -m "$message"

echo ""
echo "[4/4] Pushing to GitHub..."
git push

echo ""
echo "========================================"
echo "Deploy complete!"
echo "Your site will update in 1-2 minutes."
echo "Visit: https://YourUsername.github.io/bernard-toolbox/"
echo "========================================"
```

**使用方法:**
```bash
# 赋予执行权限
chmod +x deploy.sh

# 运行
./deploy.sh
```

---

## 常见问题

### Q1: 推送时提示 403 错误?
**A:** 需要使用 Personal Access Token:
1. 访问 https://github.com/settings/tokens
2. Generate new token (classic)
3. 勾选 `repo` 权限
4. 复制 Token
5. 推送时用 Token 代替密码

### Q2: GitHub Pages 显示 404?
**A:** 检查:
1. Settings → Pages 是否已启用
2. Branch 是否选择 `main`
3. 是否等待了 1-3 分钟部署时间
4. 仓库是否设置为 Public

### Q3: 修改后网站没更新?
**A:**
1. 清除浏览器缓存 (Ctrl+Shift+Del)
2. 强制刷新 (Ctrl+Shift+R)
3. 等待 2-3 分钟
4. 检查 GitHub Actions (仓库页面 "Actions" 标签)

### Q4: 文件夹名有空格怎么办?
**A:** 两种方法:
```bash
# 方法 1: 使用引号
cd "C:\Users\lenovo\OneDrive\桌面\my - toolbox"

# 方法 2: 使用反斜杠转义
cd /path/to/my\ -\ toolbox
```

### Q5: 如何删除仓库重新来?
**A:**
1. 仓库页面 → Settings
2. 滚动到最底部 "Danger Zone"
3. 点击 "Delete this repository"
4. 输入仓库名确认

### Q6: 推送时每次都要输入密码?
**A:** 配置 SSH 密钥:
```bash
# 生成 SSH 密钥
ssh-keygen -t ed25519 -C "your.email@example.com"

# 复制公钥
cat ~/.ssh/id_ed25519.pub

# 添加到 GitHub: Settings → SSH and GPG keys → New SSH key
```

然后修改远程地址:
```bash
git remote set-url origin git@github.com:YourUsername/bernard-toolbox.git
```

### Q7: 如何回滚到之前的版本?
**A:**
```bash
# 查看提交历史
git log

# 回滚到指定 commit (复制 commit hash)
git reset --hard <commit-hash>

# 强制推送
git push -f
```

### Q8: 网站加载很慢?
**A:** 优化建议:
1. 使用 CDN (Cloudflare Pages)
2. 压缩图片
3. 启用浏览器缓存

---

## 🎯 完整部署检查清单

部署前确认:
- [ ] GitHub 账号已注册
- [ ] 仓库设置为 Public
- [ ] 所有文件已上传
- [ ] GitHub Pages 已启用
- [ ] 网站可访问
- [ ] 所有功能正常 (搜索/命令面板/Workflow)

部署后测试:
- [ ] 搜索功能
- [ ] Command Palette (Ctrl+K)
- [ ] Workflow 切换
- [ ] 实时数据更新 (BTC/API)
- [ ] 移动端响应式
- [ ] Boss Key (Shift+Esc)

---

## 📊 部署时间估算

| 步骤 | 网页端 | Git 命令行 |
|------|--------|-----------|
| 创建仓库 | 2 分钟 | 2 分钟 |
| 上传文件 | 3 分钟 | 5 分钟 |
| 配置 Pages | 1 分钟 | 1 分钟 |
| 等待部署 | 2 分钟 | 2 分钟 |
| **总计** | **8 分钟** | **10 分钟** |

---

## 🎓 Git 速查表

```bash
# 状态查看
git status              # 查看修改
git log                 # 查看历史
git diff                # 查看差异

# 基础操作
git add .               # 添加所有修改
git commit -m "msg"     # 提交
git push                # 推送

# 分支操作
git branch              # 查看分支
git checkout -b dev     # 创建并切换分支
git merge dev           # 合并分支

# 撤销操作
git checkout -- file    # 撤销修改
git reset HEAD file     # 取消暂存
git revert <commit>     # 撤销提交

# 远程操作
git remote -v           # 查看远程
git pull                # 拉取更新
git clone <url>         # 克隆仓库
```

---

## 🚀 下一步

部署成功后,你可以:
1. ✅ 分享链接给朋友
2. ✅ 添加到浏览器书签
3. ✅ 设为浏览器主页
4. ✅ 继续添加工具 (参考 `HOW_TO_ADD_TOOLS.md`)
5. ✅ 自定义域名 (可选)

---

<div align="center">

**恭喜! 你的工具箱已成功部署到全球网络! 🎉**

**访问地址:** `https://YourUsername.github.io/bernard-toolbox/`

</div>
