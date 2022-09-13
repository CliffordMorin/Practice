defmodule Play do
    def play do
        IO.puts "Playing"
    end
end

defmodule Fib do
    def fib(0), do: 1
    def fib(1), do: 1
    def fib(n) when n >= 2, do: fib(n-2) + fib(n-1)
end

defmodule Sum do 
    def sum([]), do: 0
    def sum([head | tail]), do: head + sum(tail)

    def mult([]), do: 1
    def mult([head | tail]), do: head * mult(tail)

    def map([], _func), do: []
    def map([head | tail], func) do [func.(head) | map(tail, func)] end
end
    