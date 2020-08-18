--3. Napisać program obliczający średnią arytmetyczną z wszystkich podanych liczb ujemnych oraz iloczyn liczb dodatnich.
function averageAndProduct(...)
    local negativeSum = 0
    local product = 1
    local negativeCount = 0


    for k, v in pairs{...} do
        if (v < 0) then
            negativeSum = negativeSum + v
            negativeCount = negativeCount + 1
        else
            product = product * v
        end
    end

    local average = negativeSum / negativeCount

    return average, product
end

local average, product = averageAndProduct(1, -3, 5, -2, 8)
print(string.format("Średnia z ujemnych: %.1f , iloczyn dodatnich: %d", average, product))