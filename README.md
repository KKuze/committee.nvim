# plugin-for-nvim
- Create directory `.config/nvim`
- Execute the command `touch init.lua`in .config/nvim/
- Write the following code in init.lua 
```
local test = require('tests.testRunner')
vim.api.nvim_create_user_command('Test', function()
	test.run_all()
end, {})

local hello = require('plugin.hello')

local buffer = require('plugin.addBuffer')

test.setup()
hello.setup() buffer.setup()
```

