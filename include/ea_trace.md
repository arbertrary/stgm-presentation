

# 

## Step 0

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
|                                   | `main `                         |
+-----------------------------------+-----------------------------------+

## Heap 

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
|`apply`                            | `FUN(f x -> f_? x)`             |
+-----------------------------------+-----------------------------------+
|`const`                            | `FUN(x y -> x)`                 |
+-----------------------------------+-----------------------------------+
|`main`                             | `THUNK(apply_2 const true twentytwo)`|
+-----------------------------------+-----------------------------------+
|`true`                             | `CON(True)`                     |
+-----------------------------------+-----------------------------------+
|`twentytwo`                        | `CON(I 22)`                     |
+-----------------------------------+-----------------------------------+

# 

## Step 1: THUNK (most recent rule applied)

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
|  `upd * main`                     |   `apply_2 const true twentytwo`   |
+-----------------------------------+-----------------------------------+

## Heap 

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
| `apply`                           | `FUN(f x -> f_? x)  `          |
+-----------------------------------+-----------------------------------+
| `const       `                     | `FUN(x y -> x) `                |
+-----------------------------------+-----------------------------------+
| `main  `                           | `BLACKHOLE   `                  |
+-----------------------------------+-----------------------------------+
| `true  `                            | `CON(True)  `                   |
+-----------------------------------+-----------------------------------+
|` twentytwo     `                    | `CON(I 22) `                    |
+-----------------------------------+-----------------------------------+

# TODO make notes

- upd* main: update thunk main with value; update continuation
- thunk main gets replaced with a blackhole during evaluation
- f_? means the arity is unknown
- apply_2 means the arity is known
- (apply const true) is known function

# 


## Step 2: CALLK

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
|  `(* twentytwo)`                  | `const_? true`                    |
+-----------------------------------+-----------------------------------+
|  `upd * main`                     |                                   |
+-----------------------------------+-----------------------------------+

## Heap 

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
|`const  `                          | `FUN(x y -> x)  `               |
+-----------------------------------+-----------------------------------+
| `main   `                         | ` BLACKHOLE   `                  |
+-----------------------------------+-----------------------------------+
| `true    `                        |  `CON(True)   `                  |
+-----------------------------------+-----------------------------------+
| `twentytwo    `                   | ` CON(I 22) `                    |
+-----------------------------------+-----------------------------------+

# TODO: make speakernotes

- CALLK: call continuation pushed on stack, captures the excess arguments (twentytwo)
- const true are the arguments given to apply

#


## Step 3: PAP2

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
|  `(* twentytwo)`                  | `$0`                              |
+-----------------------------------+-----------------------------------+
|   `upd * main`                    |                                   |
+-----------------------------------+-----------------------------------+

## Heap 

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
| `$0      `                        |  `PAP(const true)    `           |
+-----------------------------------+-----------------------------------+
| ` const  `                        | `FUN(x y -> x)    `             |
+-----------------------------------+-----------------------------------+
|  `main  `                         | `BLACKHOLE    `                 |
+-----------------------------------+-----------------------------------+
| `true   `                         |  `CON(True)   `                  |
+-----------------------------------+-----------------------------------+
| ` twentytwo   `                   |  `CON(I 22)  `                   |
+-----------------------------------+-----------------------------------+

# TODO: Make this speakernotes

- PAP2: create new Partial application for const

#

## Step 4: RETFUN

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
| `upd * main`                      | `0_? twentytwo  `                 |
+-----------------------------------+-----------------------------------+

## Heap

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
| `$0                    `          | `PAP(const true)   `            |
+-----------------------------------+-----------------------------------+
| ` const              `            | ` FUN(x y -> x)   `              |
+-----------------------------------+-----------------------------------+
|  ` main            `              | ` BLACKHOLE      `               |
+-----------------------------------+-----------------------------------+
|  `true           `                | `CON(True)      `               |
+-----------------------------------+-----------------------------------+
|  ` twentytwo    `                 | `CON(I 22)    `                 |
+-----------------------------------+-----------------------------------+

# TODO: make this speakernotes

- RETFUN: returns a function value (here: $0 PAP) to a call continuation
- Call continuation is (* twentytwo) here
- "reactivates" call continuation

#

## Step 5: PCALL

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
| `upd * main`                      | `const_? true twentytwo`          |
+-----------------------------------+-----------------------------------+

## Heap 

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
| `const    `                       | `FUN(x y -> x)`                 |
+-----------------------------------+-----------------------------------+
| `main    `                        | `BLACKHOLE`                     |
+-----------------------------------+-----------------------------------+
| `true    `                        | `CON(True)`                     |
+-----------------------------------+-----------------------------------+
|  `twentytwo  `                    | `CON(I 22)`                     |
+-----------------------------------+-----------------------------------+

# TODO: Make this speakernotes

- PCALL: Unpack the PAP and apply `const true` to its new argument twentytwo
- const is a FUN now

# 

## Step 6: EXACT

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
| `upd * main`                      | `true`                            |
+-----------------------------------+-----------------------------------+

## Heap 
+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
| `main    `                        | `BLACKHOLE       `                |
+-----------------------------------+-----------------------------------+
| `true   `                         | `CON(True)    `                   |
+-----------------------------------+-----------------------------------+

# TODO: Make speakernotes

- EXACT: const now has exactly the number of arguments it needs
- returns true
- finally, main gets updated and the Blackhole removed

#


## Step 7: UPDATE

+-----------------------------------+-----------------------------------+
| Stack                             | Expression                        |
+-----------------------------------+-----------------------------------+
|                                   | `true     `                       |
+-----------------------------------+-----------------------------------+

## Heap 

+-----------------------------------+-----------------------------------+
| Variable                          | Object                            |
+-----------------------------------+-----------------------------------+
| `true `                           | `CON(True) `                      |
+-----------------------------------+-----------------------------------+

##

The computation has completed