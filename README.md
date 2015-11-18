# Haskell Language support

Support for the haskell programming language in visual studio code.

## Highlighting

Adds highlighting support for Haskell based on the [Haskell texmate bundle](https://github.com/textmate/haskell.tmbundle)

Also adds automatic indentation for common Haskell code style. (current regex: `((\b(if|then|else|do|of|let|in|where))|=|->|>>=|>=>|=<<|(^(data)( |\t)+(\w|')+( |\t)*))( |\t)*$`)

![Screenshot 1](./images/Screenshot 1.png)

## Snippets 

For some reason snippets currently don't work on my machine. Neither in the user snippets file, nor from the snippets file of this extension. I'll make sure the snippets work and are correct once I resolve this conflict. In the mean time I would very much appreciate any help in testing the current snippets and adding more.


## Roadmap

- More common haskell snippets
- Support for literate haskell (currently broken and disabled)