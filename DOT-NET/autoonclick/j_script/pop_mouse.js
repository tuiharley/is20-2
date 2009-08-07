Xoffset=10;    // modify these values to ...
Yoffset= 0;    // change the popup position.

var nav,old,iex=(document.all),yyy=-10;
if(navigator.appName=="Netscape"){(document.layers)?nav=true:old=true;}

if(!old){
var skn=(nav)?document.dek:dek.style;
if(nav)document.captureEvents(Event.MOUSEMOVE);
document.onmousemove=get_mouse;
}

function popup(msg){
var content="<TABLE  WIDTH=500 BORDER=0  BORDERCOLOR=#CD0069 CELLPADDING=0 CELLSPACING=0  style='border-collapse: collapse '"+
"BGCOLOR=#EAEAEA><TD ALIGN=center>"+msg+"</TD></TABLE>";
if(old){alert(msg);return;} 
else{yyy=Yoffset;
 if(nav){skn.document.write(content);skn.document.close();skn.visibility="visible"}
 if(iex){document.all("dek").innerHTML=content;skn.visibility="visible"}
 }
}

function get_mouse(e){
var x=(nav)?e.pageX:event.x+document.body.scrollLeft;skn.left=x+Xoffset;
var y=(nav)?e.pageY:event.y+document.body.scrollTop;skn.top=y+yyy;
}

function kill(){
if(!old){yyy=-1000;skn.visibility="hidden";}
}