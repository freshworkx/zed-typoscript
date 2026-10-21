# TypoScript for Zed

Syntax highlighting and snippets for TYPO3 TypoScript and TSconfig in [Zed](https://zed.dev/).

- Languages: **TypoScript** (`.typoscript`) and **TSconfig** (`.tsconfig`), both parsed by the same Tree-sitter grammar.
- Grammar: [Teddytrombone/tree-sitter-typoscript](https://github.com/Teddytrombone/tree-sitter-typoscript) (MIT), pinned in `extension.toml`.
- Editor support: comment toggling, bracket matching and auto-closing, auto-indent, outline and snippets.
- No language server: there is no autocompletion beyond snippets.

## `.ts` files

`.ts` is not claimed by this extension, because Zed uses it for TypeScript. Assign it per project or globally in your Zed `settings.json`, for example:

```json
{
  "file_types": {
    "TypoScript": ["**/Configuration/TypoScript/**/*.ts", "**/typo3conf/ext/**/*.ts"]
  }
}
```

## Development

1. Install Rust via `rustup` (Zed compiles extensions to WebAssembly).
2. In Zed: `zed: install dev extension` and select this directory.

## Known limitations

- Every TypoScript line must end with a newline (grammar requirement); a missing final newline can break the last line.
- Legacy conditions are parsed as Symfony Expression Language and may be highlighted incorrectly.
- The grammar does not distinguish TSconfig from TypoScript.
