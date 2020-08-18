--7. Napisać funkcję, która w dwuwymiarowej tablicy liczb rzeczywistych (podanej przez parametr) znajduje najmniejszy element na pierwszej przekątnej (głównej, diagonalnej czerwony - ozn. ) i najmniejszy na drugiej przekątnej (ozn. podkreślenie).

--Funkcja zwraca średnią arytmetyczną tych dwóch znalezionych wartości. Dodatkowo wyświetlony zostaje trzeci, co do wielkości, maksymalny element z całej tablicy.

-- Wydaje mi się, że dla podanego przykładu treść zadania nie ma sensu. Przykład ma sens tylko, gdy weźmiemy największy(a nie najmniejszy) element na pierwszej przekątnej i najmniejszy na drugiej, dlatego też zrobiłem to w taki sposób.

local test = {
    {0.12, 0.23, 0.17, 0.89, 1.00},
    {0.83, 0.25, 0.99, 0.46, 0.46},
    {0.21, 0.00, 0.63, 0.15, 0.71},
    {0.19, 0.04, 0.23, 0.38, 0.30},
    {0.38, 0.93, 0.11, 0.53, 0.06}
}

function solve(data)
    primaryDiagonal = {}
    secondaryDiagonal = {}

    for i = 1, #data do
        for j = 1, #data do
            if (i == j) then
                table.insert(primaryDiagonal, data[i][j])
            end
        end
    end

    for k = 1, #data do
        for l = 1, #data do
            if ((k + l) == (#data + 1)) then
                table.insert(secondaryDiagonal, data[k][l])
            end
        end
    end

    table.sort(primaryDiagonal)
    table.sort(secondaryDiagonal)
    local biggestPrim = primaryDiagonal[#primaryDiagonal]
    local smallestSec = secondaryDiagonal[1]
    local average = (biggestPrim + smallestSec) / 2
    printThirdBiggest(data)

    return average
end

function printThirdBiggest(data)
    local allNumbers = {}

    for g = 1, #data do
        for h = 1, #data do
            table.insert(allNumbers, data[g][h])
        end
    end

    table.sort(allNumbers)
    print("Third biggest number: " .. allNumbers[#allNumbers - 2])
end

print("Wynik: " .. solve(test))