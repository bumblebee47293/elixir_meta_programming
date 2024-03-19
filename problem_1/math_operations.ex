defmodule MathOperations do
    def add(a, b), do: a + b
    def subtract(a, b), do: a - b
    def multiply(a, b), do: a * b
    def divide(a, b), do: a / b

    def call_function(function_name, args) when is_atom(function_name) and is_list(args) do
      apply(__MODULE__, function_name, args)
    end
end
