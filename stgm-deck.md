---
history: True
slideNumber: True
title: The Spineless Tagless G-Machine
subtitle: How GHC Handles Laziness
author: Armin Bernstetter
date: today
bibliography: stgm.bib
csl: chicago-author-date.csl
---

# Haskell 

## {.column width="30%"}

![](img/haskell.png)

## {.column width="50%"}

- Search for a "common functional language"
- 1987-1989 commitee meetings
- 1989 start of development, 1990 Haskell version 1.0
- Named after mathematician Haskell Curry

[@hudak2007history]

# GHC

- Glasgow Haskell Compiler
- Written in Haskell
- Lead Developers: 
  - Simon Peyton Jones (Microsoft Research)
  - Simon Marlow (Facebook)
- De facto default Haskell compiler
- [https://gitlab.haskell.org/ghc/ghc/wikis/index](https://gitlab.haskell.org/ghc/ghc/wikis/index)

# GHC Compilation Flow

```{.haskell style="font-size: large"}

                                                                          +---------+
                                                         LLVM backend /-->| LLVM IR |-\
                                                                      |   +---------+ | LLVM
                                                                      |               v
 +------------+ Desugar  +------+ STGify  +-----+ CodeGen  +-----+    |  NCG    +----------+
 | Parse tree |--------->| Core |-------->| STG |--------->| C-- |----+-------->| Assembly |
 +------------+          +------+         +-----+          +-----+    |         +----------+
                                                                      |            ^
                                                                      |     +---+  | GCC
                                                            C backend \---->| C |--/
                                                                            +---+

```

# TODO: Make this speakernotes

1. Type Checking, parse tree
2. intermediate Core language
3. STG language
4. C-- 
5. Assembly through LLVM, NCG (default) or C

# Abstract Machines?

# Other examples

- TIM

# The STGM

- Compiled graph reduction machine for a lazy functional language
- STG program is a graph, not a tree
-  

#

## Spineless

- Graph not represented as single data structure in memory 
- Small, individual parts of the graph that reference each other

#

## Tagless

- Other implementations examine tag fields on heap objects to decide how to treat them.
- STGM makes a jump to the code pointed to by the object; Objects in the heap have uniform representation with a code pointer in their first field
- All heap values are represented alike on the heap (in the form of closures). 

tagFUL
: Closures would have to be annotated with type information or whether they were previously evaluated already





# The STG Language

# Push/Enter vs Eval/Apply

Push/enter
: The function which statically knows its own arity examines the stack to figure out how many arguments it has been passed and where they are.

Eval/apply
: The caller which statically knows what the arguments are examines the function closure, extracts its arity and makes an exact call to the function.

[@marlow2004making]


# 

# Ministg

- [https://github.com/bjpop/ministg](https://github.com/bjpop/ministg)
- STG interpreter written in haskell
- Provides insight in STG language evaluation
- Optional tracing of program execution

# Example 
TODO: Check this! Glaube ich hab entweder hier oder im trace 22 und true vertauscht

## Program: apply.stg
```haskell
const = FUN(x y -> x);
apply = FUN(f x -> f x);

twentytwo = CON(I 22);
main = THUNK(apply const twentytwo true)
```
## Output
```haskell
(I 22)
```

# Eval/Apply Trace


[:include](include/ea_trace.md)


# Push/Enter Trace

[html](trace/trace_pe/step0.html){target="_blank"}

[](trace/trace_pe/step1.html){.resource}
[](trace/trace_pe/step2.html){.resource}
[](trace/trace_pe/step3.html){.resource}
[](trace/trace_pe/step4.html){.resource}
[](trace/trace_pe/step5.html){.resource}
[](trace/trace_pe/step6.html){.resource}
[](trace/trace_pe/step7.html){.resource}

#
