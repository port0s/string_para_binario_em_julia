function to_bin(ascii_int::Int64)
  lista = []
  while ascii_int > 0
    mod(ascii_int, 2) == 1 ? push!(lista, '1') : push!(lista, '0')
    ascii_int = round(ascii_int / 2)
  end
  lista |> join |> reverse # reverse(join(lista))
end

function return_bin(string::SubString{String})
 for letter in string
   letter |> Int |> to_bin |> println # println(to_bin(Int(letter)))
 end
end

function input(prompt::AbstractString="")
  prompt |> print # print(prompt)
  return chomp(readline())
end

function main()
  input("Escreva uma string? ") |> return_bin # return_bin(input("Escreva uma string? "))
end

main()
