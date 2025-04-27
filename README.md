# Prothom Alo E-Paper to PDF Converter

This PowerShell script simplifies the process of downloading images from the [Prothom Alo ePaper](https://epaper.prothomalo.com/) website and converting them into a neatly organized PDF file using ImageMagick.

## Requirements
- Windows OS
- PowerShell
- ImageMagick

## Usage
1. Open PowerShell and execute this `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`.
2. Download and install ImageMagick from [here](https://imagemagick.org/script/download.php#windows) or execute this `winget install ImageMagick.ImageMagick` command in PowerShell.
3. Download prothomalo-epaper.bat from [here](https://github.com/fahim-ahmed05/prothomalo-epaper2pdf/blob/main/prothomalo-epaper.bat) and place it on your desktop or wherever you want but make sure that the folder path doesn't have any spaces.
4. Double click on the `bat` file to run it.
5. It'll ask for a folder where you want to download the ePaper. Select the folder and again make sure that the folder path doesn't have any spaces.

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
