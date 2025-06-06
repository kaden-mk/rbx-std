local std = {}

local libs = script.Parent.libs

local registry = {
    iostream = require(libs.iostream),
}

export type Registry = {
    iostream: typeof(registry.iostream),
}

function std.include(paths: {string}): Partial<Registry>
    local fake_std = {}

    for _, path in paths do
        if not libs[path] then
            error(string.format("Library '%s' does not exist in std.libs", path), 2)
        end

        local module = registry[path]

        fake_std[path] = module
    end

    return fake_std
end

return std