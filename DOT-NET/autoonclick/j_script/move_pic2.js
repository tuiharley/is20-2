var TO; 
var Scr=0; 

function scroll() { 
	document.featContent.scrollBy(Scr,0); 
} 

function myscrollright() { 
	Scr=+2; 
	TO=setInterval("scroll()",10); 
} 

function myscrollleft(){ 
	Scr=-2; 
	TO=setInterval("scroll()",10); 
} 
//alert("xxx");