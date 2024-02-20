For Level 8, let's dive deeper into metaprogramming and Elixir's AST manipulation:

### Level 8: AST Transformation for Custom Control Flow

**Problem Statement:**
Create a custom control flow construct in Elixir using macros that allows for a declarative style of defining a sequence of operations. Implement a macro that transforms a given code block into a sequence of steps, each executed with specific conditions.

For instance:
```elixir
my_sequence do
  step 1, when: true do
    IO.puts("Step 1 executed")
  end

  step 2, when: false do
    IO.puts("Step 2 should not execute")
  end

  step 3, when: true do
    IO.puts("Step 3 executed")
  end
end
