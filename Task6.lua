--6. Napisać program wyznaczający równanie kwadratowe.

local a, b, c
print("Podaj A:")
a = io.read("*n")
print("Podaj B:")
b = io.read("*n")
print("Podaj C:")
c = io.read("*n")
local delta = b * b - 4 * a * c

if (delta == 0) then
    print("x = ", -b / 2 / a)
elseif (delta > 0) then
    print("x1 = " .. (-b + math.sqrt(delta)) / 2 / a)
    print("x2 = " .. (-b - math.sqrt(delta)) / 2 / a)
else
    print("x1 = (" .. -b / 2 / a .. ", " .. math.sqrt(-delta) / 2 / a .. ")")
    print("x2 = (" .. -b / 2 / a .. ", " .. -math.sqrt(-delta) / 2 / a .. ")")
end
