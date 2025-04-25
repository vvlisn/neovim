# Neovim 配置

这是一个基于 Lua 的 Neovim 配置，专注于提供现代化的编辑体验，特别优化了 Go 语言开发环境。

## 特性

- 🚀 基于 lazy.nvim 的插件管理
- 🎨 现代化的 UI 主题 (Tokyo Night/Gruvbox)
- 📁 强大的文件树和文件查找
- ⚡️ 完整的 LSP 支持
- 🔍 模糊查找和全文搜索
- 🛠 Git 集成
- 🐹 Go 语言特别优化

## 快速开始# Neovim 插件说明文档

## UI 相关插件

### 1. 主题与样式
- **gruvbox.nvim**
  - 功能：现代化的 Gruvbox 主题
  - 特点：支持 LSP/Treesitter 高亮

- **tokyonight.nvim**
  - 功能：现代化的 Tokyo Night 主题
  - 特点：清爽的暗色主题，支持多种变体

- **lualine.nvim**
  - 功能：状态栏美化
  - 特点：显示模式、文件信息、Git 状态等

### 2. 界面增强
- **alpha-nvim**
  - 功能：启动页面
  - 特点：可自定义的欢迎界面

- **indent-blankline.nvim**
  - 功能：缩进线显示
  - 特点：可视化代码缩进层级

- **nvim-notify**
  - 功能：通知提示
  - 特点：美化的通知消息

## 文件管理

### 1. 文件浏览
- **neo-tree.nvim**
  - 功能：文件树浏览器
  - 特点：
    - 支持文件树操作
    - Git 状态显示
    - 图标支持

- **fzf-lua**
  - 功能：模糊查找
  - 特点：
    - 快速文件搜索
    - 全文内容搜索
    - 命令历史查找

## 编码辅助

### 1. 语法与高亮
- **nvim-treesitter**
  - 功能：语法解析引擎
  - 特点：
    - 准确的语法高亮
    - 智能代码折叠
    - 结构化编辑

### 2. 编辑增强
- **nvim-autopairs**
  - 功能：自动括号匹配
  - 特点：智能括号补全

- **Comment.nvim**
  - 功能：代码注释
  - 特点：支持多种语言的注释格式

### 3. 代码格式化
- **conform.nvim**
  - 功能：代码格式化
  - 特点：
    - 多语言支持
    - 保存时自动格式化
    - 格式化选中区域

## Git 集成

### 1. Git 支持
- **gitsigns.nvim**
  - 功能：Git 集成
  - 特点：
    - 显示文件变更
    - 查看文件历史
    - 支持 blame
    - 支持 hunk 操作

## LSP 相关

### 1. LSP 配置
- **nvim-lspconfig**
  - 功能：LSP 客户端配置
  - 特点：
    - 代码补全
    - 语法检查
    - 定义跳转
    - 引用查找

### 2. 终端集成
- **toggleterm.nvim**
  - 功能：集成终端
  - 特点：
    - 浮动终端
    - 多终端支持
    - 命令运行

## 特定语言支持

### 1. Go 开发
- **go.nvim**
  - 功能：Go 语言支持
  - 特点：
    - 自动导入包
    - 代码生成
    - 测试支持
    - 调试集成

## 工具类

### 1. 项目管理
- **project.nvim**
  - 功能：项目管理
  - 特点：
    - 自动检测项目根目录
    - 项目历史记录
    - 快速项目切换

### 2. 其他工具
- **which-key.nvim**
  - 功能：快捷键提示
  - 特点：显示可用的键位绑定

## 性能优化

### 1. 延迟加载
- **lazy.nvim**
  - 功能：插件管理器
  - 特点：
    - 延迟加载插件
    - 依赖管理
    - 自动更新
    - 性能分析

### 依赖

```bash
# 安装必要依赖
brew install neovim ripgrep fd git curl cargo
```

### 安装

```bash
# 备份现有配置
mv ~/.config/nvim ~/.config/nvim.bak

# 克隆配置
git clone https://github.com/yourusername/nvim.git ~/.config/nvim
```

## 核心插件

### 文件导航
- **neo-tree**: 文件树浏览器
  - `<leader>e` - 切换文件树
  - `<leader>o` - 定位当前文件
  
- **fzf-lua**: 模糊查找
  - `<C-f>` - 全文搜索
  - `<C-e>` - 打开缓冲区
  - `<leader>f` - 当前文件搜索
  - `<leader>r` - 最近文件
  - `<leader>s` - 语法结构搜索

### 编辑增强
- **treesitter**: 语法高亮和代码分析
- **conform**: 代码格式化
  - `<leader>i` - 格式化当前文件
  
- **autopairs**: 自动括号匹配
- **comment**: 代码注释
  - `gcc` - 注释/取消注释当前行
  - `gc` - 可视模式下注释

### Git 集成
- **gitsigns**: Git 集成
  - `<leader>gc` - 查看提交历史
  - `<leader>gb` - 当前文件提交历史
  - `<leader>gs` - Git 状态

### Go 开发
- **go-vim**: Go 语言支持
  - `<leader>fe` - 生成错误处理
  - `<leader>fs` - 填充结构体
  - `<leader>fc` - 填充 switch
  - `<leader>ta` - 添加标签
  - `<leader>tr` - 移除标签
  - `gd` - 跳转到定义
  - `gr` - 查找引用
  - `K` - 显示文档

### 窗口管理
- 分屏操作:
  - `sv` - 垂直分屏
  - `sh` - 水平分屏
  - `sc` - 关闭当前窗口
  - `so` - 关闭其他窗口
  
- 窗口导航:
  - `<C-h>` - 左窗口
  - `<C-j>` - 下窗口
  - `<C-k>` - 上窗口
  - `<C-l>` - 右窗口

### 其他功能
- `<C-s>` - 保存文件
- `<C-q>` - 退出
- `<ESC>` - 清除搜索高亮
- `<leader><leader>` - 切换行号显示

## 自定义配置

配置文件组织结构：
```
~/.config/nvim/
├── init.lua                # 入口文件
├── lua/
│   ├── configs/           # 基础配置
│   │   ├── keymaps.lua   # 快捷键配置
│   │   └── lazy.lua      # 插件管理
│   └── plugins/          # 插件配置
└── README.md
```

## 反馈与贡献

如果您发现任何问题或有改进建议，欢迎提出 Issue 或 Pull Request。

## 许可

MIT License