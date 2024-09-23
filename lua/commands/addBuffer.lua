local M = {}

M.setup = function()
    vim.api.nvim_create_user_command('AddBuffer', function(opts)
        local buf = vim.api.nvim_create_buf(false, true)  
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "This is a new buffer!" })
        
        -- 左右に分割
        vim.cmd('rightbelow vsplit')
        vim.api.nvim_set_current_buf(buf)  
    end, {})
end

return M
