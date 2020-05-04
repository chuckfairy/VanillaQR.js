import VanillaQR from "../VanillaQR.module.js";

var qr = new VanillaQR({
	url: "http://example.com",
	width: 400,
	height: 400,
	colorLight: "#FAA7F9",
	colorDark: "#3A005E",

	toTable: true
});

document.body.appendChild(qr.domElement);
