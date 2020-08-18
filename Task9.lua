--9. Napisać funkcję, która jako parametr otrzymuje łańcuch znaków. W wyniku działania funkcja zwraca liczbę cyfr, które znajdowały się w podanym łańcuchu. Ponadto funkcja wyświetla łańcuch z pominiętymi znakami odpowiadającymi cyfrom.

local test = "asdf23tsdcs3cz2"

function cutNumbers(input)
    text, count = string.gsub(input, "%d", "")
    print("Liczba wystąpień cyfr: " .. count .. ", Napis po usunięciu cyfr: " .. text)

    return count
end

cutNumbers(test)