# VanillaQR clientside javascript QR code generator

A small javascript file for creating qr codes on the fly using the HTML5 Canvas element. By default VanillaQR.js will output a canvas element as it's domElement. If the canvas element and 2d context is not supported, it will create a table instead. Tables will not be able to output images so be sure to check that the image element exists.

## How to use

```html
<script src="VanillaQR.min.js"></script>
<script>

//Create qr object
//Minus the url, these are the defaults
var qr = new VanillaQR({

    url: "https://github.com/chuckfairy/VanillQR.js",
    size: 280,

    colorLight: "#ffffff",
    colorDark: "#000000",

    //output to table or canvas
    toTable: false,

    //Ecc correction level 1-4
    ecclevel: 1,

    //Use a border or not
    noBorder: false,

    //Border size to output at
    borderSize: 4

});

//Canvas or table is stored in domElement property
document.body.appendChild(qr.domElement);

//Alternatively you can create an image from the canvas
//png, jpg, jpeg, webp, gif, bmp, tiff, x-icon, svg+xml, xxx
//Currently canvas dataURL mime types are not the same
var imageElement = qr.toImage("png");

if(imageElement) {
    document.body.appendChild(imageElement);
}


//You can recreate the qr code to a new url like so
//If you have appended the domElement it will change
qr.url = "https://github.com/chuckfairy";
qr.colorLight = "#0000000";
qr.colorDark = "#ffffff";
qr.init();

</script>
```

Through module

```js
import VanillaQR from "VanillaQR"


//See above for more
var qr = new VanillaQR({
    url: "https://github.com/chuckfairy/VanillQR.js",
});
```

## Browser support

All browsers with canvas and canvas 2d context support
* Chrome > 30
* IE > 8
* Firefox > 33
* Opera > 25
* Safari > 7.0
* Android > 4.0

Table support fallback

* Chrome
* IE > 6
* Firefox
* Opera
* Safari
* Andriod

Vanilla QR is based on a port of a java qr code library that I can no longer find. When I do find it I'll be sure to give it proper credit. Thank you and have a nice day!

## Live Demos

* Demo > http://chuckfairy.com/VanillaQR.js/example.html
* Creator > http://chuckfairy.com/VanillaQR.js/creator/

## Special Thanks

- @alberto-salinas
