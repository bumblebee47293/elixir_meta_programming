Absolutely! Level 3 will build upon the understanding of macros and delve deeper into their capabilities:

### Level 3: Building a DSL (Domain-Specific Language)

**Problem Statement:**
Construct a DSL in Elixir that mimics a simplified querying language for a database. The DSL should allow users to define queries in a human-readable format and then transform those queries into executable code.

For example, design a DSL that can build SQL-like queries for a hypothetical database. Users should be able to write something like:
```elixir
query = QueryDSL.select([:name, :age]).from(:users).where(age: 18)
