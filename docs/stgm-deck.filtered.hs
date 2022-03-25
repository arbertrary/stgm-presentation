[HorizontalRule
,Header 1 ("haskell",[],[]) [Str "Haskell"]
,Div ("",["box","columns","column"],[("width","30%")])
 [Header 2 ("section",["column"],[("width","30%")]) []
 ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"img/haskell.png\" alt=\"haskell.png\">"]
,Div ("",["box","columns","column"],[("width","50%")])
 [Header 2 ("section-1",["column"],[("width","50%")]) []
 ,BulletList
  [[Plain [Str "Search",Space,Str "for",Space,Str "a",Space,Quoted DoubleQuote [Str "common",Space,Str "functional",Space,Str "language"]]]
  ,[Plain [Str "1987-1989",Space,Str "commitee",Space,Str "meetings"]]
  ,[Plain [Str "1989",Space,Str "start",Space,Str "of",Space,Str "development,",Space,Str "1990",Space,Str "Haskell",Space,Str "version",Space,Str "1.0"]]
  ,[Plain [Str "Named",Space,Str "after",Space,Str "mathematician",Space,Str "Haskell",Space,Str "Curry"]]]
 ,Para [Emph [Str "A",Space,Str "history",Space,Str "of",Space,Str "Haskell:",Space,Str "being",Space,Str "lazy",Space,Str "with",Space,Str "class"],Space,Cite [Citation {citationId = "hudak2007history", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 1, citationHash = 0}] [Str "(Hudak",Space,Str "et",Space,Str "al.",Space,Str "2007)"]]]
,HorizontalRule
,Header 1 ("ghc",[],[]) [Str "GHC"]
,BulletList
 [[Plain [Str "Glasgow",Space,Str "Haskell",Space,Str "Compiler"]]
 ,[Plain [Str "Written",Space,Str "in",Space,Str "Haskell"]]
 ,[Plain [Str "Lead",Space,Str "Developers:"]
  ,BulletList
   [[Plain [Str "Simon",Space,Str "Peyton",Space,Str "Jones",Space,Str "(Microsoft",Space,Str "Research)"]]
   ,[Plain [Str "Simon",Space,Str "Marlow",Space,Str "(Facebook)"]]]]
 ,[Plain [Str "De",Space,Str "facto",Space,Str "default",Space,Str "Haskell",Space,Str "compiler"]]
 ,[Plain [Link ("",[],[]) [Str "https://gitlab.haskell.org/ghc/ghc/wikis/index"] ("https://gitlab.haskell.org/ghc/ghc/wikis/index","")]]]
,HorizontalRule
,Header 1 ("ghc-compilation-flow",[],[]) [Str "GHC",Space,Str "Compilation",Space,Str "Flow"]
,CodeBlock ("",["haskell"],[("style","font-size: large")]) "\n                                                                          +---------+\n                                                         LLVM backend /-->| LLVM IR |-\\\n                                                                      |   +---------+ | LLVM\n                                                                      |               v\n +------------+ Desugar  +------+ STGify  +-----+ CodeGen  +-----+    |  NCG    +----------+\n | Parse tree |--------->| Core |-------->| STG |--------->| C-- |----+-------->| Assembly |\n +------------+          +------+         +-----+          +-----+    |         +----------+\n                                                                      |            ^\n                                                                      |     +---+  | GCC\n                                                            C backend \\---->| C |--/\n                                                                            +---+\n"
,Para [Link ("",["small"],[]) [Str "https://gitlab.haskell.org/ghc/ghc/wikis/commentary/compiler/generated-code"] ("https://gitlab.haskell.org/ghc/ghc/wikis/commentary/compiler/generated-code","")]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,OrderedList (1,Decimal,Period)
 [[Plain [Str "Type",Space,Str "Checking,",Space,Str "parse",Space,Str "tree"]]
 ,[Plain [Str "intermediate",Space,Str "Core",Space,Str "language"]]
 ,[Plain [Str "STG",Space,Str "language"]]
 ,[Plain [Str "C",Space,Str "-",Space,Str "-"]]
 ,[Plain [Str "Assembly",Space,Str "through",Space,Str "NCG",Space,Str "(default),",Space,Str "LLVM",Space,Str "or",Space,Str "C"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("the-spineless-tagless-g-machine",[],[]) [Str "The",Space,Str "Spineless",Space,Str "Tagless",Space,Str "G-Machine"]
,Para [Str "Compiled",Space,Str "graph",Space,Str "reduction",Space,Str "machine",Space,Str "for",Space,Str "a",Space,Str "lazy",Space,Str "functional",Space,Str "language"]
,DefinitionList
 [([Cite [Citation {citationId = "jones1992implementing", citationPrefix = [], citationSuffix = [], citationMode = AuthorInText, citationNoteNum = 2, citationHash = 0}] [Str "Jones",Space,Str "(1992)"],Str ":"],
   [[Plain [Emph [Str "Implementing",Space,Str "lazy",Space,Str "functional",Space,Str "languages",Space,Str "on",Space,Str "stock",Space,Str "hardware:",Space,Str "the",Space,Str "Spineless",Space,Str "Tagless",Space,Str "G-machine"]]]])
 ,([Cite [Citation {citationId = "marlow2004making", citationPrefix = [], citationSuffix = [], citationMode = AuthorInText, citationNoteNum = 3, citationHash = 0}] [Str "Marlow",Space,Str "and",Space,Str "Jones",Space,Str "(2004)"],Str ":"],
   [[Plain [Emph [Str "Making",Space,Str "a",Space,Str "fast",Space,Str "curry:",Space,Str "push/enter",Space,Str "vs.\160eval/apply",Space,Str "for",Space,Str "higher-order",Space,Str "languages"]]]])
 ,([Cite [Citation {citationId = "marlow2007faster", citationPrefix = [], citationSuffix = [], citationMode = AuthorInText, citationNoteNum = 4, citationHash = 0}] [Str "Marlow,",Space,Str "Yakushev,",Space,Str "and",Space,Str "Peyton",Space,Str "Jones",Space,Str "(2007)"],Str ":"],
   [[Plain [Emph [Str "Faster",Space,Str "Laziness",Space,Str "Using",Space,Str "Dynamic",Space,Str "Pointer",Space,Str "Tagging"]]]])]
,HorizontalRule
,Header 1 ("other-examplespredecessors",[],[]) [Str "Other",Space,Str "examples/Predecessors"]
,BulletList
 [[Plain [Str "G-machine",Space,Cite [Citation {citationId = "johnsson1984efficient", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 5, citationHash = 0}] [Str "(Johnsson",Space,Str "1984)"]]]
 ,[Plain [Str "TIM:",Space,Str "Three",Space,Str "Instruction",Space,Str "Machine",Space,Cite [Citation {citationId = "fairbairn1987tim", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 6, citationHash = 0}] [Str "(Fairbairn",Space,Str "and",Space,Str "Wray",Space,Str "1987)"]]]]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "TIM",Space,Str "was",Space,Str "for",Space,Str "a",Space,Str "language",Space,Str "called",Space,Quoted DoubleQuote [Str "Ponder"]]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-4",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("spineless",[],[]) [Str "Spineless"]
 ,BulletList
  [[Plain [Str "STG",Space,Str "program",Space,Str "is",Space,Str "a",Space,Str "graph,",Space,Str "not",Space,Str "a",Space,Str "tree"]]
  ,[Plain [Str "Graph",Space,Str "not",Space,Str "represented",Space,Str "as",Space,Str "single",Space,Str "data",Space,Str "structure",Space,Str "in",Space,Str "memory"]]
  ,[Plain [Str "Small,",Space,Str "individual",Space,Str "parts",Space,Str "of",Space,Str "the",Space,Str "graph",Space,Str "that",Space,Str "reference",Space,Str "each",Space,Str "other"]]]]
,HorizontalRule
,Header 1 ("section-5",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("tagless",[],[]) [Str "Tagless"]
 ,RawBlock (Format "html") "<img class=\"decker\" data-src=\"img/wellyes.jpg\" alt=\"wellyes.jpg\" style=\"width:75%;\">"]
,HorizontalRule
,Header 1 ("section-6",[],[]) []
,DefinitionList
 [([Str "Tagless"],
   [[Plain [Str "Refers",Space,Str "to",Space,Str "how",Space,Str "a",Space,Str "heap",Space,Str "closure",Space,Str "is",Space,Str "evaluated"]]
   ,[Plain [Code ("",[],[]) "f x y = case x of (a,b) -> a+y"]]
   ,[Plain [Str "Before",Space,Str "taking",Space,Str "x",Space,Str "apart:",Space,Str "STGM",Space,Str "pushes",Space,Str "code",Space,Str "to",Space,Str "stack",Space,Str "and",Space,Str "jumps",Space,Str "to",Space,Str "entry",Space,Str "code",Space,Str "for",Space,Str "x"]]])
 ,([Str "TagFUL"],
   [[Plain [Str "Closure",Space,Str "to",Space,Str "evaluate",Space,Str "is",Space,Str "only",Space,Str "entered",Space,Str "if",Space,Str "its",Space,Str "tag",Space,Str "says",Space,Str "it",Space,Str "is",Space,Str "unevaluated"]]])]
,HorizontalRule
,Header 1 ("update-2007",[],[]) [Str "Update",Space,Str "2007"]
,Para [Emph [Str "Faster",Space,Str "Laziness",Space,Str "Using",Space,Str "Dynamic",Space,Str "Pointer",Space,Str "Tagging"],Space,Cite [Citation {citationId = "marlow2007faster", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 7, citationHash = 0}] [Str "(Marlow,",Space,Str "Yakushev,",Space,Str "and",Space,Str "Peyton",Space,Str "Jones",Space,Str "2007)"]]
,BulletList
 [[Plain [Str "Tagless",Space,Str "scheme",Space,Str "more",Space,Str "expensive",Space,Str "(additional",Space,Str "indirect",Space,Str "jumps)"]]
 ,[Plain [Emph [Str "Dynamic",Space,Str "pointer",Space,Str "tagging"],Str ":",Space,Str "using",Space,Str "spare",Space,Str "low",Space,Str "bits",Space,Str "of",Space,Str "a",Space,Str "pointer",Space,Str "to",Space,Str "encode",Space,Str "information",Space,Str "about",Space,Str "pointed-to",Space,Str "closure"]]]
,HorizontalRule
,Header 1 ("heap-object-structure",[],[]) [Str "Heap",Space,Str "object",Space,Str "structure"]
,RawBlock (Format "html") "<img class=\"decker\" data-src=\"img/table.png\" alt=\"table.png\">"
,Para [Str "Here:",Space,Str "every",Space,Str "heap",Space,Str "object",Space,Str "has",Space,Str "associated",Space,Str "entry",Space,Str "code.",Space,Str "Therefore",Space,Str "term",Space,Quoted DoubleQuote [Str "closure"],Space,Str "is",Space,Str "used",Space,Str "for",Space,Str "any",Space,Str "heap",Space,Str "object"]
,HorizontalRule
,Header 1 ("section-7",[],[]) []
,DefinitionList
 [([Str "Closure"],
   [[Plain [Str "Block",Space,Str "of",Space,Str "static",Space,Str "code",Space,Str "together",Space,Str "with",Space,Str "values",Space,Str "of",Space,Str "its",Space,Str "free",Space,Str "variables.",Space,Str "Physical",Space,Str "representation",Space,Str "of",Space,Str "such",Space,Str "a",Space,Str "closure",Space,Str "is",Space,Str "a",Space,Str "pointer",Space,Str "to",Space,Str "a",Space,Str "contiguous",Space,Str "block",Space,Str "of",SoftBreak,Str "heap-allocated",Space,Str "storage"]]])
 ,([Str "Thunk"],
   [[Plain [Str "Suspended",Space,Str "computation.",Space,Str "In",Space,Str "a",Space,Str "non-strict",Space,Str "language,",Space,Str "values",Space,Str "are",Space,Str "passed",Space,Str "in",Space,Str "unevaluated",Space,Str "form,",Space,Str "and",Space,Str "only",Space,Str "evaluated",Space,Str "when",Space,Str "their",Space,Str "value",Space,Str "is",Space,Str "actually",Space,Str "required.",Space,Str "These",Space,Str "unevaluated",Space,Str "forms",Space,Str "capture",Space,Str "a",Space,Str "suspended",Space,Str "computation",Space,Str "and",Space,Str "can",Space,Str "be",Space,Str "represented",Space,Str "by",Space,Str "a",Space,Str "closure",Space,Str "in",Space,Str "the",Space,Str "same",Space,Str "way",Space,Str "as",Space,Str "a",Space,Str "function",Space,Str "value.",Space,Str "When",Space,Str "a",Space,Str "thunk",Space,Str "is",Space,Str "forced",Space,Str "for",Space,Str "the",Space,Str "first",Space,Str "time,",Space,Str "it",Space,Str "is",Space,Str "physically",Space,Str "updated",Space,Str "with",Space,Str "its",Space,Str "value"]]])]
,Para [Cite [Citation {citationId = "jones1992implementing", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 8, citationHash = 0}] [Str "(Jones",Space,Str "1992)"]]
,HorizontalRule
,Header 1 ("saturated-calls",[],[]) [Str "Saturated",Space,Str "Calls"]
,CodeBlock ("",["haskell"],[]) "f :: Int -> Int -> Int\nf x y = x*y"
,Div ("",["box","columns"],[])
 [Header 2 ("section-8",[],[]) []
 ,BulletList
  [[Plain [Code ("",[],[]) "(f 3 4)",Space,Str "is",Space,Str "a",Space,Str "call",Space,Str "to",Space,Str "a",Space,Strong [Str "known",Space,Str "function"],Space,Str "(saturated",Space,Str "call)"]]
  ,[Plain [Str "Compiler",Space,Str "simply",Space,Str "loads",Space,Str "arguments",Space,Str "and",Space,Str "calls",Space,Str "code",Space,Str "for",Space,Code ("",[],[]) "f",Space,Str "directly"]]
  ,[Plain [Str "What",Space,Str "happens",Space,Str "with",Space,Quoted DoubleQuote [Str "unknown"],Space,Str "functions?"]]]]
,HorizontalRule
,Header 1 ("example",[],[]) [Str "Example"]
,CodeBlock ("",["haskell"],[("style","font-size: x-large")]) "zipWith :: (a -> b -> c) -> [a] -> [b] -> [c]\nzipWith k [] [] = []\nzipWith k (x:xs) (y:ys) = k x y : zipWith k xs ys"
,Div ("",["box","columns"],[])
 [Header 2 ("section-9",[],[]) []
 ,BulletList
  [[Plain [Str "k",Space,Str "is",Space,Str "an",Space,Strong [Str "unknown",Space,Str "function"]]
   ,BulletList
    [[Plain [Str "Might",Space,Str "take",Space,Str "one",Space,Str "argument,",Space,Str "compute",Space,Str "for",Space,Str "a",Space,Str "while",Space,Str "and",Space,Str "return",Space,Str "function",Space,Str "that",Space,Str "consumes",Space,Str "next",Space,Str "argument"]]
    ,[Plain [Str "Might",Space,Str "take",Space,Str "three",Space,Str "arguments,",Space,Str "so",Space,Str "that",Space,Str "result",Space,Str "of",Space,Code ("",[],[]) "zipWith",Space,Str "is",Space,Str "list",Space,Str "of",Space,Str "functions"]]]]]]
,HorizontalRule
,Header 1 ("pushenter-vs-evalapply",[],[]) [Str "Push/Enter",Space,Str "vs",Space,Str "Eval/Apply"]
,Div ("",["box","columns"],[])
 [Header 2 ("section-10",[],[]) []
 ,DefinitionList
  [([Str "Push/Enter"],
    [[Plain [Str "The",Space,Str "function",Space,Str "which",Space,Str "statically",Space,Str "knows",Space,Str "its",Space,Str "own",Space,Str "arity",Space,Str "examines",Space,Str "the",Space,Str "stack",Space,Str "to",Space,Str "figure",Space,Str "out",Space,Str "how",Space,Str "many",Space,Str "arguments",Space,Str "it",Space,Str "has",Space,Str "been",Space,Str "passed",Space,Str "and",Space,Str "where",Space,Str "they",Space,Str "are."]]])]]
,Div ("",["box","columns"],[])
 [Header 2 ("section-11",[],[]) []
 ,DefinitionList
  [([Str "Eval/Apply"],
    [[Plain [Str "The",Space,Str "caller",Space,Str "which",Space,Str "statically",Space,Str "knows",Space,Str "what",Space,Str "the",Space,Str "arguments",Space,Str "are",Space,Str "examines",Space,Str "the",Space,Str "function",Space,Str "closure,",Space,Str "extracts",Space,Str "its",Space,Str "arity",Space,Str "and",Space,Str "makes",Space,Str "an",Space,Str "exact",Space,Str "call",Space,Str "to",Space,Str "the",Space,Str "function."]]])]
 ,Para [Cite [Citation {citationId = "marlow2004making", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 9, citationHash = 0}] [Str "(Marlow",Space,Str "and",Space,Str "Jones",Space,Str "2004)"]]]
,HorizontalRule
,Header 1 ("the-stg-language-syntax",[],[]) [Str "The",Space,Str "STG",Space,Str "Language",Space,Str "(Syntax)"]
,Div ("",["box","columns"],[])
 [Header 2 ("expressions",[],[]) [Str "Expressions"]
 ,CodeBlock ("",["haskell"],[("style","font-size: large")]) "e ::= a\n    | f a1 ... an                   (function call (n >= 1))\n    ...\n    | let x = obj in e    \n    | case e of {alt1; ...; altn}   (n >= 1)"]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-objects",[],[]) [Str "Heap",Space,Str "objects"]
 ,CodeBlock ("",["haskell"],[("style","font-size: large")]) "obj ::= FUN(x1 ... xn -> e)   (Function: arity = n >=1\n      | PAP(f a1 ... an)      (Partial application: \n                              f is always a FUN with arity(f) > n >= 1)\n      | CON(C a1 ... an)      (Saturated constructor n >= 0)\n      | THUNK e\n      | BLACKHOLE             (only during evaluation)"]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "let",Space,Str "expression",Space,Str "allocates",Space,Str "object",Space,Str "in",Space,Str "the",Space,Str "heap"]]
 ,[Plain [Math InlineMath "FUN(x_1 ... x_n -> e)"]
  ,BulletList
   [[Plain [Str "function",Space,Str "closure",Space,Str "with",Space,Str "arguments",Space,Math InlineMath "x_i",Space,Str "and",Space,Str "body",Space,Math InlineMath "e"]]
   ,[Plain [Str "function",Space,Str "is",Space,Str "curried",Space,Str "(may",Space,Str "be",Space,Str "applied",Space,Str "to",Space,Str "less",Space,Str "than",Space,Str "n",Space,Str "or",Space,Str "more",Space,Str "than",Space,Str "n",Space,Str "arguments)",Space,Str "but",Space,Str "still",Space,Str "has",Space,Str "arity",Space,Str "of",Space,Str "n"]]]]
 ,[Plain [Math InlineMath "PAP(f~a_1 ... a_n)"]
  ,BulletList
   [[Plain [Str "Partial",Space,Str "application",Space,Str "of",Space,Str "f",Space,Str "to",Space,Str "arguments",Space,Str "a1\8230an;",Space,Str "f",Space,Str "is",Space,Str "guaranteed",Space,Str "to",Space,Str "be",Space,Str "FUN",Space,Str "object,",Space,Str "arity",Space,Str "of",Space,Str "FUN",Space,Str "is",Space,Str "guaranteed",Space,Str "to",Space,Str "be",Space,Str ">n"]]]]
 ,[Plain [Math InlineMath "CON(C~a_1 ... a_n)",Str ":",Space,Str "data",Space,Str "value;",Space,Str "saturated",Space,Str "application",Space,Str "of",Space,Str "constructor",Space,Str "C",Space,Str "to",Space,Str "arguments"]]
 ,[Plain [Math InlineMath "THUNK~e",Str ":",Space,Str "a",Space,Str "thunk,",Space,Str "or",Space,Str "suspension.",Space,Str "When",Space,Str "its",Space,Str "value",Space,Str "is",Space,Str "needed,",Space,Str "e",Space,Str "is",Space,Str "evalu-",SoftBreak,Str "ated,",Space,Str "and",Space,Str "the",Space,Str "thunk",Space,Str "overwritten",Space,Str "with",Space,Str "(an",Space,Str "indire",SoftBreak,Str "tion",Space,Str "to)",Space,Str "the",Space,Str "value",Space,Str "of",Space,Str "e"]]
 ,[Plain [Math InlineMath "BLACKHOLE",Str ":",Space,Str "used",Space,Str "only",Space,Str "during",Space,Str "evaluation",Space,Str "of",Space,Str "thunk;",Space,Str "replaces",Space,Str "thunk",Space,Str "to",Space,Str "avoid",Space,Str "space",Space,Str "leaks"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("example-map",[],[]) [Str "Example:",Space,Str "map"]
,Div ("",["box","columns"],[])
 [Header 2 ("haskell-1",[],[]) [Str "Haskell"]
 ,CodeBlock ("",["haskell"],[("style","font-size: large")]) "map f [] = []\nmap f (x:xs) = f x : map f xs"]
,Div ("",["box","columns"],[])
 [Header 2 ("stg",[],[]) [Str "STG"]
 ,CodeBlock ("",["haskell"],[("style","font-size: large")]) "nil = CON Nil\n\nmap = FUN (f xs ->\n        case xs of\n          Nil -> nil\n          Cons y ys -> let h = THUNK (f y)\n                           t = THUNK (map f ys)\n                           r = CON (Cons h t)\n                        in r\n     )"]
,HorizontalRule
,Header 1 ("ministg",[],[]) [Str "Ministg"]
,BulletList
 [[Plain [Link ("",[],[]) [Str "https://github.com/bjpop/ministg"] ("https://github.com/bjpop/ministg","")]]
 ,[Plain [Str "STG",Space,Str "interpreter",Space,Str "written",Space,Str "in",Space,Str "Haskell"]]
 ,[Plain [Str "Provides",Space,Str "insight",Space,Str "in",Space,Str "STG",Space,Str "language",Space,Str "evaluation"]]
 ,[Plain [Str "Optional",Space,Str "tracing",Space,Str "of",Space,Str "program",Space,Str "execution"]]]
,Div ("",["box","columns"],[])
 [Header 2 ("alternative-to-ministg",[],[]) [Quoted DoubleQuote [Str "Alternative"],Space,Str "to",Space,Str "ministg"]
 ,BulletList
  [[Plain [Str "stgi"]]
  ,[Plain [Link ("",[],[]) [Str "https://github.com/quchen/stgi"] ("https://github.com/quchen/stgi","")]]
  ,[Plain [Str "Also",Space,Str "STG",Space,Str "interpreter",Space,Str "but",Space,Str "based",Space,Str "on",Space,Cite [Citation {citationId = "jones1992implementing", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 10, citationHash = 0}] [Str "(Jones",Space,Str "1992)"]]]]]
,HorizontalRule
,Header 1 ("example-1",[],[]) [Str "Example"]
,Div ("",["box","columns"],[])
 [Header 2 ("program-apply.stg",[],[]) [Str "Program:",Space,Str "apply.stg"]
 ,CodeBlock ("",["haskell"],[]) "const = FUN(x y -> x);\napply = FUN(f x -> f x);\n\ntwentytwo = CON(I 22);\nmain = THUNK(apply const true twentytwo)"]
,Div ("",["box","columns"],[])
 [Header 2 ("output",[],[]) [Str "Output"]
 ,CodeBlock ("",["haskell"],[]) "true"]
,HorizontalRule
,Header 1 ("evalapply-trace",[],[]) [Str "Eval/Apply",Space,Str "Trace"]
,DefinitionList
 [([Str "Expression"],
   [[Plain [Str "Code",Space,Str "that",Space,Str "is",Space,Str "under",Space,Str "evaluation"]]])
 ,([Str "Stack"],
   [[Plain [Str "Stack",Space,Str "of",Space,Str "continuations.",Space,Str "What",Space,Str "to",Space,Str "do",Space,Str "when",Space,Str "current",Space,Str "expression",Space,Str "is",Space,Str "evaluated"]]])
 ,([Str "Heap"],
   [[Plain [Str "Finite",Space,Str "mapping",Space,Str "from",Space,Str "variables",Space,Str "to",Space,Str "heap",Space,Str "objects"]]])]
,HorizontalRule
,Header 1 ("section",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-0",[],[]) [Str "Step",Space,Str "0"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     []
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "apply"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(f x -> f_? x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(x y -> x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "THUNK(apply_2 const true twentytwo)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "twentytwo"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(I 22)"]]]])]
  (TableFoot ("",[],[])
  [])]
