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

function display_bin(binary_val::Vector{Any})
  println(binary_val)
end

function return_binary(string::String)
  binary_list = []
  for letter in string
      ascii_int  = letter |> to_ascii # == ascii_int  = to_ascii(letter)
      push!(binary_list, ascii_int |> to_bin) # == push!(binary_val, to_bin(ascii_int))
  end
  binary_list |> display_bin # == display_bin(binary_val)
end

function main()
  #"GFG" |> return_binary # return_binary("GFG")
  #"Água" |> return_binary # return_binary("Água")
  "Água de Chuca" |> return_binary # return_binary("Água de Chuca")
  #"" |> return_binary # return_binary("")
  #'' |> return_binary # return_binary("")
end

main()

# REFERÊNCIA
# [convert string into binary](https://www.geeksforgeeks.org/convert-string-binary-sequence/)  
# [convert.jl](https://gist.github.com/CliffordAnderson/6a3439c91f293d053ce334bdcee17c31)  
# [function input](https://stackoverflow.com/questions/52339092/julia-passing-arguments-reading-the-command-line)
