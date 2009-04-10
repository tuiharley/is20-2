var bBrowserOK; bBrowserOK = 0;if(parseFloat(navigator.appVersion)&amp;gt;=4) if(navigator.appName == 'Microsoft Internet Explorer') bBrowserOK = 1;document.write('&amp;lt;STYLE&amp;gt;');document.write('a.MNMID20058944 {text-decoration:none; color:#F7F7F7; font-weight: 700; font-family: Times New Roman; font-size: 13px; font-style:normal;} ');
document.write('a.MNMID20058944:hover {text-decoration:none; color:#3019FF; }');
document.write('a.SMNMID20058944 {text-decoration:none; color:#F7F7F7; font-weight: 700; font-family: Times New Roman; font-size: 13px; font-style:normal;} ');
document.write('a.SMNMID20058944:hover {text-decoration:none; color:#3019FF; }');
document.write('table.MTMID20058944 {background:#000000; border:1 solid #0000FF; }');
document.write('td.MTDMID20058944 {padding-left:4; padding-right:4; background:#118CFF; border:0 solid #000000; }');
document.write('.MTIMID20058944 {color:#F7F7F7; font-weight: 700; font-family: Times New Roman; font-size: 13px; font-style:normal;}');
document.write('.MSIMID20058944 {color:#F7F7F7; font-weight: 700; font-family: Times New Roman; font-size: 13px; font-style:normal;}');
document.write('&amp;lt;/STYLE&amp;gt;');
function OpenMenu(MenuId){	MenuId.style.visibility = 'visible'; }
function CloseMenu(MenuId){	MenuId.style.visibility = 'hidden';}
function HLTMID20058944(TDId,AId){	TDId.style.background = '#49DD66';	if(AId) AId.style.color = '#3019FF';}
function UHLTMID20058944(TDId,AId){	TDId.style.background = '#118CFF';	if(AId) AId.style.color = '#F7F7F7';}
function THLTMID20058944(TDId,AId){	TDId.style.background = '#49DD66';	if(AId) AId.style.color = '#3019FF';}
function TUHLTMID20058944(TDId,AId){	TDId.style.background = '#118CFF';	if(AId) AId.style.color = '#F7F7F7';}
function WSBHMID20058944(MenuId){
document.write('&amp;lt;span id=' + MenuId + ' STYLE=&amp;quot;position:absolute; visibility:hidden; zorder:1; &amp;quot;&amp;gt;');
document.write('&amp;amp;nbsp;&amp;lt;br&amp;gt;');
document.write('&amp;lt;table class=&amp;quot;MTMID20058944&amp;quot; cellspacing=0 cellpadding=2 onMouseOut=&amp;quot;CloseMenu(' + MenuId + ');&amp;quot; onMouseOver=&amp;quot;OpenMenu(' + MenuId + ');&amp;quot;&amp;gt;');} 
function WSIHMID20058944(ItemID,ItemName,ItemURL,MenuID,ItemTitle,ItemTarget){
document.write('&amp;lt;tr&amp;gt;&amp;lt;td id=&amp;quot;X' + ItemID + '&amp;quot; class=&amp;quot;MTDMID20058944&amp;quot; onMouseOver=&amp;quot;HLTMID20058944(X' + ItemID + ',' + ItemID + ');&amp;quot; onMouseOut=&amp;quot;UHLTMID20058944(X' + ItemID + ',' + ItemID + ');&amp;quot;&amp;gt;');
document.write('&amp;lt;span NOWRAP&amp;gt;&amp;lt;a href=&amp;quot;' + ItemURL + '&amp;quot; title=&amp;quot;' + ItemTitle + '&amp;quot; class=&amp;quot;SMNMID20058944&amp;quot; target=&amp;quot;' + ItemTarget + '&amp;quot; id=&amp;quot;' + ItemID + '&amp;quot;&amp;gt;' + ItemName + '&amp;lt;/a&amp;gt;&amp;lt;/span&amp;gt;&amp;lt;/td&amp;gt;&amp;lt;/tr&amp;gt;');}
function WSFHMID20058944(ItemID,ItemFree){
document.write('&amp;lt;tr&amp;gt;&amp;lt;td id=&amp;quot;X' + ItemID + '&amp;quot; class=&amp;quot;MTDMID20058944&amp;quot; onMouseOver=&amp;quot;HLTMID20058944(X' + ItemID + ',' + ItemID + ');&amp;quot; onMouseOut=&amp;quot;UHLTMID20058944(X' + ItemID + ',' + ItemID + ');&amp;quot;&amp;gt;');
document.write('&amp;lt;span id=&amp;quot;' + ItemID + '&amp;quot; class=&amp;quot;MSIMID20058944&amp;quot; &amp;gt;' + ItemFree + '&amp;lt;/span&amp;gt;&amp;lt;/td&amp;gt;&amp;lt;/tr&amp;gt;');}
function CloseSubBoxH(){document.write('&amp;lt;/table&amp;gt;&amp;lt;/span&amp;gt;');}
function WTIHMID20058944(MenuID,MenuName,MenuURL,MenuTitle,MenuTarget){
document.write('&amp;lt;span STYLE=&amp;quot;position:relative;&amp;quot; class=&amp;quot;MTIMID20058944&amp;quot; onMouseOver=&amp;quot;OpenMenu(' + MenuID + ');&amp;quot; onMouseOut=&amp;quot;CloseMenu(' + MenuID + ');&amp;quot;&amp;gt;&amp;lt;a href=&amp;quot;' + MenuURL + '&amp;quot; title=&amp;quot;' + MenuTitle + '&amp;quot; target=&amp;quot;' + MenuTarget + '&amp;quot; class=&amp;quot;MNMID20058944&amp;quot;&amp;gt;&amp;amp;nbsp;' + MenuName + '&amp;lt;/a&amp;gt;&amp;lt;/span&amp;gt;');}
function WTFHMID20058944(MenuID,MenuFree){
document.write('&amp;lt;span STYLE=&amp;quot;position:relative;&amp;quot; class=&amp;quot;MTIMID20058944&amp;quot; onMouseOver=&amp;quot;OpenMenu(' + MenuID + ');&amp;quot; onMouseOut=&amp;quot;CloseMenu(' + MenuID + ');&amp;quot;&amp;gt;&amp;amp;nbsp;' + MenuFree + '&amp;amp;nbsp;&amp;lt;/span&amp;gt;');}
function WTHHMID20058944(MenuName,MenuURL,MenuTitle,MenuTarget){
document.write('&amp;lt;span STYLE=&amp;quot;position:relative;&amp;quot; class=&amp;quot;MTIMID20058944&amp;quot; &amp;gt;&amp;lt;a href=&amp;quot;' + MenuURL + '&amp;quot; title=&amp;quot;' + MenuTitle + '&amp;quot; target=&amp;quot;' + MenuTarget + '&amp;quot; class=&amp;quot;MNMID20058944&amp;quot;&amp;gt;&amp;amp;nbsp;' + MenuName + '&amp;lt;/a&amp;gt;&amp;lt;/span&amp;gt;');}
function WTHFHMID20058944(MenuName,MenuFree){
document.write('&amp;lt;span STYLE=&amp;quot;position:relative;&amp;quot; class=&amp;quot;MTIMID20058944&amp;quot; &amp;gt;&amp;amp;nbsp;' + MenuFree + '&amp;lt;/span&amp;gt;');}
document.write('&amp;lt;TABLE CELLSPACING=0 CELLPADDING=0 WIDTH=&amp;quot;100%&amp;quot; BGCOLOR=#118CFF STYLE=&amp;quot;border:1 solid #0000FF; &amp;quot;&amp;gt;&amp;lt;TR VALIGN=MIDDLE&amp;gt;&amp;lt;TD ALIGN=CENTER&amp;gt;');
document.write('&amp;lt;DIV NOWRAP STYLE=&amp;quot;visibility:visible; background-color:#118CFF; font-weight: 700; font-family: Times New Roman; font-size:13px; &amp;quot;&amp;gt;');
WTHHMID20058944('Home','Index.asp','&amp;Euml;&amp;sup1;&amp;eacute;&amp;Ograve;&amp;ordm;&amp;eacute;&amp;Ograve;&amp;sup1; CMO','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
WTHHMID20058944('Report','cgm.html','Marketing Report , LCAM Report , NCAM Report , Customer Management Group Report','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
if(bBrowserOK==1) {
WSBHMID20058944('SMM20065168');
WSIHMID20058944('SMM20065120','Cm Meeting','meet.html','SMM20065168','Cm Meeting','_parent');
if(SMM20065120) SMM20065120.style.color = '#F7F7F7';WSIHMID20058944('SMM20065072','Other','oth3.html','SMM20065168','Other','_parent');
if(SMM20065072) SMM20065072.style.color = '#F7F7F7';CloseSubBoxH();
WTIHMID20058944('SMM20065168','Meeting','#top','Meeting','_parent');
}
else
WTHHMID20058944('Meeting','#top','Meeting','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
if(bBrowserOK==1) {
WSBHMID20058944('SMM20065024');
WSIHMID20058944('SMM20064976','Resident Customer Revenue 1,000 Up','bc/logbc.htm','SMM20065024','Resident Customer Revenue 1,000 Up','_blank');
if(SMM20064976) SMM20064976.style.color = '#F7F7F7';WSIHMID20058944('SMM20064928','TT&amp;amp;T Customer','cs/logcs.htm','SMM20065024','TT&amp;amp;T Customer','_blank');
if(SMM20064928) SMM20064928.style.color = '#F7F7F7';WSIHMID20058944('SMM20064880','Others','oth.html','SMM20065024','&amp;Iacute;&amp;times;&amp;egrave;&amp;sup1; &amp;aelig;','_parent');
if(SMM20064880) SMM20064880.style.color = '#F7F7F7';CloseSubBoxH();
WTIHMID20058944('SMM20065024','Survey Project','#top','Suver Project','_parent');
}
else
WTHHMID20058944('Survey Project','#top','Suver Project','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
if(bBrowserOK==1) {
WSBHMID20058944('SMM20064832');
WSIHMID20058944('SMM20064784','Competitor Database','cd.html','SMM20064832','Competitor Database','_parent');
if(SMM20064784) SMM20064784.style.color = '#F7F7F7';WSIHMID20058944('SMM20064736','Corporate Customer System','ccs.html','SMM20064832','Corporate Customer System','_parent');
if(SMM20064736) SMM20064736.style.color = '#F7F7F7';WSIHMID20058944('SMM20064688','Others','oth2.html','SMM20064832','&amp;Iacute;&amp;times;&amp;egrave;&amp;sup1; &amp;aelig;','_parent');
if(SMM20064688) SMM20064688.style.color = '#F7F7F7';WSIHMID20058944('SMM20064640','ARPU (Average Revenue Perunit) Status Report ','Arpu/frarpu.htm','SMM20064832','','_blank');
if(SMM20064640) SMM20064640.style.color = '#F7F7F7';WSIHMID20058944('SMM20064592','CRM','http://crm.ttt.co.th','SMM20064832','Customer Relationship Management','_blank');
if(SMM20064592) SMM20064592.style.color = '#F7F7F7';CloseSubBoxH();
WTIHMID20058944('SMM20064832','Application System','#top','Application System','_parent');
}
else
WTHHMID20058944('Application System','#top','Application System','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
if(bBrowserOK==1) {
WSBHMID20058944('SMM20064544');
WSIHMID20058944('SMM20064496','Supporting Data Tool','sdt.html','SMM20064544','&amp;acirc;&amp;raquo;&amp;Atilde;&amp;aacute;&amp;iexcl;&amp;Atilde;&amp;Aacute;&amp;micro;&amp;egrave;&amp;Ograve;&amp;sect; &amp;aelig;','_parent');
if(SMM20064496) SMM20064496.style.color = '#F7F7F7';WSIHMID20058944('SMM20064448','News &amp;amp; Event ...','ne.html','SMM20064544','News &amp;amp; Event Of Potential Customer','_parent');
if(SMM20064448) SMM20064448.style.color = '#F7F7F7';CloseSubBoxH();
WTIHMID20058944('SMM20064544','Download Zone','#top','&amp;acute;&amp;Ograve;&amp;Ccedil;&amp;sup1;&amp;igrave;&amp;acirc;&amp;Euml;&amp;Aring;&amp;acute;&amp;Atilde;&amp;eacute;&amp;Iacute;&amp;sup1; &amp;aelig;','_parent');
}
else
WTHHMID20058944('Download Zone','#top','&amp;acute;&amp;Ograve;&amp;Ccedil;&amp;sup1;&amp;igrave;&amp;acirc;&amp;Euml;&amp;Aring;&amp;acute;&amp;Atilde;&amp;eacute;&amp;Iacute;&amp;sup1; &amp;aelig;','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
if(bBrowserOK==1) {
WSBHMID20058944('SMM20064400');
WSIHMID20058944('SMM20064352','Chatroom','room/1/room1.htm','SMM20064400','Chat Chat Chat !!','_blank');
if(SMM20064352) SMM20064352.style.color = '#F7F7F7';WSIHMID20058944('SMM20064304','Games','g.html','SMM20064400','&amp;agrave;&amp;iexcl;&amp;Aacute;&amp;Ecirc;&amp;igrave;','_parent');
if(SMM20064304) SMM20064304.style.color = '#F7F7F7';WSIHMID20058944('SMM20064256','Joke','joke.html','SMM20064400','&amp;Atilde;&amp;Ccedil;&amp;Aacute;&amp;agrave;&amp;Atilde;&amp;times;&amp;egrave;&amp;Iacute;&amp;sect;&amp;cent;&amp;Oacute;&amp;cent;&amp;Ntilde;&amp;sup1;','_parent');
if(SMM20064256) SMM20064256.style.color = '#F7F7F7';WSIHMID20058944('SMM20064208','What is ...','what.html','SMM20064400','&amp;curren;&amp;Oacute;&amp;para;&amp;Ograve;&amp;Aacute;&amp;aacute;&amp;Ecirc;&amp;sup1;&amp;Ecirc;&amp;sup1;&amp;Oslash;&amp;iexcl;','_parent');
if(SMM20064208) SMM20064208.style.color = '#F7F7F7';CloseSubBoxH();
WTIHMID20058944('SMM20064400','Entertain','#top','&amp;Aacute;&amp;Oslash;&amp;Aacute;&amp;frac34;&amp;Ntilde;&amp;iexcl;&amp;frac14;&amp;egrave;&amp;Iacute;&amp;sup1;','_parent');
}
else
WTHHMID20058944('Entertain','#top','&amp;Aacute;&amp;Oslash;&amp;Aacute;&amp;frac34;&amp;Ntilde;&amp;iexcl;&amp;frac14;&amp;egrave;&amp;Iacute;&amp;sup1;','_parent');
document.write('&amp;amp;nbsp;&amp;lt;font color=#F7F7F7&amp;gt;|&amp;lt;/font&amp;gt;');
if(bBrowserOK==1) {
WSBHMID20058944('SMM20064160');
WSIHMID20058944('SMM20064112','Mission','miss.html','SMM20064160','&amp;Agrave;&amp;Ograve;&amp;Atilde;&amp;iexcl;&amp;Ocirc;&amp;uml;','_parent');
if(SMM20064112) SMM20064112.style.color = '#F7F7F7';WSIHMID20058944('SMM20064064','Where Am I ?','where.html','SMM20064160','&amp;aacute;&amp;frac14;&amp;sup1;&amp;frac14;&amp;Ntilde;&amp;sect;&amp;Atilde;&amp;ETH;&amp;ordm;&amp;ordm;&amp;sect;&amp;Ograve;&amp;sup1; CMO','_parent');
if(SMM20064064) SMM20064064.style.color = '#F7F7F7';WSIHMID20058944('SMM20064016','Who Is Who ?','whoform.asp','SMM20064160','&amp;atilde;&amp;curren;&amp;Atilde;&amp;agrave;&amp;raquo;&amp;ccedil;&amp;sup1;&amp;atilde;&amp;curren;&amp;Atilde;&amp;atilde;&amp;sup1; CMO','_parent');
if(SMM20064016) SMM20064016.style.color = '#F7F7F7';WSIHMID20058944('SMM20063968','Webmaster','wm.html','SMM20064160','&amp;frac14;&amp;Ugrave;&amp;eacute;&amp;uml;&amp;Ntilde;&amp;acute;&amp;middot;&amp;Oacute;','_parent');
if(SMM20063968) SMM20063968.style.color = '#F7F7F7';CloseSubBoxH();
WTIHMID20058944('SMM20064160','About Us','#001','&amp;agrave;&amp;iexcl;&amp;Otilde;&amp;egrave;&amp;Acirc;&amp;Ccedil;&amp;iexcl;&amp;Ntilde;&amp;ordm; CMO','_parent');
}
else
WTHHMID20058944('About Us','#001','&amp;agrave;&amp;iexcl;&amp;Otilde;&amp;egrave;&amp;Acirc;&amp;Ccedil;&amp;iexcl;&amp;Ntilde;&amp;ordm; CMO','_parent');
document.write('&amp;lt;/DIV&amp;gt;&amp;lt;/TD&amp;gt;');
document.write('&amp;lt;/TR&amp;gt;&amp;lt;/TABLE&amp;gt;');
