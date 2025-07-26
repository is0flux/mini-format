# 🚀 mini-format ⚡

> **Blazingly fast** TypeScript/JavaScript minification formatter that's so fast it'll make your code go **BRRRRR** 🔥

[![Built with Nix](https://img.shields.io/badge/Built_with-Nix-5277C3.svg?logo=nixos&logoColor=white)](https://nixos.org)
[![Powered by esbuild](https://img.shields.io/badge/Powered_by-esbuild-FFCF00.svg)](https://esbuild.github.io/)
[![Node.js](https://img.shields.io/badge/Node.js-43853D?logo=node.js&logoColor=white)](https://nodejs.org/)

## 🌟 Features

- 🚀 **BLAZINGLY FAST** - Powered by esbuild's lightning-fast transformer
- 🎯 **Zero Config** - Just point and shoot! 
- 📦 **Tiny Binary** - Minimal footprint, maximum performance
- 🔄 **Dual Mode** - File processing OR stdin/stdout streaming
- 🛡️ **TypeScript Ready** - Handles TS/JS like a champ
- ⚡ **Nix Packaged** - Reproducible builds that just work™

## 🚀 Installation

### With Nix (Recommended) 🎯

```bash
# Run directly (no installation needed!)
nix run github:yourusername/mini-format

# Install to your profile
nix profile install github:yourusername/mini-format

# Add to your flake inputs
inputs.mini-format.url = "github:yourusername/mini-format";
```

### With npm 📦

```bash
npm install -g mini-format
```

## 🔥 Usage

### 🎯 Process Files In-Place
Transform your bloated code into lean, mean, minified machines!

```bash
# Minify a single file (overwrites original)
mini-format src/index.ts

# Your code goes from this chonky boi:
# function hello(name: string): void {
#     console.log(`Hello, ${name}!`);
# }

# To this speed demon:
# function hello(e){console.log(`Hello, ${e}!`)}
```

### 🌊 Stream Processing with --stdio
Pipe that code like a pro! 

```bash
# Stream from stdin to stdout
cat src/index.ts | mini-format --stdio

# Chain with other tools for MAXIMUM POWER
find . -name "*.ts" | xargs cat | mini-format --stdio > minified.js

# One-liner to minify your entire project (be careful! 🔥)
cat src/*.ts | mini-format --stdio > dist/bundle.min.js
```

## 🎪 Examples

### 🚀 Basic Usage
```bash
# Before: 1.2KB of beautiful, readable code
echo "const greeting = 'Hello World'; console.log(greeting);" > test.js

# After: 0.3KB of pure performance
mini-format test.js
# Result: const greeting="Hello World";console.log(greeting);
```

### 🌈 Pipeline Magic
```bash
# The ultimate minification pipeline 🔥
curl -s https://unpkg.com/lodash@4.17.21/lodash.js | \
  mini-format --stdio | \
  gzip | \
  wc -c
# Watch those bytes DISAPPEAR! ✨
```

### 🎯 TypeScript Power
```bash
# TypeScript? No problem! 💪
echo "interface User { name: string; age: number; }" > types.ts
mini-format types.ts
# Types stripped, code minified, performance MAXIMIZED! 🚀
```

## 🛠️ Development

### 🏗️ Building from Source
```bash
# Clone the rocket ship 🚀
git clone https://github.com/yourusername/mini-format
cd mini-format

# Enter the development environment
nix develop

# Install dependencies
npm install

# Test your changes
node index.js --stdio < test.js
```

### 🧪 Testing
```bash
# Create test file
echo "function test() { return 'hello world'; }" > test.js

# Test file processing
./index.js test.js

# Test stdio mode
echo "const x = 1; console.log(x);" | ./index.js --stdio
```

## 🎨 Why mini-format?

| Feature | mini-format | Other Tools |
|---------|-------------|-------------|
| Speed | 🚀🚀🚀 BLAZING | 🐌 Slow |
| Size | 🪶 Tiny | 🐘 Bloated |
| Setup | ⚡ Zero config | 🔧 Complex |
| TypeScript | ✅ Native | ❌ Plugins needed |
| Nix Support | 🎯 First-class | 🤷 Maybe? |

## 🤝 Contributing

Found a bug? Want to make it even MORE blazingly fast? 

1. 🍴 Fork this rocket ship
2. 🌟 Create your feature branch (`git checkout -b feature/even-faster`)
3. 🚀 Commit your changes (`git commit -am 'Add MOAR SPEED'`)
4. 📤 Push to the branch (`git push origin feature/even-faster`)
5. 🎉 Create a Pull Request

## 📜 License

MIT © [Your Name] - Go forth and minify! 🚀

## 🙏 Acknowledgments

- 🔥 **esbuild** - For being absolutely BLAZING fast
- 🎯 **Nix** - For reproducible builds that just work
- ⚡ **Node.js** - For the runtime that powers our rocket
- 🚀 **You** - For choosing performance over bloat!

---

<div align="center">

**Made with ❤️ and lots of ☕**

*"In a world full of slow build tools, be a mini-format"* 🚀

[⭐ Star this repo](https://github.com/yourusername/mini-format) • [🐛 Report Bug](https://github.com/yourusername/mini-format/issues) • [✨ Request Feature](https://github.com/yourusername/mini-format/issues)

</div>
