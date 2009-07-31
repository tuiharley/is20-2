/***** Control *****/
var old_bgcolor;
var old_class;
function ShowBar(src) {
	if (!src.contains(event.fromElement)) {
		src.style.cursor = 'hand';
		old_class = src.className;
		src.className = 'TableSelectedItem';
	}
}
function HideBar(src) {
	if (!src.contains(event.toElement)) {
		src.style.cursor = 'default';
		src.className = old_class;
	}
}
function GetDate(ctrlName,DateSel){
	document.forms[0].elements(ctrlName).value=DateSel;
}
function Calendar_Open(ctrlname){
	window.open("../Includes/Calendar.aspx?CtrlName="+ctrlname,"","height=200,width=270"); 
}

/***** Utility *****/
function To_Num(N){
	if (N != ''){
		if (typeof(N)=='string') {
			var convertedString = N.split(',');
			convertedString = convertedString.join('');
			return parseFloat(convertedString);
		} else { 
			return N; 
		}
	} else {
		return 0;
	}
}
function isDate(DateToCheck){
	if(DateToCheck==""){return true;}
	var m_strDate = FormatDate(DateToCheck);
	if(m_strDate==""){
		return false;
	}
	
	var m_arrDate = m_strDate.split("/");
	var m_DAY = m_arrDate[0];
	var m_MONTH = m_arrDate[1];
	var m_YEAR = m_arrDate[2];
	if(m_YEAR.length > 4){return false;}
	if(m_YEAR< 1000){return false;}
	var d = new Date();
	if (d.getYear() < 2500) {
		m_YEAR = parseInt(m_YEAR)-543;
	}
	m_strDate = m_MONTH + "/" + m_DAY + "/" + m_YEAR;
	var testDate=new Date(m_strDate);
	if(testDate.getMonth()+1==m_MONTH){
		return true;
	} else {
		return false;
	}
}
function FormatDate(DateToFormat,FormatAs){
	if(DateToFormat==""){return"";}
	if(!FormatAs){FormatAs="dd/mm/yyyy";}
	var strReturnDate;
	FormatAs = FormatAs.toLowerCase();
	DateToFormat = DateToFormat.toLowerCase();
	var arrDate;
	var arrMonths = new Array("January","February","March","April","May","June","July","August","September","October","November","December");
	var strMONTH;
	var Separator;
	while(DateToFormat.indexOf("st")>-1){
		DateToFormat = DateToFormat.replace("st","");
	}
	while(DateToFormat.indexOf("nd")>-1){
		DateToFormat = DateToFormat.replace("nd","");
	}
	while(DateToFormat.indexOf("rd")>-1){
		DateToFormat = DateToFormat.replace("rd","");
	}
	while(DateToFormat.indexOf("th")>-1){
		DateToFormat = DateToFormat.replace("th","");
	}
	if(DateToFormat.indexOf(".")>-1){
		Separator = "/";
	}
	if(DateToFormat.indexOf("-")>-1){
		Separator = "/";
	}
	if(DateToFormat.indexOf("/")>-1){
		Separator = "/";
	}
	if(DateToFormat.indexOf(" ")>-1){
		Separator = "/";
	}
	arrDate = DateToFormat.split(Separator);
	DateToFormat = "";
	for(var iSD = 0;iSD < arrDate.length;iSD++){
		if(arrDate[iSD]!=""){
			DateToFormat += arrDate[iSD] + Separator;
		}
	}
	DateToFormat = DateToFormat.substring(0,DateToFormat.length-1);
	arrDate = DateToFormat.split(Separator);
	if(arrDate.length < 3){
		return "";
	}
	var DAY = arrDate[0];
	var MONTH = arrDate[1];
	var YEAR = arrDate[2];
	if(parseFloat(arrDate[1]) > 12){
		DAY = arrDate[1];
		MONTH = arrDate[0];
	}
	if(parseFloat(DAY) && DAY.toString().length==4){
		YEAR = arrDate[0];
		DAY = arrDate[2];
		MONTH = arrDate[1];
	}
	for(var iSD = 0;iSD < arrMonths.length;iSD++){
		var ShortMonth = arrMonths[iSD].substring(0,3).toLowerCase();
		var MonthPosition = DateToFormat.indexOf(ShortMonth);
		if(MonthPosition > -1){
			MONTH = iSD + 1;
			if(MonthPosition == 0){
				DAY = arrDate[1];
				YEAR = arrDate[2];
			}
			break;
		}
	}
	var strTemp = YEAR.toString();
	if(strTemp.length==2){
		if(parseFloat(YEAR)>40){
			YEAR = "19" + YEAR;
		} else {
			YEAR = "20" + YEAR;
		}
	}
	if(parseInt(MONTH)< 10 && MONTH.toString().length < 2){
		MONTH = "0" + MONTH;
	}
	if(parseInt(DAY)< 10 && DAY.toString().length < 2){
		DAY = "0" + DAY;
	}
	switch (FormatAs){
		case "dd/mm/yyyy":
			return DAY + "/" + MONTH + "/" + YEAR;
		case "mm/dd/yyyy":
			return MONTH + "/" + DAY + "/" + YEAR;
		case "dd/mmm/yyyy":
			return DAY + " " + arrMonths[MONTH -1].substring(0,3) + " " + YEAR;
		case "mmm/dd/yyyy":
			return arrMonths[MONTH -1].substring(0,3) + " " + DAY + " " + YEAR;
		case "dd/mmmm/yyyy":
			return DAY + " " + arrMonths[MONTH -1] + " " + YEAR;	
		case "mmmm/dd/yyyy":
			return arrMonths[MONTH -1] + " " + DAY + " " + YEAR;
	}
	return DAY + "/" + strMONTH + "/" + YEAR;;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function IsNumeric(sText){
var ValidChars = "0123456789.,";
var IsNumber=true;
var Char;
for (i = 0; i < sText.length && IsNumber == true; i++){ 
	Char = sText.charAt(i); 
	if (ValidChars.indexOf(Char) == -1)  {
		IsNumber = false;
	}
}
	return IsNumber;
}

function IsEnglish(sText){
var ValidChars = " 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.,*&#@?><{}/-+$%()_=|[]:;'";
var IsEnglishs=true;
var Char;
for (i = 0; i < sText.length && IsEnglishs == true; i++){ 
	Char = sText.charAt(i); 
	if (ValidChars.indexOf(Char) == -1)  {
		IsEnglishs = false;
	}
}
	return IsEnglishs;
}

function IsTime(sText){
var ValidChars = "0123456789:";
var IsTimes=true;
var Char;
for (i = 0; i < sText.length && IsTimes == true; i++){ 
	Char = sText.charAt(i); 
	if (ValidChars.indexOf(Char) == -1)  {
		IsTimes = false;
	}
}
	return IsTimes;
}

function IsNumberData(sText){
var ValidChars = "0123456789";
var IsNumType=true;
var Char;
for (i = 0; i < sText.length && IsNumType == true; i++){ 
	Char = sText.charAt(i); 
	if (ValidChars.indexOf(Char) == -1)  {
		IsNumType = false;
	}
}
	return IsNumType;
}


function IsEmailCheck(emailStr) {
// checks if the e-mail address is valid
var Isemail=true;

var r1 = new RegExp("(@.*@)|(\\.\\.)|(@\\.)|(^\\.)");
var r2 = new RegExp("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,3}|[0-9]{1,3})(\\]?)$");
var isOK = !r1.test(emailStr) && r2.test(emailStr);
if (emailStr.length < 1) isOK=true;
//var emailPat = /^(\".*\"|[A-Za-z0-9]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z0-9]\w*(\.[A-Za-z0-9]\w*)+)$/;
//var matchArray = emailStr.match(emailPat);
//	if (matchArray == null) {
	//alert("Your email address seems incorrect.  Please try again (check the '@' and '.'s in the email address)");
//		Isemail= false;
	 return isOK;
}

function IsPhoneData(sText){
var ValidChars = "0123456789,-#*+() ";
var IsPhoneType=true;
var Char;
for (i = 0; i < sText.length && IsPhoneType == true; i++){ 
	Char = sText.charAt(i); 
	if (ValidChars.indexOf(Char) == -1)  {
		IsPhoneType = false;
	}
}
	return IsPhoneType;
}

function Mid(str, start, len)
/***
IN: str - the string we are LEFTing
start - our string's starting position (0 based!!)
len - how many characters from start we want to get

RETVAL: The substring from start to start+len
***/
{
// Make sure start and len are within proper bounds
if (start < 0 || len < 0) return "";

var iEnd, iLen = String(str).length;
if (start + len > iLen)
iEnd = iLen;
else
iEnd = start + len;

return String(str).substring(start,iEnd);
}

function InStr(strSearch, charSearchFor)
/*
InStr(strSearch, charSearchFor) : Returns the first location a substring (charSearchFor) found in the string strSearch. (If the character is not found, -1 is returned.)
*/
{
for (i=0; i < strSearch.length; i++)
{
if (charSearchFor == Mid(strSearch, i, 1))
{
return i;
}
}
return -1;
} 

function Asc(CHARACTER){
return CHARACTER.charCodeAt(0);
}

function Right(STRING,CHARACTER_COUNT){
return STRING.substring((STRING.length - CHARACTER_COUNT),STRING.length);
}


var CharList = " 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_";
var CharCount = 64;
var MaxKeyLen=10;

function Key2Char(num) {
	return CharList.charAt(num % CharCount);
}

function Key2Num(Key) {
    return CharList.indexOf(Key);
}

function EncodeKey(SecretKey,Data) {
var X,X0;
var S,t,EncodedKey;
var Valid=true;
var I;
var EncKey;
var ch;

    S = SecretKey + Data;
    X0 = 12;
    for (I = 0; I < S.length; I++){ 
		X0 = X0 + S.charCodeAt(I);
		if (Key2Num(S.charAt(I)) == -1) Valid=false;
	}
    X0 = X0 % CharCount;
    X = X0;
    if (! Valid) {
		return "";
	}
        
    EncodedKey = Key2Char(X0);
    S = "          " + SecretKey + SecretKey + SecretKey + SecretKey;
    S = S.substr(S.length - MaxKeyLen, MaxKeyLen)
    t = "          " + Data + Data + Data + Data;
    t = t.substr(t.length - MaxKeyLen, MaxKeyLen);
   // alert("S=[" + S + "], t=["+t+"]");
	for (I = 0; I < MaxKeyLen; I++){
		X = X + 55 + Key2Num(S.charAt(I)) - Key2Num(t.charAt(I));
        EncodedKey = EncodedKey + Key2Char(X);
	}
	EncodedKey = EncodedKey + Key2Char(Math.floor(X / CharCount)) + Key2Char(X0 + Data.length);
	//alert("Encode Key = [" +  EncodedKey + "]");
    return EncodedKey; 
}
