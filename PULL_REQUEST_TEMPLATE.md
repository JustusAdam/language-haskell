## For changes related to the grammar

- Please add a test case.

  - For changes to regular Haskell code simply add a new section to `test/syntax-examples/test.hs`.
    Make sure your case has a descriptive comment about what it is covering.

  - When adding foreign definitions, i.e. embeddings, add a new test file for the embedding in
    question.

- Add your changes to the `CHANGELOG.md` file, ideally with a reference to the issue the PR is
  fixing. Also feel free to credit yourself there.
