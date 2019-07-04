---
history: True
slideNumber: True
title: The Spineless Tagless G-Machine
subtitle: How GHC Handles Laziness
author: Armin Bernstetter
date: today
---

# Haskell 

## {.column width="30%"}

![](img/haskell.png)

## {.column width="50%"}

- 1989
- Komitee
- bla


# GHC

- De facto default compiler
- Konkurrenten: Hugs, ...

# The GHC Compilation Flow

insert flow from gitlab page 

# Abstract Machines?

# Other examples

- TIM

# The STGM

Spineless
: test

Tagless
: test

# 


# The STG Language

# Push/Enter vs Eval/Apply

# 

# Ministg

# Program

## apply.stg
```haskell
const = FUN(x y -> x);
apply = FUN(f x -> f x);

twentytwo = CON(I 22);
main = THUNK(apply const twentytwo true)
```
## Ausgabe
```haskell
(I 22)
```

#

![](trace/trace_pe/step0.html){width=100% height=90vh}

#

![](trace/trace_ea/step0.html){width=100% height=90vh}
