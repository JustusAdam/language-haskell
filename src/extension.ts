
import * as vscode from 'vscode'; 

export function activate(context: vscode.ExtensionContext) {


    vscode.languages.setLanguageConfiguration('haskell', {
		
        indentationRules: {
            // ^.*\{[^}"']*$
            increaseIndentPattern: /(\bif\b(?!')(.(?!then))*|\b(then|else|m?do|of|let|in|where)\b(?!')|=|->|>>=|>=>|=<<|(^(data)( |\t)+(\w|')+( |\t)*))( |\t)*$/,
            decreaseIndentPattern: null
        },
        wordPattern: /([\w'_][\w'_\d]*)|([0-9]+\.[0-9]+([eE][+-]?[0-9]+)?|[0-9]+[eE][+-]?[0-9]+)/
    })  	
}
