# Prothom Alo E-Paper to PDF Converter

This PowerShell script simplifies the process of downloading images from the [Prothom Alo ePaper](https://epaper.prothomalo.com/) website and converting them into a neatly organized PDF file using ImageMagick.

## Requirements

- Windows OS
- PowerShell
- ImageMagick

## Setup

- Open Terminal/PowerShell.
- Type `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted` and press Enter.

**Install [ImageMagick](https://imagemagick.org/script/download.php#windows)**

- Type `winget install ImageMagick.ImageMagick --accept-package-agreements --accept-source-agreements` and press Enter. Accept necessary permissions to install it.

**Download [prothomalo-epaper.bat](https://github.com/fahim-ahmed05/prothomalo-epaper2pdf/blob/main/prothomalo-epaper.bat)**
 
- Place it on your desktop or wherever you want but make sure that the folder path doesn't have any spaces.
- Double click on the `prothomalo-epaper.bat` file to run it.
- It'll ask for a folder, where you want to download the ePaper. Select the folder and again make sure that the folder path doesn't have any spaces.

## How It Works

- Fetches website HTML source.
- Extracts image links from the HTML source.
- Downloads images from the extracted links.
- Converts downloaded images into a cohesive PDF file.

## File Structure

- `run.ps1`: The primary PowerShell script file.
- `output/`: Directory storing the generated PDF file.
- `temp/`: Temporary folder housing intermediate files during script execution.

## Donate

Open-source is powered by coffee and curiosity—thanks for your support!

<a href="https://www.buymeacoffee.com/fahim.ahmed" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
