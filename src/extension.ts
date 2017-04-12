
import * as vscode from 'vscode'; 

export function activate(context: vscode.ExtensionContext) {


    vscode.languages.setLanguageConfiguration('haskell', {
		
		indentationRules: {
			// ^.*\{[^}"']*$
			increaseIndentPattern: /((\b(if\b.*|then|else|do|of|let|in|where))|=|->|>>=|>=>|=<<|(^(data)( |\t)+(\w|')+( |\t)*))( |\t)*$/,
			decreaseIndentPattern: null
		}
    })  	
}
