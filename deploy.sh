#!/bin/bash

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo ""
echo "========================================"
echo "  Bernard's Toolbox - Auto Deploy"
echo "========================================"
echo ""

# 进入脚本所在目录
cd "$(dirname "$0")"

echo -e "${BLUE}[1/5]${NC} Checking Git status..."
if ! git status &>/dev/null; then
    echo -e "${RED}❌ Error: Git repository not initialized${NC}"
    echo "Please run: git init"
    exit 1
fi
git status

echo ""
echo -e "${BLUE}[2/5]${NC} Adding all files..."
git add .

echo ""
echo -e "${BLUE}[3/5]${NC} Committing changes..."
read -p "📝 Enter commit message (press Enter for default): " message
message=${message:-Update toolbox}

if ! git commit -m "$message"; then
    echo ""
    echo -e "${YELLOW}⚠️  No changes to commit${NC}"
    exit 0
fi

echo ""
echo -e "${BLUE}[4/5]${NC} Pushing to GitHub..."
if ! git push; then
    echo ""
    echo -e "${RED}❌ Error: Push failed${NC}"
    echo "Please check your internet connection and GitHub authentication"
    exit 1
fi

echo ""
echo -e "${BLUE}[5/5]${NC} Deploy complete!"
echo ""
echo "========================================"
echo -e "${GREEN}✅ Success! Your changes are live!${NC}"
echo ""
echo "🌐 Your site will update in 1-2 minutes"
echo "🔗 Visit: https://YOUR-USERNAME.github.io/bernard-toolbox/"
echo "========================================"
echo ""