,HorizontalRule
,Header 1 ("section-1",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-1-thunk-most-recent-rule-applied",[],[]) [Str "Step",Space,Str "1:",Space,Str "THUNK",Space,Str "(most",Space,Str "recent",Space,Str "rule",Space,Str "applied)"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "upd * main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "apply_2 const true twentytwo"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-1",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "apply"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(f x -> f_? x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [LineBlock
      [[Code ("",[],[]) "FUN(x y -> x)"]]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [LineBlock
      [[Code ("",[],[]) "BLACKHOLE"]]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [LineBlock
      [[Code ("",[],[]) "CON(True)"]]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "twentytwo"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [LineBlock
      [[Code ("",[],[]) "CON(I 22)"]]]]])]
  (TableFoot ("",[],[])
  [])]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "upd*",Space,Str "main:",Space,Str "update",Space,Str "thunk",Space,Str "main",Space,Str "with",Space,Str "value;",Space,Str "update",Space,Str "continuation"]]
 ,[Plain [Str "thunk",Space,Str "main",Space,Str "gets",Space,Str "replaced",Space,Str "with",Space,Str "a",Space,Str "blackhole",Space,Str "during",Space,Str "evaluation"]]
 ,[Plain [Str "f_?",Space,Str "means",Space,Str "the",Space,Str "arity",Space,Str "is",Space,Str "unknown"]]
 ,[Plain [Str "apply_2",Space,Str "means",Space,Str "the",Space,Str "arity",Space,Str "is",Space,Str "known"]]
 ,[Plain [Str "(apply",Space,Str "const",Space,Str "true)",Space,Str "is",Space,Str "known",Space,Str "function"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-3",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-2-callk",[],[]) [Str "Step",Space,Str "2:",Space,Str "CALLK"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "(* twentytwo)"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const_? true"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "upd * main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     []]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-2",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(x y -> x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "BLACKHOLE"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "twentytwo"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(I 22)"]]]])]
  (TableFoot ("",[],[])
  [])]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "CALLK:",Space,Str "call",Space,Str "continuation",Space,Str "pushed",Space,Str "on",Space,Str "stack,",Space,Str "captures",Space,Str "the",Space,Str "excess",Space,Str "arguments",Space,Str "(twentytwo)"]]
 ,[Plain [Str "const",Space,Str "true",Space,Str "are",Space,Str "the",Space,Str "arguments",Space,Str "given",Space,Str "to",Space,Str "apply"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-5",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-3-pap2",[],[]) [Str "Step",Space,Str "3:",Space,Str "PAP2"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "(* twentytwo)"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "$0"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "upd * main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     []]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-3",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "$0"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "PAP(const true)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(x y -> x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "BLACKHOLE"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "twentytwo"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(I 22)"]]]])]
  (TableFoot ("",[],[])
  [])]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "PAP2:",Space,Str "create",Space,Str "new",Space,Str "Partial",Space,Str "application",Space,Str "for",Space,Str "const"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-7",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-4-retfun",[],[]) [Str "Step",Space,Str "4:",Space,Str "RETFUN"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "upd * main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "0_? twentytwo"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-4",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "$0"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "PAP(const true)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(x y -> x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "BLACKHOLE"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "twentytwo"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(I 22)"]]]])]
  (TableFoot ("",[],[])
  [])]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "RETFUN:",Space,Str "returns",Space,Str "a",Space,Str "function",Space,Str "value",Space,Str "(here:",Space,Str "$0",Space,Str "PAP)",Space,Str "to",Space,Str "a",Space,Str "call",Space,Str "continuation"]]
 ,[Plain [Str "Call",Space,Str "continuation",Space,Str "is",Space,Str "(*",Space,Str "twentytwo)",Space,Str "here"]]
 ,[Plain [Quoted DoubleQuote [Str "reactivates"],Space,Str "call",Space,Str "continuation"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-9",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-5-pcall",[],[]) [Str "Step",Space,Str "5:",Space,Str "PCALL"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "upd * main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const_? true twentytwo"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-5",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "const"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "FUN(x y -> x)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "BLACKHOLE"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "twentytwo"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(I 22)"]]]])]
  (TableFoot ("",[],[])
  [])]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "PCALL:",Space,Str "Unpack",Space,Str "the",Space,Str "PAP",Space,Str "and",Space,Str "apply",Space,Code ("",[],[]) "const true",Space,Str "to",Space,Str "its",Space,Str "new",Space,Str "argument",Space,Str "twentytwo"]]
 ,[Plain [Str "const",Space,Str "is",Space,Str "a",Space,Str "FUN",Space,Str "now"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-11",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-6-exact",[],[]) [Str "Step",Space,Str "6:",Space,Str "EXACT"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "upd * main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-6",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "main"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "BLACKHOLE"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]])]
  (TableFoot ("",[],[])
  [])]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "EXACT:",Space,Str "const",Space,Str "now",Space,Str "has",Space,Str "exactly",Space,Str "the",Space,Str "number",Space,Str "of",Space,Str "arguments",Space,Str "it",Space,Str "needs"]]
 ,[Plain [Str "returns",Space,Str "true"]]
 ,[Plain [Str "finally,",Space,Str "main",Space,Str "gets",Space,Str "updated",Space,Str "and",Space,Str "the",Space,Str "Blackhole",Space,Str "removed"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("section-13",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("step-7-update",[],[]) [Str "Step",Space,Str "7:",Space,Str "UPDATE"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Stack"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Expression"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     []
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("heap-7",[],[]) [Str "Heap"]
 ,Table ("",[],[]) (Caption Nothing
  [])
  [(AlignDefault,ColWidth 0.45)
  ,(AlignDefault,ColWidth 0.45)]
  (TableHead ("",[],[])
  [])
  [(TableBody ("",[],[]) (RowHeadColumns 0)
   []
   [Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Variable"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Str "Object"]]]
   ,Row ("",[],[])
    [Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "true"]]
    ,Cell ("",[],[]) AlignDefault (RowSpan 1) (ColSpan 1)
     [Plain [Code ("",[],[]) "CON(True)"]]]])]
  (TableFoot ("",[],[])
  [])]
,Div ("",["box","columns"],[])
 [Header 2 ("section-14",[],[]) []
 ,Para [Str "The",Space,Str "computation",Space,Str "has",Space,Str "completed"]]
,HorizontalRule
,Header 1 ("pushenter-trace",[],[]) [Str "Push/Enter",Space,Str "Trace"]
,Para [Link ("",["resource"],[("target","_blank")]) [Str "html"] ("trace/trace_pe/step0.html","")]
,Para [Link ("",["resource"],[]) [] ("trace/trace_pe/step1.html",""),SoftBreak,Link ("",["resource"],[]) [] ("trace/trace_pe/step2.html",""),SoftBreak,Link ("",["resource"],[]) [] ("trace/trace_pe/step3.html",""),SoftBreak,Link ("",["resource"],[]) [] ("trace/trace_pe/step4.html",""),SoftBreak,Link ("",["resource"],[]) [] ("trace/trace_pe/step5.html",""),SoftBreak,Link ("",["resource"],[]) [] ("trace/trace_pe/step6.html",""),SoftBreak,Link ("",["resource"],[]) [] ("trace/trace_pe/step7.html","")]
,RawBlock (Format "html") "<aside class=\"notes\">"
,Header 2 ("",[],[]) []
,BulletList
 [[Plain [Str "First",Space,Str "step",Space,Str "more",Space,Str "or",Space,Str "less",Space,Str "the",Space,Str "same,",Space,Str "main",Space,Str "is",Space,Str "a",Space,Str "thunk",Space,Str "that",Space,Str "gets",Space,Str "replaced",Space,Str "with",Space,Str "a",Space,Str "BH",Space,Str "during",Space,Str "eval"]]
 ,[Plain [Str "all",Space,Str "arguments",Space,Str "to",Space,Str "apply",Space,Str "get",Space,Str "pushed",Space,Str "on",Space,Str "stack"]]
 ,[Plain [Str "FENTER:",Space,Str "(eintritt",Space,Str "in",Space,Str "die",Space,Str "argumente",Space,Str "zu",Space,Str "apply)"]]
 ,[Plain [Str "PUSH:",Space,Str "alle",Space,Str "argumente",Space,Str "an",Space,Str "const",Space,Str "werden",Space,Str "auf",Space,Str "den",Space,Str "stack",Space,Str "gepusht"]]
 ,[Plain [Str "FENTER:",Space,Str "in",Space,Str "const,",Space,Str "const",Space,Str "nimmt",Space,Str "exakt",Space,Str "zwei",Space,Str "argumente",Space,Str "und",Space,Str "exakt",Space,Str "soviele",Space,Str "sind",Space,Str "im",Space,Str "stack"]]
 ,[Plain [Str "true",Space,Str "bleibt",Space,Str "zur\252ck"]]
 ,[Plain [Str "Update:",Space,Str "main",Space,Str "blackhole",Space,Str "wird",Space,Str "mit",Space,Str "wert",Space,Str "upgedated"]]]
,RawBlock (Format "html") "</aside>"
,HorizontalRule
,Header 1 ("comparison",[],[]) [Str "Comparison"]
,Div ("",["box","columns"],[])
 [Header 2 ("pro-evalapply",[],[]) [Str "Pro",Space,Str "Eval/Apply"]
 ,BulletList
  [[Plain [Str "When",Space,Str "calling",Space,Str "unknown",Space,Str "function",Space,Str "with",Space,Str "right",Space,Str "number",Space,Str "of",Space,Str "arguments,",Space,Str "arguments",Space,Str "can",Space,Str "be",Space,Str "passed",Space,Str "in",Space,Str "registers",Space,Str "rather",Space,Str "than",Space,Str "on",Space,Str "stack.",Space,Str "For",Space,Str "registerrich",Space,Str "architecture",Space,Str "strongest",Space,Str "reason",Space,Str "for",Space,Str "e/a.",Space,Str "p/e",Space,Str "forces",Space,Str "arguments",Space,Str "to",Space,Str "unknown",Space,Str "functions",Space,Str "to",Space,Str "be",Space,Str "passed",Space,Str "on",Space,Str "the",Space,Str "stack"]]
  ,[Plain [Str "Easier",Space,Str "to",Space,Str "map",Space,Str "to",Space,Str "portable",Space,Str "assembly",Space,Str "language",Space,Str "such",Space,Str "as",Space,Str "C",Space,Str "or",Space,Str "C",Space,Str "-",Space,Str "-"]]
  ,[Plain [Str "No",Space,Str "need",Space,Str "to",Space,Str "distinguish",Space,Str "return",Space,Str "addresses",Space,Str "from",Space,Str "heap",Space,Str "pointers.",Space,Str "(",Quoted DoubleQuote [Str "This",Space,Str "is",Space,Str "a",Space,Str "big",Space,Str "win"],Space,Cite [Citation {citationId = "marlow2004making", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 11, citationHash = 0}] [Str "(Marlow",Space,Str "and",Space,Str "Jones",Space,Str "2004)"],Str ")"]]
  ,[Plain [Str "No",Space,Str "tagging",Space,Str "for",Space,Str "non-pointers"]]]]
,HorizontalRule
,Header 1 ("section-14",[],[]) []
,Div ("",["box","columns"],[])
 [Header 2 ("pro-pushenter",[],[]) [Str "Pro",Space,Str "Push/Enter"]
 ,BulletList
  [[Plain [Str "Appears",Space,Str "to",Space,Str "be",Space,Str "natural",Space,Str "fit",Space,Str "with",Space,Str "currying"]]
  ,[Plain [Str "Eliminates",Space,Str "some",Space,Str "PAP",Space,Str "allocations",Space,Str "compared",Space,Str "to",Space,Str "e/a"]]
  ,[Plain [Str "payload",Space,Str "of",Space,Str "PAP",Space,Str "object",Space,Str "can",Space,Str "be",Space,Str "self-describing",Space,Str "because",Space,Str "arguments",Space,Str "are",Space,Str "tagged.",Space,Str "In",Space,Str "contrast,",Space,Str "an",Space,Str "e/a",Space,Str "PAP",Space,Str "object",Space,Str "relies",Space,Str "on",Space,Str "its",Space,Str "FUN",Space,Str "to",Space,Str "describe",Space,Str "the",Space,Str "layout",Space,Str "of",Space,Str "he",Space,Str "payload.",Space,Str "this",Space,Str "results",Space,Str "in",Space,Str "some",Space,Str "extra",Space,Str "complication",Space,Str "in",Space,Str "the",Space,Str "garbage",Space,Str "collector",Space,Str "and",Space,Str "an",Space,Str "extra",Space,Str "global",Space,Str "invariant:",Space,Str "a",Space,Str "PAP",Space,Str "must",Space,Str "contain",Space,Str "a",Space,Str "FUN.",Space,Str "cannot",Space,Str "contain",Space,Str "another",Space,Str "PAP"]]]]
,HorizontalRule
,Header 1 ("conclusion",[],[]) [Str "Conclusion"]
,BulletList
 [[Plain [Str "It",Space,Str "is",Space,Str "impossible",Space,Str "to",Space,Str "a",Space,Str "rational",Space,Str "conclusion",Space,Str "about",Space,Str "performance",Space,Str "based",Space,Str "on",Space,Str "just",Space,Str "the",Space,Str "differences",Space,Str "between",Space,Str "the",Space,Str "models"]]
 ,[Plain [Str "Push/Enter",Space,Str "seems",Space,Str "to",Space,Str "be",Space,Str "natural",Space,Str "fit",Space,Str "with",Space,Str "currying"]]
 ,[Plain [Str "Eval/Apply",Space,Str "seems",Space,Str "to",Space,Str "have",Space,Str "decisive",Space,Str "advantages",Space,Str "in",Space,Str "terms",Space,Str "of",Space,Str "complexity"]]
 ,[Plain [Str "Easier",Space,Str "to",Space,Str "map",Space,Str "code",Space,Str "to",Space,Str "portable",Space,Str "assembly",Space,Str "language",Space,Str "with",Space,Str "E/A"]]
 ,[Plain [Str "Bottom",Space,Str "Line:",Space,Str "If",Space,Str "Eval/Apply",Space,Str "is",Space,Str "no",Space,Str "more",Space,Str "expensive",Space,Str "than",Space,Str "push/enter",Space,Str "it",Space,Str "is",Space,Str "definitely",Space,Str "to",Space,Str "be",Space,Str "preferred"]]
 ,[Plain [Str "Performance",Space,Str "measuring",Space,Str "shows:",Space,Str "Eval/Apply",Space,Str "is",Space,Str "better"]]]
,Para [Cite [Citation {citationId = "marlow2004making", citationPrefix = [], citationSuffix = [], citationMode = NormalCitation, citationNoteNum = 12, citationHash = 0}] [Str "(Marlow",Space,Str "and",Space,Str "Jones",Space,Str "2004)"]]
,HorizontalRule
,Header 1 ("section-15",["unnumbered"],[]) []
,Div ("refs",["references","csl-bib-body","hanging-indent"],[])
 [Div ("ref-fairbairn1987tim",["csl-entry"],[])
  [Para [Str "Fairbairn,",Space,Str "Jon,",Space,Str "and",Space,Str "Stuart",Space,Str "Wray.",Space,Str "1987.",Space,Span ("",[],[]) [Str "\8220",Str "TIM:",Space,Str "A",Space,Str "Simple,",Space,Str "Lazy",Space,Str "Abstract",Space,Str "Machine",Space,Str "to",Space,Str "Execute",Space,Str "Supercombinators",Str ".",Str "\8221"],Space,Str "In",Space,Emph [Str "Conference",Space,Str "on",Space,Str "Functional",Space,Str "Programming",Space,Str "Languages",Space,Str "and",Space,Str "Computer",Space,Str "Architecture"],Str ",",Space,Str "34\8211\&45.",Space,Str "Springer."]]
 ,Div ("ref-hudak2007history",["csl-entry"],[])
  [Para [Str "Hudak,",Space,Str "Paul,",Space,Str "John",Space,Str "Hughes,",Space,Str "Simon",Space,Str "Peyton",Space,Str "Jones,",Space,Str "and",Space,Str "Philip",Space,Str "Wadler.",Space,Str "2007.",Space,Span ("",[],[]) [Str "\8220",Str "A",Space,Str "History",Space,Str "of",Space,Str "Haskell:",Space,Str "Being",Space,Str "Lazy",Space,Str "with",Space,Str "Class",Str ".",Str "\8221"],Space,Str "In",Space,Emph [Str "Proceedings",Space,Str "of",Space,Str "the",Space,Str "Third",Space,Str "ACM",Space,Str "SIGPLAN",Space,Str "Conference",Space,Str "on",Space,Str "History",Space,Str "of",Space,Str "Programming",Space,Str "Languages"],Str ",",Space,Str "12\8211\&11.",Space,Str "ACM."]]
 ,Div ("ref-johnsson1984efficient",["csl-entry"],[])
  [Para [Str "Johnsson,",Space,Str "Thomas.",Space,Str "1984.",Space,Emph [Str "Efficient",Space,Str "Compilation",Space,Str "of",Space,Str "Lazy",Space,Str "Evaluation"],Str ".",Space,Str "Vol.",Space,Str "19.",Space,Str "6.",Space,Str "ACM."]]
 ,Div ("ref-jones1992implementing",["csl-entry"],[])
  [Para [Str "Jones,",Space,Str "Simon",Space,Str "L",Space,Str "Peyton.",Space,Str "1992.",Space,Span ("",[],[]) [Str "\8220",Str "Implementing",Space,Str "Lazy",Space,Str "Functional",Space,Str "Languages",Space,Str "on",Space,Str "Stock",Space,Str "Hardware:",Space,Str "The",Space,Str "Spineless",Space,Str "Tagless",Space,Str "g-Machine",Str ".",Str "\8221"],Space,Emph [Str "Journal",Space,Str "of",Space,Str "Functional",Space,Str "Programming"],Space,Str "2",Space,Str "(2).",Space,Str "Cambridge",Space,Str "University",Space,Str "Press:",Space,Str "127\8211\&202."]]
 ,Div ("ref-marlow2004making",["csl-entry"],[])
  [Para [Str "Marlow,",Space,Str "Simon,",Space,Str "and",Space,Str "Simon",Space,Str "Peyton",Space,Str "Jones.",Space,Str "2004.",Space,Span ("",[],[]) [Str "\8220",Str "Making",Space,Str "a",Space,Str "Fast",Space,Str "Curry:",Space,Str "Push/Enter",Space,Str "Vs.",Space,Str "Eval/Apply",Space,Str "for",Space,Str "Higher-Order",Space,Str "Languages",Str ".",Str "\8221"],Space,Str "In",Space,Emph [Str "ACM",Space,Str "SIGPLAN",Space,Str "Notices"],Str ",",Space,Str "39:4\8211\&15.",Space,Str "9.",Space,Str "ACM."]]
 ,Div ("ref-marlow2007faster",["csl-entry"],[])
  [Para [Str "Marlow,",Space,Str "Simon,",Space,Str "Alexey",Space,Str "Rodriguez",Space,Str "Yakushev,",Space,Str "and",Space,Str "Simon",Space,Str "Peyton",Space,Str "Jones.",Space,Str "2007.",Space,Span ("",[],[]) [Str "\8220",Str "Faster",Space,Str "Laziness",Space,Str "Using",Space,Str "Dynamic",Space,Str "Pointer",Space,Str "Tagging",Str ".",Str "\8221"],Space,Str "In",Space,Emph [Str "Acm",Space,Str "Sigplan",Space,Str "Notices"],Str ",",Space,Str "42:277\8211\&88.",Space,Str "9.",Space,Str "ACM."]]]]