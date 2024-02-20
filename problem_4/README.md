Alright, let's up the complexity for Level 4:

### Level 4: Macro-Based Validation System

**Problem Statement:**
Build a validation system using macros that enables users to define validation rules for a struct or a map in Elixir. Create a macro `validate` that, when used on a struct or a map, allows users to specify validation rules for its fields or keys.

For instance, imagine you have a `User` struct with fields `:username`, `:email`, and `:age`. Your task is to enable users to define validation rules like:

```elixir
defmodule User do
  defstruct [:username, :email, :age]
  
  @derive [Jason.Encoder]
  defstruct username: nil, email: nil, age: nil

  validate do
    field(:username, fn username ->
      String.length(username) > 3
    end)

    field(:email, fn email ->
      String.match?(email, ~r/@/)
    end)

    field(:age, fn age ->
      is_integer(age) && age >= 18
    end)
  end
end
