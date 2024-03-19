# test/math_operations_test.exs
Code.require_file("math_operations.ex", __DIR__)

ExUnit.start()

defmodule MathOperationsTest do
  use ExUnit.Case

  test "add/2" do
    assert MathOperations.add(2, 3) == 5
  end

  test "subtract/2" do
    assert MathOperations.subtract(10, 4) == 6
  end

  test "multiply/2" do
    assert MathOperations.multiply(3, 5) == 15
  end

  test "divide/2" do
    assert MathOperations.divide(20, 4) == 5.0
  end

  test "call_function/2 with valid function name and arguments" do
    assert MathOperations.call_function(:add, [2, 3]) == 5
    assert MathOperations.call_function(:subtract, [10, 4]) == 6
    assert MathOperations.call_function(:multiply, [3, 5]) == 15
    assert MathOperations.call_function(:divide, [20, 4]) == 5.0
  end

  test "call_function/2 with invalid function name" do
    assert_raise UndefinedFunctionError, fn ->
      MathOperations.call_function(:invalid_function, [2, 3])
    end
  end

  test "call_function/2 with incorrect number of arguments" do
    assert_raise UndefinedFunctionError, fn ->
      MathOperations.call_function(:add, [2, 3, 4])
    end
  end
end
