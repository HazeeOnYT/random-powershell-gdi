Add-Type -AssemblyName System.Drawing

# Create a new bitmap
$width = 800
$height = 600
$bitmap = New-Object System.Drawing.Bitmap $width, $height

# Create a graphics object from the bitmap
$graphics = [System.Drawing.Graphics]::FromImage($bitmap)

# Set background color
$graphics.Clear([System.Drawing.Color]::White)

# Draw a rectangle
$pen = New-Object System.Drawing.Pen [System.Drawing.Color]::Blue, 3
$graphics.DrawRectangle($pen, 100, 100, 200, 150)

# Draw an ellipse
$graphics.DrawEllipse($pen, 400, 100, 200, 150)

# Draw a line
$graphics.DrawLine($pen, 100, 300, 700, 300)

# Draw some text
$font = New-Object System.Drawing.Font 'Arial', 24
$brush = [System.Drawing.Brushes]::Black
$graphics.DrawString("ahhhhh", $font, $brush, 150, 400)

# Save the bitmap to a file
$outputFile = "GDI_Output.png"
$bitmap.Save($outputFile, [System.Drawing.Imaging.ImageFormat]::Png)

# Clean up
$graphics.Dispose()
$bitmap.Dispose()
$pen.Dispose()
$font.Dispose()

Write-Output "GDI effects saved to $outputFile"
