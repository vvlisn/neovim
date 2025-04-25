return {
    'saghen/blink.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    build = 'cargo build --release',
    keys = {
        -- 修改快捷键使其更符合习惯
        {
            '<leader>;',  -- 改用 空格+; 来切换分号
            function()
                require('blink.chartoggle').toggle_char_eol(';')
            end,
            mode = { 'n', 'v' },
            desc = '切换行尾分号',
        },
        {
            '<leader>,',  -- 改用 空格+, 来切换逗号
            function()
                require('blink.chartoggle').toggle_char_eol(',')
            end,
            mode = { 'n', 'v' },
            desc = '切换行尾逗号',
        },
  
        -- 文件树快捷键
        { '<C-n>', '<cmd>BlinkTree toggle<cr>', desc = '切换文件树' },
        { '<leader>f', '<cmd>BlinkTree reveal<cr>', desc = '在树中定位当前文件' },
    },
    lazy = false,
    opts = {
        chartoggle = { 
            enabled = true,
            -- 添加常用的字符模式
            patterns = {
                [';'] = true,  -- 支持分号
                [','] = true,  -- 支持逗号
            }
        },
        indent = { 
            enabled = true,
            use_treesitter = true,  -- 使用 treesitter 提供更好的缩进支持
        },
        tree = { 
            enabled = true,
            width = 30,        -- 设置树的宽度
            side = "left",     -- 在左侧显示
            auto_close = true, -- 打开文件时自动关闭树
        }
    }
}