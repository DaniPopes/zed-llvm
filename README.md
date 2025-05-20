# Zed LLVM IR Extension

This extension provides syntax highlighting and language support for LLVM Intermediate Representation (IR) in the Zed editor.

## Features

- Syntax highlighting for LLVM IR (.ll, .llvm files)
- Bracket matching
- Code outline/structure for functions, global variables, and type declarations
- Auto-indentation

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/DaniPopes/zed-llvm ~/.config/zed/extensions/zed-llvm
   ```

2. Restart Zed or run the "Refresh Extension Registry" command.

3. Files with `.ll` or `.llvm` extensions will automatically use the LLVM IR syntax highlighting.

## Screenshots

(Coming soon)

## Contributing

Contributions are welcome! Feel free to submit issues or pull requests.

## License

MIT

## Acknowledgements

- This extension uses [tree-sitter-llvm](https://github.com/nawordar/tree-sitter-llvm) for parsing LLVM IR files.
