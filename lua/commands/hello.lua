local M = {}

M.hello = function()
	print("hello")
end

M.setup = function()
	vim.api.nvim_create_user_command(
	  'Hello',                              
	  M.hello,
	  {}                                  
	)
end

return M

