local myplugin = require('commands.hello')

local Test = {}

Test.helloTest = function()
    local expected = "hello"
    local output = vim.fn.execute("Hello")

    if output:find(expected) then
        print("Test passed: expected '" .. expected .. "', got '" .. output .. "'")
      else
        print("Test failed: expected '" .. expected .. "', but got '" .. output .. "'")
      end
    end
return Test