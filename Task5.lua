--5. Program zliczający liczbę wystąpień liter 'a', 'c', 'g', 'j' oraz 'z'.

local testString = "alwnviacgjwz"
local _, count = string.gsub(testString, "[acgjz]", "")
print("Liczba wystąpień liter a, c, g, j, z: " .. count)