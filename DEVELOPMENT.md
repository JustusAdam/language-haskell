# Developer information

In version 3.0 the grammar format has changed. For maintenance and conciseness resons we now use YAML as the grammar format. This means when making improvements to the grammar please edit `syntaxes/haskell.YAML-tmLanguage`. 

Since Visual Studio Code does not natively understand yaml grammars we use the `js-yaml` tool to generate `syntaxes/haskell.json`. The task configuration should automatically generate the `syntaxes/haskell.json` file that Visual Studio Code actually loads. Should you experience problems with the task configuration feel free to open a bug report.
