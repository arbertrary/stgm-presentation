---
history: True
slideNumber: True
title: The Spineless Tagless G-Machine
subtitle: How GHC Handles Laziness
author: Armin Bernstetter
date: today
---

# Haskell

# GHC

# The GHC Compilation Flow

# Abstract Machines?

# Other examples

- TIM

# The STGM

Spineless
: test

Tagless
: test

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

#

![](trace/trace_pe/step0.html){width=100% height=90vh}

#

![](trace/trace_ea/step0.html){width=100% height=90vh}
