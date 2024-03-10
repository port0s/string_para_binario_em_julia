function to_bin(ascii_int::Int64)
    lista = []
    while ascii_int > 0
        mod(ascii_int, 2) == 1 ? push!(lista, '1') : push!(lista, '0')
        ascii_int = round(ascii_int / 2)
    end
    lista |> join |> reverse # reverse(join(lista))
end

function return_binary(string::SubString{String})
    for letter in string
        letter |> Int |> to_bin |> println # println(to_bin(Int(letter)))
    end
end

function input(prompt::AbstractString = "")
    print(prompt)
    # isempty(prompt) && return println("String vazia")
    # prompt |> typeof |> println  # String
    # print(chomp(readline(prompt)))

    response = chomp(readline())
    # response |> !isempty |> "String vazia" |> println |> 
    isempty(response) ? true : response
    # c |> typeof |> println # SubString{String}

    # return chomp(readline())
end

function main()
    input("Escreva uma string? ") ? println("String vazia") : return_binary # return_binary(input("Escreva uma string? "))
end

main()
