local std = require(game:GetService("ReplicatedStorage").Shared.std.std).include({"iostream", "vector"})

std.iostream.cout("Client initialized")

local vector = std.vector.new()
vector.push_back("Hello")

print(vector.data())