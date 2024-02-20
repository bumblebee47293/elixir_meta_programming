Great progress! For Level 2, let's dive a bit deeper into Elixir metaprogramming:

### Level 2: Creating a Custom Macro

**Problem Statement:**
Create a macro named `debug` that, when used, prints out the name of the function it's called from, along with the arguments passed to that function.

For instance, if you have a function `calculate(a, b)` and within it, you use `debug(a, b)`, it should print something like: "Inside function calculate with arguments a: 5, b: 10".

This exercise will allow you to grasp the basics of writing macros in Elixir, understanding how they manipulate and generate code during compilation. Remember, macros execute at compile time and can inspect and modify the AST (Abstract Syntax Tree) of your code.

Give this a shot! Feel free to experiment and explore the macro creation process in Elixir. If you get stuck or need more guidance, let me know.
