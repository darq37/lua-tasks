--2. Napisać program wczytujący od użytkownika liczbę x i rysujący na ekranie (przy pomocy znaku 'o') trójkąt prostokątny, w którym obydwie przyprostokątne są długości x.


print("Podaj liczbę x: ")
local x = io.read("*n")

print(string.format("Trójkąt równoboczny o boku %d:", x))
for i = 1, x, 1 do
  for j = i , x, 1 do
    io.write("o ")
  end
  print()
end