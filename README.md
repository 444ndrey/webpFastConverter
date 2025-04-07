# Image Converter to WebP (Windows Context Menu)

A Node.js utility to convert images to the WebP format directly from the **Windows context menu**. It supports multiple image formats: `.jpg`, `.jpeg`, `.png`, `.bmp`.

## Features
- Convert images to WebP using the `sharp` library.
- Integrates with Windows 11 context menu.
- Supports `.jpg`, `.jpeg`, `.png`, `.bmp`

## Getting Started

### 1. Prerequisites

- Install **Node.js** from [here](https://nodejs.org/). v20.11.1 and upper required.

### 2. Install Dependencies

Clone the repository and install dependencies:

```bash
git clone https://github.com/your-username/image-converter-webp.git
cd image-converter-webp
npm install
```
### 3. Setup Context Menu
Run the register.bat script to add the "Convert to WebP" option to your right-click menu.
- Update paths in register.bat for node.exe and the script.
- Double-click register.bat to add the context menu entry.

## Usage
- Right-click on an image (.jpg, .png, etc.) and select "Convert to WebP".
- The WebP image will be saved in the same folder.

##How It Works
The utility uses sharp to convert images to WebP format. The converted image is saved with the .webp extension.

##Edit `register.bat` set paths to your `node.exe` and set path to srcipt `index.js`:
```bash
@echo off
set "exePath=C:\Path\To\node.exe"
set "scriptPath=C:\Path\To\image-converter-webp\index.js"
```
