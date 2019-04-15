
import * as vscode from 'vscode';

const MATCH_NOTHING_RE = /(?!x)x/;

export function activate(context: vscode.ExtensionContext) {

    vscode.languages.setLanguageConfiguration('haskell', {
        indentationRules: {
            // ^.*\{[^}"']*$
            increaseIndentPattern: vscode.workspace.getConfiguration('haskell').indentationRules.enabled
                ? /(\bif\b(?!')(.(?!then))*|\b(then|else|m?do|of|let|in|where)\b(?!')|=|->|>>=|>=>|=<<|(^(data)( |\t)+(\w|')+( |\t)*))( |\t)*$/
                : MATCH_NOTHING_RE,
            decreaseIndentPattern: MATCH_NOTHING_RE
        },
        wordPattern: /([\w'_][\w'_\d]*)|([0-9]+\.[0-9]+([eE][+-]?[0-9]+)?|[0-9]+[eE][+-]?[0-9]+)/
    })  	
}
