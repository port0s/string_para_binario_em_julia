function to_ascii(letter::Char)
  letter |> Int # Int(letter)
end

function to_bin(ascii_int::Int64)
  lista = []
  while ascii_int > 0
    ascii_int % 2 == 1 ? push!(lista, '1') : push!(lista, '0')
    ascii_int = round(ascii_int / 2)
  end
  lista |> join |> reverse # reverse(join(lista))
end

function display_bin(binary_val::String)
  println(binary_val)
end

function return_binary(string::String)
  for letter in string
    letter |> to_ascii |> to_bin |> display_bin
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
