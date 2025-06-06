local std = require(game:GetService("ReplicatedStorage").Shared.std.std).include({"iostream", "vector"})

std.iostream.cout("Client initialized")

local new_vector = std.vector.new()
new_vector.push_back("Hello")

print(new_vector.data())