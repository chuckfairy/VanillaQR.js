# VanillaQR javascript QR code generator

A small javascript file for creating qr codes on the fly using the HTML5 Canvas element. Only 30kb and 10kb compressed.

## How to use

```html
<script src="VanillaQR.js"></script>
<script>

//Create qr object
//Width, height, and colors are the defaults
var qr = new VanillaQR({

    url: "https://github.com/chuckfairy/VanillQR",
    width: 280,
    height: 280,

    colorLight: "#ffffff",
    colorDark: "#0000000",

    onError: function() {alert("Sorry no canvas support");}

});

document.body.appendChild(qr.domElement);

//Alternatively you can create an image from the canvas
//png, jpg, jpeg, webp, gif, bmp, tiff, x-icon, svg+xml, xxx
var imageElement = qr.toImage("png");
document.body.appendChild(imageElement);

//You can recreate the qr code to a new url like so
//If you have appended the domElement it will change
qr.url = "https://github.com/chuckfairy";
qr.init();

</script>
```
## Browser support

All browsers with canvas and canvas 2d context support

* Chrome > 30
* IE > 8
* Firefox > 33
* Opera > 25
* Safari > 7.0
* Android > 4.0

Vanilla QR is based on a port of a java qr code library that I can no longer find. When I do find it I'll be sure to give it proper credit. Thank you and have a nice day!
