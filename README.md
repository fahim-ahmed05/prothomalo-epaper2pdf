# Prothom Alo E-Paper to PDF Converter

[![Static Badge](https://img.shields.io/badge/Join%20Telegram%20Group-Readers%20Club-blue)](https://t.me/+jTKFvw-_SXg0NzZl)

## Description
This PowerShell script simplifies the process of downloading images from the [Prothom Alo ePaper](https://epaper.prothomalo.com/) website and converting them into a neatly organized PDF file using ImageMagick.

## Requirements
- Windows OS
- PowerShell
- ImageMagick

## Notes
- If you can't run the script or get execution policy error, execute this `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted` command in PowerShell then run the script.
- If you face any bug or error, please open a [issue](https://github.com/fahim0864/prothomalo-epaper2pdf/issues) or message in the [telegram group](https://t.me/+jTKFvw-_SXg0NzZl) with error message or screenshot.

## Usage
1. Download and install ImageMagick from [here](https://imagemagick.org/script/download.php#windows) or execute this `winget install ImageMagick.ImageMagick` command in PowerShell.
2. Download the script to your local machine from [here](https://github.com/fahim-ahmed05/prothomalo-epaper2pdf/archive/refs/heads/main.zip) or clone this repository.
3. Extract the zip archive then open it, click on the explorer address bar and type `cmd` then hit enter.
4. Type `powershell` in cmd window and hit enter, then type `.\run.ps1` and hit Enter to run the script.

## How It Works
- Fetches website HTML source.
- Extracts image links from the HTML source.
- Downloads images from the extracted links.
- Converts downloaded images into a cohesive PDF file.

## File Structure
- `run.ps1`: The primary PowerShell script file.
- `output/`: Directory storing the generated PDF file.
- `temp/`: Temporary folder housing intermediate files during script execution.

## Support Me
If you found this project helpful or useful, you can support my work by buying me a coffee.

<a href="https://www.buymeacoffee.com/fahim.ahmed" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
