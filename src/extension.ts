
import * as vscode from 'vscode'; 

export function activate(context: vscode.ExtensionContext) {


    vscode.languages.setLanguageConfiguration('haskell', {
		
		indentationRules: {
			// I dont know what to put here ...
			decreaseIndentPattern: /[\]})][ \t]*$/m,
			// ^.*\{[^}"']*$
			increaseIndentPattern: /((\b(if\b.*|then|else|do|of|let|in|where))|=|->|>>=|>=>|=<<|(^(data)( |\t)+(\w|')+( |\t)*))( |\t)*$/
		},		
		
		comments: {
			lineComment: '--',
			blockComment: ['{-', '-}']
		},
		
		brackets: [
			['{', '}'],
			['[', ']'],
			['(', ')']
		]
    })  	
}