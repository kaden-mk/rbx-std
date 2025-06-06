--!optimize 2

local vector = {}

function vector.new()
    local self = {}

    local data = {}

    -- Inserts a new value inside of the data array.
    function self.push_back(value: any)
        data[#data + 1] = value

        -- fix gap
        for i = #data, 2, -1 do
            data[i] = data[i - 1]
        end
    end

    -- Removes the last value from the data array.
    function self.pop_back()
        if #data > 0 then
            data[#data] = nil

            -- fix gap
            for i = #data, 2, -1 do
                data[i] = data[i - 1]
            end
        end
    end

    -- Returns the value at the given index.
    function self.get(index: number): any?
        return data[index]
    end

    -- Returns the size of the vector.
    function self.get_size(): number
        return #data
    end

    -- Returns the data inside of the vector.
    function self.get_data(): {any}
        return data
    end

    -- Erase a value at the given index.
    function self.erase(index: number)
        if index >= 1 and index <= #data then
            data[index] = nil

            -- fix grap
            for i = index, #data - 1 do
                data[i] = data[i + 1]
            end
        end
    end

    -- Clear the entire vector.
    function self.clear()
        data = {}
    end

    return self
end

return vector