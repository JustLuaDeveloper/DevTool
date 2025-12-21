return function()
    local func_list = {}

    function func_list.randomString(length)
        local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        local result = {}

        for i = 1, length do
            local randIndex = math.random(1, #chars)
            result[i] = string.sub(chars, randIndex, randIndex)
        end

        return table.concat(result)
    end
    function func_list.randomHash(length)
        length = length or 16
        local chars = "0123456789abcdef"
        local result = {}

        for i = 1, length do
            local randIndex = math.random(1, #chars)
            result[i] = string.sub(chars, randIndex, randIndex)
        end

        return table.concat(result)
    end
    function func_list.randomBool()
        return math.random() < 0.5
    end
    function func_list.randomHWID(val)
        game:GetService("HttpService"):GenerateGUID(val)
    end
    return func_list
end
