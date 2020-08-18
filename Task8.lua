--8. Napisać program wypełniający dwuwymiarową tablicę, losowymi wartościami całkowitoliczbowymi z zakresu [-1, 11]. Następnie wyznaczana jest suma elementów leżących w komórkach o parzystych indeksach zarówno wierszy jak i kolumn.\

print("Podaj rozmiar tablicy:")
local arraySize = io.read("*n")
local array = {}
local sum = 0
math.randomseed(os.time())
math.random()
math.random()
math.random()


for i = 1, arraySize do
    array[i] = {}

    for j = 1, arraySize do
        array[i][j] = math.random(-1, 11)

        if ((i % 2 == 0) and (j % 2 == 0)) then
            sum = sum + array[i][j]
        end
    end
end

function printArray(data)
    print("Tablica: ")

    for i = 1, arraySize do
        for j = 1, arraySize do
            io.write(array[i][j] .. " ")
        end

        print()
    end
end

printArray(array)
print("Suma: " .. sum)