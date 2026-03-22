# Kana Dark

A warm, earthy dark theme for Visual Studio Code inspired by [chriswiegman.com](https://chriswiegman.com).

## Features

- Dark background with warm brown and terracotta tones
- Soft, readable foreground text that reduces eye strain
- Consistent accent colors throughout the UI and editor
- Italic comments for improved readability

## Installation

### From the Marketplace

1. Open the Extensions view (`Cmd+Shift+X` / `Ctrl+Shift+X`)
2. Search for **Kana Dark**
3. Click **Install**

### From VSIX

1. Download the `.vsix` file from the [releases page](https://github.com/ChrisWiegman/kana-vscode-theme/releases)
2. Open the Extensions view (`Cmd+Shift+X` / `Ctrl+Shift+X`)
3. Click the `...` menu and select **Install from VSIX...**
4. Select the downloaded file

## Activation

1. Open the Command Palette (`Cmd+Shift+P` / `Ctrl+Shift+P`)
2. Type **Preferences: Color Theme**
3. Select **Kana Dark**

## Development

```bash
# Install dependencies
make install

# Build the .vsix package
make package

# Check project status
make status

# Clean build artifacts
make clean
```

## Publishing

1. Run `make package` to generate the `.vsix` file
2. Go to [marketplace.visualstudio.com/manage](https://marketplace.visualstudio.com/manage)
3. Sign in and select your publisher
4. Click **+ New extension** → **Visual Studio Code**
5. Upload the generated `.vsix` file

## License

[MIT](LICENSE.txt)
