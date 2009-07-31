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
<title>Gas Composition Past 7 Days (BIT)</title>
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
	timerID = setTimeout(document.location='9_12.asp',300000);	  
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
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Gas Composition Past 7 days (BIT)</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT Ban I Tong (BIT) - PAST 7 DAYS</strong></td>
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
  </tr>

  
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:00</td>
	<td align=center>6.40</td>
	<td align=center>72.60</td>
	<td align=center>3.53</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.77</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center>6.38</td>
	<td align=center>72.59</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.82</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center>6.38</td>
	<td align=center>72.57</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.86</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center>6.38</td>
	<td align=center>72.57</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.83</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center>6.38</td>
	<td align=center>72.56</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center>6.38</td>
	<td align=center>72.54</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.87</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center>6.37</td>
	<td align=center>72.53</td>
	<td align=center>3.49</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center>6.38</td>
	<td align=center>72.57</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center>6.37</td>
	<td align=center>72.52</td>
	<td align=center>3.49</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.93</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center>6.37</td>
	<td align=center>72.53</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center>6.39</td>
	<td align=center>72.54</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.87</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center>6.43</td>
	<td align=center>72.54</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.80</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center>6.44</td>
	<td align=center>72.56</td>
	<td align=center>3.53</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.75</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center>6.43</td>
	<td align=center>72.55</td>
	<td align=center>3.53</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.76</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center>6.42</td>
	<td align=center>72.53</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.82</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center>6.43</td>
	<td align=center>72.55</td>
	<td align=center>3.53</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.77</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center>6.45</td>
	<td align=center>72.58</td>
	<td align=center>3.55</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.69</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center>6.42</td>
	<td align=center>72.53</td>
	<td align=center>3.53</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.80</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center>6.43</td>
	<td align=center>72.55</td>
	<td align=center>3.53</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.78</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center>6.42</td>
	<td align=center>72.56</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.78</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center>6.43</td>
	<td align=center>72.52</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.78</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:01</td>
	<td align=center>6.43</td>
	<td align=center>72.51</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.80</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center>6.46</td>
	<td align=center>72.52</td>
	<td align=center>3.54</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.73</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:00</td>
	<td align=center>6.42</td>
	<td align=center>72.51</td>
	<td align=center>3.53</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.78</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;10:00</td>
	<td align=center>6.40</td>
	<td align=center>72.52</td>
	<td align=center>3.51</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;09:00</td>
	<td align=center>6.41</td>
	<td align=center>72.51</td>
	<td align=center>3.51</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;08:00</td>
	<td align=center>6.39</td>
	<td align=center>72.49</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;07:00</td>
	<td align=center>6.40</td>
	<td align=center>72.48</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;06:00</td>
	<td align=center>6.40</td>
	<td align=center>72.49</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;05:00</td>
	<td align=center>6.41</td>
	<td align=center>72.50</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;04:00</td>
	<td align=center>6.41</td>
	<td align=center>72.50</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;03:00</td>
	<td align=center>6.41</td>
	<td align=center>72.49</td>
	<td align=center>3.51</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;02:00</td>
	<td align=center>6.40</td>
	<td align=center>72.49</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;01:00</td>
	<td align=center>6.39</td>
	<td align=center>72.51</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;00:00</td>
	<td align=center>6.41</td>
	<td align=center>72.55</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.81</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;23:00</td>
	<td align=center>6.46</td>
	<td align=center>72.49</td>
	<td align=center>3.54</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.80</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;22:00</td>
	<td align=center>6.37</td>
	<td align=center>72.56</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;21:00</td>
	<td align=center>6.38</td>
	<td align=center>72.55</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;20:00</td>
	<td align=center>6.39</td>
	<td align=center>72.55</td>
	<td align=center>3.52</td>
	<td align=center>1.06</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.81</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;19:00</td>
	<td align=center>6.37</td>
	<td align=center>72.54</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;18:01</td>
	<td align=center>6.37</td>
	<td align=center>72.55</td>
	<td align=center>3.51</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;17:00</td>
	<td align=center>6.36</td>
	<td align=center>72.53</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;16:00</td>
	<td align=center>6.37</td>
	<td align=center>72.53</td>
	<td align=center>3.50</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;15:00</td>
	<td align=center>6.36</td>
	<td align=center>72.50</td>
	<td align=center>3.48</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.96</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;14:00</td>
	<td align=center>6.36</td>
	<td align=center>72.50</td>
	<td align=center>3.48</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.96</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;13:00</td>
	<td align=center>6.34</td>
	<td align=center>72.50</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;12:00</td>
	<td align=center>6.37</td>
	<td align=center>72.52</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;11:00</td>
	<td align=center>6.34</td>
	<td align=center>72.52</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.97</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;10:01</td>
	<td align=center>6.36</td>
	<td align=center>72.52</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.93</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;09:00</td>
	<td align=center>6.36</td>
	<td align=center>72.52</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;08:00</td>
	<td align=center>6.33</td>
	<td align=center>72.50</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;07:00</td>
	<td align=center>6.34</td>
	<td align=center>72.50</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;06:00</td>
	<td align=center>6.34</td>
	<td align=center>72.51</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;05:00</td>
	<td align=center>6.35</td>
	<td align=center>72.49</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;04:00</td>
	<td align=center>6.35</td>
	<td align=center>72.50</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.98</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;03:00</td>
	<td align=center>6.35</td>
	<td align=center>72.51</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.96</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;02:00</td>
	<td align=center>6.34</td>
	<td align=center>72.50</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;01:00</td>
	<td align=center>6.31</td>
	<td align=center>72.46</td>
	<td align=center>3.43</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.11</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;00:00</td>
	<td align=center>6.36</td>
	<td align=center>72.49</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;23:00</td>
	<td align=center>6.35</td>
	<td align=center>72.49</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.98</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;22:00</td>
	<td align=center>6.34</td>
	<td align=center>72.50</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;21:00</td>
	<td align=center>6.36</td>
	<td align=center>72.50</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.97</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;20:00</td>
	<td align=center>6.33</td>
	<td align=center>72.52</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.01</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;19:00</td>
	<td align=center>6.35</td>
	<td align=center>72.54</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.96</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;18:00</td>
	<td align=center>6.35</td>
	<td align=center>72.51</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.00</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;17:00</td>
	<td align=center>6.32</td>
	<td align=center>72.48</td>
	<td align=center>3.43</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.10</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;16:00</td>
	<td align=center>6.32</td>
	<td align=center>72.47</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.09</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;15:00</td>
	<td align=center>6.29</td>
	<td align=center>72.55</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.02</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;14:00</td>
	<td align=center>6.20</td>
	<td align=center>72.59</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.07</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;13:00</td>
	<td align=center>6.22</td>
	<td align=center>72.61</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.01</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;12:00</td>
	<td align=center>6.21</td>
	<td align=center>72.64</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.00</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;11:00</td>
	<td align=center>6.19</td>
	<td align=center>72.62</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.06</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;10:00</td>
	<td align=center>6.20</td>
	<td align=center>72.63</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.01</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;09:00</td>
	<td align=center>6.22</td>
	<td align=center>72.64</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.96</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;08:00</td>
	<td align=center>6.19</td>
	<td align=center>72.60</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.08</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;07:00</td>
	<td align=center>6.19</td>
	<td align=center>72.60</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.08</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;06:00</td>
	<td align=center>6.18</td>
	<td align=center>72.61</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.11</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;05:00</td>
	<td align=center>6.19</td>
	<td align=center>72.61</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.08</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;04:00</td>
	<td align=center>6.20</td>
	<td align=center>72.60</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.05</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;03:00</td>
	<td align=center>6.20</td>
	<td align=center>72.58</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.11</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;02:00</td>
	<td align=center>6.23</td>
	<td align=center>72.58</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.05</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;01:00</td>
	<td align=center>6.21</td>
	<td align=center>72.58</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.08</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;00:00</td>
	<td align=center>6.22</td>
	<td align=center>72.61</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;23:00</td>
	<td align=center>6.20</td>
	<td align=center>72.61</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.05</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;22:00</td>
	<td align=center>6.20</td>
	<td align=center>72.61</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.04</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;21:00</td>
	<td align=center>6.30</td>
	<td align=center>72.55</td>
	<td align=center>3.48</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.98</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;20:00</td>
	<td align=center>6.29</td>
	<td align=center>72.53</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;19:00</td>
	<td align=center>6.29</td>
	<td align=center>72.55</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.00</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;18:00</td>
	<td align=center>6.27</td>
	<td align=center>72.53</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>16.09</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;17:00</td>
	<td align=center>6.30</td>
	<td align=center>72.53</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;16:00</td>
	<td align=center>6.26</td>
	<td align=center>72.51</td>
	<td align=center>3.45</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.08</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;15:00</td>
	<td align=center>6.29</td>
	<td align=center>72.41</td>
	<td align=center>3.45</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.14</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;14:00</td>
	<td align=center>6.28</td>
	<td align=center>72.54</td>
	<td align=center>3.47</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;13:00</td>
	<td align=center>6.29</td>
	<td align=center>72.54</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;12:00</td>
	<td align=center>6.28</td>
	<td align=center>72.53</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.02</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;11:00</td>
	<td align=center>6.22</td>
	<td align=center>72.43</td>
	<td align=center>3.38</td>
	<td align=center>1.01</td>
	<td align=center>0.20</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.31</td>
	<td align=center>844</td>
	<td align=center>0.72</td>
	<td align=center>995</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;10:00</td>
	<td align=center>6.23</td>
	<td align=center>72.46</td>
	<td align=center>3.40</td>
	<td align=center>1.02</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.23</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;09:00</td>
	<td align=center>6.30</td>
	<td align=center>72.56</td>
	<td align=center>3.49</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.94</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;08:00</td>
	<td align=center>6.28</td>
	<td align=center>72.52</td>
	<td align=center>3.48</td>
	<td align=center>1.05</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.99</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;07:00</td>
	<td align=center>6.27</td>
	<td align=center>72.50</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.06</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;06:00</td>
	<td align=center>6.27</td>
	<td align=center>72.50</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.07</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;05:00</td>
	<td align=center>6.29</td>
	<td align=center>72.48</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.12</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;04:00</td>
	<td align=center>6.28</td>
	<td align=center>72.47</td>
	<td align=center>3.43</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.15</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;03:00</td>
	<td align=center>6.30</td>
	<td align=center>72.49</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.08</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;02:00</td>
	<td align=center>6.32</td>
	<td align=center>72.54</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.98</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;01:00</td>
	<td align=center>6.30</td>
	<td align=center>72.45</td>
	<td align=center>3.43</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.14</td>
	<td align=center>845</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;00:00</td>
	<td align=center>6.34</td>
	<td align=center>72.50</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.97</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;23:00</td>
	<td align=center>6.34</td>
	<td align=center>72.49</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;22:00</td>
	<td align=center>6.33</td>
	<td align=center>72.50</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.03</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;21:00</td>
	<td align=center>6.32</td>
	<td align=center>72.46</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.09</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;20:00</td>
	<td align=center>6.34</td>
	<td align=center>72.45</td>
	<td align=center>3.46</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.06</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;19:00</td>
	<td align=center>6.31</td>
	<td align=center>72.47</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.09</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>997</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;18:00</td>
	<td align=center>6.34</td>
	<td align=center>72.49</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.01</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;17:00</td>
	<td align=center>6.35</td>
	<td align=center>72.52</td>
	<td align=center>3.47</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.97</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>998</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;16:00</td>
	<td align=center>6.33</td>
	<td align=center>72.47</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>16.09</td>
	<td align=center>846</td>
	<td align=center>0.72</td>
	<td align=center>996</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;15:00</td>
	<td align=center>6.35</td>
	<td align=center>72.55</td>
	<td align=center>3.51</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.25</td>
	<td align=center>0.11</td>
	<td align=center>0.06</td>
	<td align=center>0.09</td>
	<td align=center>15.78</td>
	<td align=center>852</td>
	<td align=center>0.72</td>
	<td align=center>1003</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;14:00</td>
	<td align=center>6.30</td>
	<td align=center>72.66</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;13:00</td>
	<td align=center>6.31</td>
	<td align=center>72.72</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.81</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;12:00</td>
	<td align=center>6.30</td>
	<td align=center>72.69</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;11:00</td>
	<td align=center>6.29</td>
	<td align=center>72.69</td>
	<td align=center>3.44</td>
	<td align=center>1.02</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;10:00</td>
	<td align=center>6.32</td>
	<td align=center>72.71</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.80</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;09:00</td>
	<td align=center>6.30</td>
	<td align=center>72.68</td>
	<td align=center>3.48</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;08:00</td>
	<td align=center>6.28</td>
	<td align=center>72.68</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;07:00</td>
	<td align=center>6.28</td>
	<td align=center>72.71</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;06:00</td>
	<td align=center>6.29</td>
	<td align=center>72.72</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.82</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;05:00</td>
	<td align=center>6.27</td>
	<td align=center>72.71</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;04:00</td>
	<td align=center>6.27</td>
	<td align=center>72.69</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;03:00</td>
	<td align=center>6.26</td>
	<td align=center>72.71</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;02:00</td>
	<td align=center>6.27</td>
	<td align=center>72.69</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;01:00</td>
	<td align=center>6.28</td>
	<td align=center>72.71</td>
	<td align=center>3.48</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;00:00</td>
	<td align=center>6.29</td>
	<td align=center>72.68</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;23:00</td>
	<td align=center>6.29</td>
	<td align=center>72.68</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;22:00</td>
	<td align=center>6.29</td>
	<td align=center>72.71</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;21:00</td>
	<td align=center>6.28</td>
	<td align=center>72.70</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;20:00</td>
	<td align=center>6.27</td>
	<td align=center>72.67</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.94</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;19:00</td>
	<td align=center>6.28</td>
	<td align=center>72.69</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;18:00</td>
	<td align=center>6.30</td>
	<td align=center>72.69</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.87</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;17:00</td>
	<td align=center>6.29</td>
	<td align=center>72.69</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;16:00</td>
	<td align=center>6.30</td>
	<td align=center>72.72</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;15:00</td>
	<td align=center>6.28</td>
	<td align=center>72.70</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;14:00</td>
	<td align=center>6.28</td>
	<td align=center>72.72</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;13:00</td>
	<td align=center>6.28</td>
	<td align=center>72.72</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;12:00</td>
	<td align=center>6.30</td>
	<td align=center>72.69</td>
	<td align=center>3.49</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;11:00</td>
	<td align=center>6.29</td>
	<td align=center>72.71</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;10:00</td>
	<td align=center>6.29</td>
	<td align=center>72.71</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;09:00</td>
	<td align=center>6.26</td>
	<td align=center>72.68</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;08:00</td>
	<td align=center>6.27</td>
	<td align=center>72.69</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;07:00</td>
	<td align=center>6.27</td>
	<td align=center>72.69</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;06:00</td>
	<td align=center>6.28</td>
	<td align=center>72.72</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.86</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;05:00</td>
	<td align=center>6.28</td>
	<td align=center>72.70</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.90</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;04:00</td>
	<td align=center>6.26</td>
	<td align=center>72.69</td>
	<td align=center>3.44</td>
	<td align=center>1.02</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.93</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;03:00</td>
	<td align=center>6.27</td>
	<td align=center>72.71</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.88</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;02:00</td>
	<td align=center>6.26</td>
	<td align=center>72.73</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.89</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;01:00</td>
	<td align=center>6.28</td>
	<td align=center>72.72</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.85</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;00:00</td>
	<td align=center>6.28</td>
	<td align=center>72.69</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.88</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;23:00</td>
	<td align=center>6.29</td>
	<td align=center>72.64</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.91</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;22:00</td>
	<td align=center>6.27</td>
	<td align=center>72.65</td>
	<td align=center>3.44</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.95</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;21:00</td>
	<td align=center>6.29</td>
	<td align=center>72.73</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.24</td>
	<td align=center>0.10</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.83</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1002</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;20:00</td>
	<td align=center>6.30</td>
	<td align=center>72.74</td>
	<td align=center>3.48</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.80</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1002</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;19:00</td>
	<td align=center>6.29</td>
	<td align=center>72.78</td>
	<td align=center>3.49</td>
	<td align=center>1.04</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.07</td>
	<td align=center>15.75</td>
	<td align=center>850</td>
	<td align=center>0.72</td>
	<td align=center>1002</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;18:00</td>
	<td align=center>6.25</td>
	<td align=center>72.71</td>
	<td align=center>3.44</td>
	<td align=center>1.02</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.93</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;17:00</td>
	<td align=center>6.28</td>
	<td align=center>72.72</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.86</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;16:00</td>
	<td align=center>6.27</td>
	<td align=center>72.69</td>
	<td align=center>3.45</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.92</td>
	<td align=center>848</td>
	<td align=center>0.72</td>
	<td align=center>1000</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;15:00</td>
	<td align=center>6.27</td>
	<td align=center>72.75</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.84</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1001</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;14:00</td>
	<td align=center>6.29</td>
	<td align=center>72.79</td>
	<td align=center>3.47</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.78</td>
	<td align=center>849</td>
	<td align=center>0.72</td>
	<td align=center>1002</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;13:00</td>
	<td align=center>6.35</td>
	<td align=center>72.66</td>
	<td align=center>3.46</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.88</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;12:00</td>
	<td align=center>6.35</td>
	<td align=center>72.70</td>
	<td align=center>3.46</td>
	<td align=center>1.02</td>
	<td align=center>0.21</td>
	<td align=center>0.23</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>15.84</td>
	<td align=center>847</td>
	<td align=center>0.72</td>
	<td align=center>999</td> 
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
