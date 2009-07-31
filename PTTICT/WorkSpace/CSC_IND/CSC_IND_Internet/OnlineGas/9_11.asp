<%Response.Expires = -1%>
<%
	On Error Resume Next
	Set FSO = Server.CreateObject("Scripting.FileSystemObject")
	Set LogFile = FSO.OpenTextFile("F:\CSCLOGS\OGC_" & (Year(Now)*100+Month(Now)) & ".log",8,true)
	LogFile.WriteLine(Date & " " & Time & " " & Request.ServerVariables("REMOTE_ADDR") & " " & Request.ServerVariables("PATH_INFO"))
	LogFile.Close	
	FSO = Nothing
%>
<html>
<head>
<title>Current Gas Composition (RB)</title>
<style type="text/css">
<!--
.head { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFFFFF }
.head2 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFFFFF }
.head3 { font-family: MS Sans Serif; font-size:8pt;  color:#FFFFFF }
.head4 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#000000 }
.body1 { font-family: MS Sans Serif; font-size:6pt;color:#FF0000 }
.body2 { font-family: MS Sans Serif; font-size:6pt; }
-->
</style>
<script language="JavaScript">
<!-- Hide the script from old browsers 
var timerID = null;
function ShowDoc () {
	timerID = setTimeout("ShowDoc2()",300000);	  //60000=1 minute
}

function ShowDoc2 () {
	document.clear 
	timerID = setTimeout(document.location='9_11.asp',300000);	  
}
//  -->
</script>
<base target="bottom">
<link rel="stylesheet" href="../csc-text.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" leftmargin="5" topmargin="0" onload="javascript:ShowDoc()">
<!-- #include file = "header.asp" -->
<table width="829" border="0" cellspacing="0" cellpadding="0">
  <tr> 
	<td width="20" bgcolor="#000066">&nbsp;</td>
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Current 
	  Gas Composition</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT Ratchaburi (RB) - CURRENT</strong></td>
  </tr>
  
  <tr align="center" bgcolor="#B3A377" class="head2">
	<td WIDTH="104">TIME</td>
	<td WIDTH="40">CO<sub>2</sub></td>
	<td WIDTH="42">C<sub>1</sub></td>
	<td WIDTH="36">C<sub>2</sub></td>	
	<td WIDTH="37">C<sub>3</sub></td>
	<td WIDTH="37">iC<sub>4</sub></td>
	<td WIDTH="37">nC<sub>4</sub></td>
	<td WIDTH="32">iC<sub>5</sub></td>
	<td WIDTH="38">nC<sub>5</sub></td>
	<td WIDTH="36">C<sub>6</sub>+</td>
	<td WIDTH="41">N<sub>2</sub></td>
	<td WIDTH="66"> 
	  <table border="0" cellspacing="0" width="100%" bgcolor="#B3A377">
	  <tr class="head2" align="center">
		<td width="100%">HHV(dry)</td>
	  </tr>
	  <tr class="head3" align="center">
		<td width="100%">(BTU/SCF)</td>
	  </tr>
	</table>
	</td>
	<td WIDTH="44">SG.</td>
	<td WIDTH="59"> 
	  <table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr class="head2" align="center">
		<td width="100%">WI</td>
	  </tr>
	  <tr class="head3" align="center">
		<td width="100%">(BTU/SCF)</td>
	  </tr>
	</table>
	</td> 
	<td WIDTH="91"> 
	  <table border="0" cellspacing="0">
		  <tr class="head2" align="center">
		<td width="100%">C.Dewpoint</td>
		  </tr>
		  <tr class="head3" align="center">
		<td width="100%">(AT 630 PSI)</td>
		  </tr>
		</table>
	  
	</td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">28/04/2549&nbsp;17:35</td>
	<td align=center>5.90</td>
	<td align=center>71.69</td>
	<td align=center>2.94</td>
	<td align=center>0.86</td>
	<td align=center>0.18</td>
	<td align=center>0.21</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.12</td>
	<td align=center>17.97</td>
	<td align=center>825</td>
	<td align=center>0.72</td>
	<td align=center>972</td> 
	<td align=center></td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td align=center></td> 
  </tr>
  

			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:40</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:35</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:30</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:25</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:20</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:15</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:10</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:05</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:00</td>
	<td align=center>6.44</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:55</td>
	<td align=center>6.45</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:50</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>851</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:45</td>
	<td align=center>6.48</td>
	<td align=center>72.40</td>
	<td align=center>3.58</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.76</td>
	<td align=center>852</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:40</td>
	<td align=center>6.51</td>
	<td align=center>72.43</td>
	<td align=center>3.61</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.66</td>
	<td align=center>851</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:35</td>
	<td align=center>6.50</td>
	<td align=center>72.43</td>
	<td align=center>3.59</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.71</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1002</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:30</td>
	<td align=center>6.47</td>
	<td align=center>72.41</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.80</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:25</td>
	<td align=center>6.45</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:20</td>
	<td align=center>6.43</td>
	<td align=center>72.35</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:15</td>
	<td align=center>6.44</td>
	<td align=center>72.35</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:10</td>
	<td align=center>6.44</td>
	<td align=center>72.35</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:05</td>
	<td align=center>6.44</td>
	<td align=center>72.36</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.92</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center>6.44</td>
	<td align=center>72.36</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:55</td>
	<td align=center>6.45</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:50</td>
	<td align=center>6.44</td>
	<td align=center>72.36</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.92</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:45</td>
	<td align=center>6.44</td>
	<td align=center>72.35</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.93</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:40</td>
	<td align=center>6.45</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:35</td>
	<td align=center>6.45</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:30</td>
	<td align=center>6.45</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:25</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:20</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:15</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:10</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:05</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:55</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:50</td>
	<td align=center>6.48</td>
	<td align=center>72.37</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:45</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:40</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:35</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:30</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:25</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:20</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:15</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:10</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:05</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:55</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:50</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:45</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:40</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:35</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:30</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:25</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:20</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:15</td>
	<td align=center>6.47</td>
	<td align=center>72.39</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:10</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:05</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.83</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:55</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:50</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:45</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:40</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:35</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:30</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:25</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:20</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:15</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:10</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:05</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:55</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:50</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:45</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:40</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:35</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:30</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:25</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:20</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:15</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:10</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:05</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:55</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:50</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:45</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:40</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:35</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:30</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:25</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:20</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:15</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:10</td>
	<td align=center>6.48</td>
	<td align=center>72.36</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:05</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center>6.48</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:55</td>
	<td align=center>6.47</td>
	<td align=center>72.39</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:50</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:45</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:40</td>
	<td align=center>6.48</td>
	<td align=center>72.38</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:35</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:30</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:25</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:20</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:15</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:10</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:05</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:55</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:50</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:45</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:40</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:35</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:30</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:25</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:20</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:15</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:10</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:05</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:55</td>
	<td align=center>6.47</td>
	<td align=center>72.39</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:50</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:45</td>
	<td align=center>6.36</td>
	<td align=center>72.48</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:40</td>
	<td align=center>6.36</td>
	<td align=center>72.48</td>
	<td align=center>3.56</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:35</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:30</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:25</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:20</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:15</td>
	<td align=center>6.47</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:10</td>
	<td align=center>6.46</td>
	<td align=center>72.38</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:05</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:55</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.54</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:50</td>
	<td align=center>6.46</td>
	<td align=center>72.37</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:45</td>
	<td align=center>6.47</td>
	<td align=center>72.38</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.04</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:40</td>
	<td align=center>6.47</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:35</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:30</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:25</td>
	<td align=center>6.47</td>
	<td align=center>72.36</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:20</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:15</td>
	<td align=center>6.47</td>
	<td align=center>72.32</td>
	<td align=center>3.56</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:10</td>
	<td align=center>6.46</td>
	<td align=center>72.32</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:05</td>
	<td align=center>6.47</td>
	<td align=center>72.32</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center>6.48</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:55</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:50</td>
	<td align=center>6.48</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:45</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:40</td>
	<td align=center>6.48</td>
	<td align=center>72.32</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:35</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:30</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:25</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:20</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.92</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:15</td>
	<td align=center>6.46</td>
	<td align=center>72.32</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.92</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:10</td>
	<td align=center>6.47</td>
	<td align=center>72.32</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:05</td>
	<td align=center>6.47</td>
	<td align=center>72.32</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center>6.48</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:55</td>
	<td align=center>6.48</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:50</td>
	<td align=center>6.48</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:45</td>
	<td align=center>6.49</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:40</td>
	<td align=center>6.48</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:35</td>
	<td align=center>6.48</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:30</td>
	<td align=center>6.48</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:25</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:20</td>
	<td align=center>6.47</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:15</td>
	<td align=center>6.47</td>
	<td align=center>72.32</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:10</td>
	<td align=center>6.48</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:05</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:55</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:50</td>
	<td align=center>6.48</td>
	<td align=center>72.35</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:45</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:40</td>
	<td align=center>6.48</td>
	<td align=center>72.32</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:35</td>
	<td align=center>6.48</td>
	<td align=center>72.34</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.85</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:30</td>
	<td align=center>6.48</td>
	<td align=center>72.34</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.84</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:25</td>
	<td align=center>6.47</td>
	<td align=center>72.35</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.84</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:20</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:15</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.85</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:10</td>
	<td align=center>6.47</td>
	<td align=center>72.34</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.86</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:05</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.86</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:55</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:50</td>
	<td align=center>6.47</td>
	<td align=center>72.32</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:45</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:40</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.55</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:35</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:30</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:25</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:20</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:15</td>
	<td align=center>6.45</td>
	<td align=center>72.35</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:10</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.87</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:05</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:55</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:50</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:45</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:40</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:35</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:30</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.55</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:25</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.93</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:20</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:15</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:10</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:05</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:55</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:50</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.92</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:45</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:40</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:35</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:30</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:25</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:20</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:15</td>
	<td align=center>6.46</td>
	<td align=center>72.35</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.89</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:10</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:05</td>
	<td align=center>6.44</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.97</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center>6.42</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.02</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:55</td>
	<td align=center>6.43</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:50</td>
	<td align=center>6.42</td>
	<td align=center>72.29</td>
	<td align=center>3.50</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.05</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:45</td>
	<td align=center>6.42</td>
	<td align=center>72.29</td>
	<td align=center>3.50</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.05</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:40</td>
	<td align=center>6.43</td>
	<td align=center>72.32</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:35</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.97</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:30</td>
	<td align=center>6.45</td>
	<td align=center>72.33</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:25</td>
	<td align=center>6.44</td>
	<td align=center>72.31</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:20</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:15</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.97</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:10</td>
	<td align=center>6.46</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:05</td>
	<td align=center>6.44</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:55</td>
	<td align=center>6.46</td>
	<td align=center>72.32</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:50</td>
	<td align=center>6.45</td>
	<td align=center>72.33</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:45</td>
	<td align=center>6.46</td>
	<td align=center>72.32</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:40</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:35</td>
	<td align=center>6.44</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:30</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:25</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:20</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:15</td>
	<td align=center>6.45</td>
	<td align=center>72.33</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:10</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:05</td>
	<td align=center>6.45</td>
	<td align=center>72.33</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:55</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.97</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:50</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:45</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:40</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.97</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:35</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.93</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:30</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.97</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:25</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:20</td>
	<td align=center>6.45</td>
	<td align=center>72.33</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.04</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:15</td>
	<td align=center>6.44</td>
	<td align=center>72.31</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:10</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:05</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center>6.44</td>
	<td align=center>72.33</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:55</td>
	<td align=center>6.45</td>
	<td align=center>72.33</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:50</td>
	<td align=center>6.45</td>
	<td align=center>72.30</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:45</td>
	<td align=center>6.45</td>
	<td align=center>72.30</td>
	<td align=center>3.52</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:40</td>
	<td align=center>6.44</td>
	<td align=center>72.29</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.01</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:35</td>
	<td align=center>6.45</td>
	<td align=center>72.32</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:30</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:25</td>
	<td align=center>6.44</td>
	<td align=center>72.32</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:20</td>
	<td align=center>6.45</td>
	<td align=center>72.30</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:15</td>
	<td align=center>6.44</td>
	<td align=center>72.30</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.01</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:10</td>
	<td align=center>6.44</td>
	<td align=center>72.28</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.02</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:05</td>
	<td align=center>6.44</td>
	<td align=center>72.30</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:00</td>
	<td align=center>6.44</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:55</td>
	<td align=center>6.44</td>
	<td align=center>72.32</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:50</td>
	<td align=center>6.44</td>
	<td align=center>72.32</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:45</td>
	<td align=center>6.43</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:40</td>
	<td align=center>6.44</td>
	<td align=center>72.29</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.00</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:35</td>
	<td align=center>6.44</td>
	<td align=center>72.28</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>16.01</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:30</td>
	<td align=center>6.44</td>
	<td align=center>72.32</td>
	<td align=center>3.51</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:25</td>
	<td align=center>6.44</td>
	<td align=center>72.31</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:20</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:15</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.52</td>
	<td align=center>1.04</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.98</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:10</td>
	<td align=center>6.45</td>
	<td align=center>72.31</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.95</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:05</td>
	<td align=center>6.46</td>
	<td align=center>72.32</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.10</td>
	<td align=center>15.93</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:55</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:50</td>
	<td align=center>6.47</td>
	<td align=center>72.34</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:45</td>
	<td align=center>6.46</td>
	<td align=center>72.36</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.90</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:40</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:35</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:30</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:25</td>
	<td align=center>6.46</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:20</td>
	<td align=center>6.47</td>
	<td align=center>72.33</td>
	<td align=center>3.54</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:15</td>
	<td align=center>6.47</td>
	<td align=center>72.31</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:10</td>
	<td align=center>6.46</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.10</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:05</td>
	<td align=center>6.45</td>
	<td align=center>72.34</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.09</td>
	<td align=center>15.93</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
	<td>&nbsp;</td> 
  </tr>
	
 </table>
<p><strong><font face="MS Sans Serif"><small>*** ตัวอักษร สีดำ หมายถึง ค่าเฉลี่ยต่อชั่วโมง 
  และ <font
color="#FF0000">สีแดง</font> หมายถึง ค่าปัจจุบัน ***</small></font></strong></p>
<p><u><strong><font face="MS Sans Serif"><small>หมายเหตุ</small></font></strong></u></p>
<blockquote> 
  <p><font face="MS Sans Serif"><small>1. ไม่ใช่ข้อมูลที่ใช้ซื้อขาย</small></font></p>
  <p><font face="MS Sans Serif"><small>2. ข้อมูลอาจ ERROR จากกำลังสอบเทียบ</small></font></p>
  <p><font face="MS Sans Serif"><small>3. Wobbe Index = HHV(dry)/SQR(SG)</small></font></p>
  <p><font face="MS Sans Serif"><small>4. HHV(dry) x 0.9826 = HHV(sat)</small></font></p>
  <p><font face="MS Sans Serif"><small>5. ก่อนใช้ข้อมูลปรับแต่งอุปกรณ์ ควรสอบทวนกับ 
	Gas Control โทร. (038) 274397-9</small></font></p>
</blockquote>
</body>
</html>
