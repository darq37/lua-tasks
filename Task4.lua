--4. Napisać program zamieniający litery (z małych na duże) znajdujące się na
--pozycjach podzielnych przez 3.

-- Wg treści zadania, nie ważne czy litera jest wielka, czy mała
local testString = "aCnJKSnAUANm"
local t = {}

for i = 1, #testString do
    t[i] = testString:sub(i, i)

    if (i % 3 == 0) then
        t[i] = string.upper(t[i])
    end
end

local result = table.concat(t, "")
print(result)

-- Zakładając, że chodziło o to, by zamieniać małe na duże ORAZ duże na małe, w miejscach w stringu podzielnych przez 3, kod wyglądałby tak:
local x = {}

for i = 1, #testString do
    x[i] = testString:sub(i, i)

    if (i % 3 == 0) then
        if (x[i]:match("%l")) then
            x[i] = string.upper(t[i])
        else
            x[i] = string.lower(t[i])
        end
    end
end

local result = table.concat(x, "")
print(result)



