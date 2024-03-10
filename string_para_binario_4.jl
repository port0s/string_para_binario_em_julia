function to_bin(ascii_int::Int64)
  lista = []
  while ascii_int > 0
    ascii_int % 2 == 1 ? push!(lista, '1') : push!(lista, '0')
    ascii_int = round(ascii_int / 2)
  end
  lista |> join |> reverse # reverse(join(lista))
end

function return_binary(string::String)
 for letter in string
   letter |> Int |> to_bin |> println # println(to_bin(Int(letter)))
 end
end

function main()
  "GFG" |> return_binary # return_binary("GFG")
  #"Água" |> return_binary # return_binary("Água")
  #"Água de Chuca" |> return_binary # return_binary("Água de Chuca")
  #"" |> return_binary # return_binary("")
  #'' |> return_binary # return_binary("")
end

main()
