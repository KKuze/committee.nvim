
vim.api.nvim_create_user_command(
  'Hello',                              
  function()                           
    print("hello")                      
  end,
  {}                                  
)

