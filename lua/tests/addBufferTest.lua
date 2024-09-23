local Test = {}

Test.test_add_buffer = function()
    local initial_buf_count = #vim.api.nvim_list_bufs()

    vim.cmd('AddBuffer')

    local final_buf_count = #vim.api.nvim_list_bufs()

    if final_buf_count == initial_buf_count + 1 then
        print("Test passed: A new buffer was created.")
    else
        print("Test failed: No new buffer was created or more than one buffer was created.")
        print("Initial count: ", initial_buf_count)
        print("Final count: ", final_buf_count)
    end
end

return Test
