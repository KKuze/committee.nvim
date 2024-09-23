local TestRunner = {}

local testFiles = {
    "tests.helloTest"
}

TestRunner.setup = function()
end

TestRunner.run_all = function()
    for _, testFile in ipairs(testFiles) do
      local test_module = require(testFile)
      for name, test_func in pairs(test_module) do
        print("Running test: " .. name)
        test_func()
      end
    end
  end

return TestRunner