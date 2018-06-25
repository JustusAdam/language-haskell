
import * as vscode from 'vscode'; 

export function activate(context: vscode.ExtensionContext) {

    vscode.languages.setLanguageConfiguration('haskell', {
        indentationRules: {
            // ^.*\{[^}"']*$
            increaseIndentPattern: vscode.workspace.getConfiguration('haskell').indentationRules.enabled
                ? /(\bif\b(?!')(.(?!then))*|\b(then|else|m?do|of|let|in|where)\b(?!')|=|->|>>=|>=>|=<<|(^(data)( |\t)+(\w|')+( |\t)*))( |\t)*$/
                : null,
            decreaseIndentPattern: null
        },
        wordPattern: /([\w'_][\w'_\d]*)|([0-9]+\.[0-9]+([eE][+-]?[0-9]+)?|[0-9]+[eE][+-]?[0-9]+)/
    });

    vscode.workspace.onDidChangeTextDocument(removeIndentAfter2Lines);
}

const removeIndentAfter2Lines = (event: vscode.TextDocumentChangeEvent) => {
    const document = event.document;

    if (document.languageId !== 'haskell') {
        return;
    }

    if (event.contentChanges.length < 1) {
        return;
    }

    const line = event.contentChanges[0].range.start.line;
    if (line < 1) {
        return;
    }

    const prevLine = document.lineAt(line);
    const currLine = document.lineAt(line + 1);

    const shouldRemoveIndent = indentedEmpty(prevLine, -1) 
                            && indentedEmpty(currLine, 0);

    if (shouldRemoveIndent) {
        const edit = new vscode.WorkspaceEdit();
        edit.replace(document.uri, currLine.range, '');
        vscode.workspace.applyEdit(edit);
    }
}

const indentedEmpty = (line: vscode.TextLine, threshold: number) => 
               line.isEmptyOrWhitespace 
            && line.firstNonWhitespaceCharacterIndex > threshold;
