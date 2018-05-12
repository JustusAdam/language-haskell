# Test file to see if Haskell is embedded in markdown


```hs
class MyClass a where
    aMethod :: a -> String

main :: IO ()
main = putStrLn "Hello World"
```

```haskell
class MyClass a where
    aMethod :: a -> String

main :: IO ()
main = putStrLn "Hello World"
```


```lhs
\begin{document}
The surrounding stuff should be comments or perhaps even \LaTeX
> class MyClass a where
>     aMethod :: a -> String

> main :: IO ()
> main = putStrLn "Hello World"
\end{document}
```

```literate-haskell
\begin{document}
The surrounding stuff should be comments or perhaps even \LaTeX
> class MyClass a where
>     aMethod :: a -> String

> main :: IO ()
> main = putStrLn "Hello World"
\end{document}
```

```cabal
name: test
version: 0.5.6.7
library
    build-depends: 
          base == 5.0 || >= 3.0
        , mtl
    default-extensions:
        OverloadedStrings
```
