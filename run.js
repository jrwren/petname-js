"use strict";

const PetName = require("./index.js");

const pn = new PetName();
console.log(pn.generate(5));
console.log(pn.generate(2));
console.log(pn.generate(1));
console.log(pn.generate());
console.log(pn.generate(3, '-'));
