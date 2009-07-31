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
<title>Current Gas Composition</title>
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
	timerID = setTimeout(document.location='9_6.asp',300000);	  
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
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT MTP
	  (AT DPCU) - CURRENT</strong></td>
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
	<td align=center>13.70</td>
	<td align=center>75.08</td>
	<td align=center>6.22</td>
	<td align=center>1.97</td>
	<td align=center>0.41</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>1.95</td>
	<td align=center>961</td>
	<td align=center>0.76</td>
	<td align=center>1100</td> 
	<td align=center></td> 
  </tr>
	
			
  <tr class="body1" bgcolor="#FAF9E7" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
	<td align=center>11.37</td>
	<td align=center>77.97</td>
	<td align=center>5.72</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.04</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td> 
	<td align=center></td> 
  </tr>
  

			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:45</td>
	<td align=center>11.37</td>
	<td align=center>77.97</td>
	<td align=center>5.72</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.04</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:40</td>
	<td align=center>11.40</td>
	<td align=center>77.90</td>
	<td align=center>5.73</td>
	<td align=center>1.86</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.04</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:35</td>
	<td align=center>11.32</td>
	<td align=center>78.04</td>
	<td align=center>5.73</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.04</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:30</td>
	<td align=center>11.16</td>
	<td align=center>78.27</td>
	<td align=center>5.70</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.05</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:25</td>
	<td align=center>11.11</td>
	<td align=center>78.31</td>
	<td align=center>5.73</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.03</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1143</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:20</td>
	<td align=center>11.16</td>
	<td align=center>78.29</td>
	<td align=center>5.71</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.02</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:15</td>
	<td align=center>11.13</td>
	<td align=center>78.33</td>
	<td align=center>5.70</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.03</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:10</td>
	<td align=center>11.15</td>
	<td align=center>78.30</td>
	<td align=center>5.70</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.01</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:05</td>
	<td align=center>11.20</td>
	<td align=center>78.21</td>
	<td align=center>5.72</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.01</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;10:00</td>
	<td align=center>11.15</td>
	<td align=center>78.27</td>
	<td align=center>5.72</td>
	<td align=center>1.81</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.00</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1143</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:55</td>
	<td align=center>11.14</td>
	<td align=center>78.25</td>
	<td align=center>5.73</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.00</td>
	<td align=center>979</td>
	<td align=center>0.73</td>
	<td align=center>1143</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:50</td>
	<td align=center>11.11</td>
	<td align=center>78.29</td>
	<td align=center>5.74</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>1.99</td>
	<td align=center>980</td>
	<td align=center>0.73</td>
	<td align=center>1144</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:45</td>
	<td align=center>11.18</td>
	<td align=center>78.40</td>
	<td align=center>5.56</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>1.99</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:40</td>
	<td align=center>11.17</td>
	<td align=center>78.45</td>
	<td align=center>5.53</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>1.99</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:35</td>
	<td align=center>11.19</td>
	<td align=center>78.39</td>
	<td align=center>5.55</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>1.99</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:30</td>
	<td align=center>11.10</td>
	<td align=center>78.50</td>
	<td align=center>5.54</td>
	<td align=center>1.82</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>1.99</td>
	<td align=center>978</td>
	<td align=center>0.73</td>
	<td align=center>1143</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:25</td>
	<td align=center>11.13</td>
	<td align=center>78.56</td>
	<td align=center>5.49</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.00</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:20</td>
	<td align=center>11.11</td>
	<td align=center>78.62</td>
	<td align=center>5.48</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.01</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:15</td>
	<td align=center>11.07</td>
	<td align=center>78.72</td>
	<td align=center>5.46</td>
	<td align=center>1.75</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.01</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:10</td>
	<td align=center>11.04</td>
	<td align=center>78.78</td>
	<td align=center>5.43</td>
	<td align=center>1.74</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.01</td>
	<td align=center>975</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:05</td>
	<td align=center>11.03</td>
	<td align=center>78.81</td>
	<td align=center>5.41</td>
	<td align=center>1.74</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.02</td>
	<td align=center>975</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;09:00</td>
	<td align=center>11.07</td>
	<td align=center>78.69</td>
	<td align=center>5.46</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.02</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:55</td>
	<td align=center>11.19</td>
	<td align=center>78.48</td>
	<td align=center>5.50</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.02</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:50</td>
	<td align=center>11.22</td>
	<td align=center>78.42</td>
	<td align=center>5.52</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.02</td>
	<td align=center>976</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:45</td>
	<td align=center>11.34</td>
	<td align=center>78.17</td>
	<td align=center>5.56</td>
	<td align=center>1.86</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.02</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:40</td>
	<td align=center>11.34</td>
	<td align=center>78.15</td>
	<td align=center>5.56</td>
	<td align=center>1.87</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.01</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:35</td>
	<td align=center>11.30</td>
	<td align=center>78.22</td>
	<td align=center>5.55</td>
	<td align=center>1.86</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.02</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:30</td>
	<td align=center>11.29</td>
	<td align=center>78.22</td>
	<td align=center>5.55</td>
	<td align=center>1.87</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.02</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:25</td>
	<td align=center>11.26</td>
	<td align=center>78.25</td>
	<td align=center>5.57</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.03</td>
	<td align=center>977</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:20</td>
	<td align=center>11.34</td>
	<td align=center>78.15</td>
	<td align=center>5.57</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.05</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:15</td>
	<td align=center>11.31</td>
	<td align=center>78.26</td>
	<td align=center>5.52</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.05</td>
	<td align=center>975</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:10</td>
	<td align=center>11.29</td>
	<td align=center>78.29</td>
	<td align=center>5.53</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.07</td>
	<td align=center>974</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:05</td>
	<td align=center>11.27</td>
	<td align=center>78.38</td>
	<td align=center>5.45</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.09</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;08:00</td>
	<td align=center>11.29</td>
	<td align=center>78.44</td>
	<td align=center>5.39</td>
	<td align=center>1.78</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.11</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:55</td>
	<td align=center>11.34</td>
	<td align=center>78.38</td>
	<td align=center>5.40</td>
	<td align=center>1.78</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:50</td>
	<td align=center>11.29</td>
	<td align=center>78.47</td>
	<td align=center>5.36</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.13</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:45</td>
	<td align=center>11.27</td>
	<td align=center>78.50</td>
	<td align=center>5.36</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.13</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:40</td>
	<td align=center>11.05</td>
	<td align=center>78.88</td>
	<td align=center>5.29</td>
	<td align=center>1.69</td>
	<td align=center>0.37</td>
	<td align=center>0.34</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:35</td>
	<td align=center>11.02</td>
	<td align=center>78.97</td>
	<td align=center>5.25</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:30</td>
	<td align=center>11.04</td>
	<td align=center>78.89</td>
	<td align=center>5.32</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:25</td>
	<td align=center>10.91</td>
	<td align=center>79.26</td>
	<td align=center>5.21</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>968</td>
	<td align=center>0.72</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:20</td>
	<td align=center>10.17</td>
	<td align=center>80.91</td>
	<td align=center>4.81</td>
	<td align=center>1.21</td>
	<td align=center>0.26</td>
	<td align=center>0.23</td>
	<td align=center>0.07</td>
	<td align=center>0.05</td>
	<td align=center>0.04</td>
	<td align=center>2.25</td>
	<td align=center>960</td>
	<td align=center>0.71</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:15</td>
	<td align=center>8.83</td>
	<td align=center>83.82</td>
	<td align=center>4.05</td>
	<td align=center>0.60</td>
	<td align=center>0.12</td>
	<td align=center>0.11</td>
	<td align=center>0.04</td>
	<td align=center>0.02</td>
	<td align=center>0.02</td>
	<td align=center>2.39</td>
	<td align=center>949</td>
	<td align=center>0.68</td>
	<td align=center>1150</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:10</td>
	<td align=center>7.85</td>
	<td align=center>86.02</td>
	<td align=center>3.51</td>
	<td align=center>0.12</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.00</td>
	<td align=center>2.46</td>
	<td align=center>940</td>
	<td align=center>0.66</td>
	<td align=center>1157</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:05</td>
	<td align=center>7.86</td>
	<td align=center>86.02</td>
	<td align=center>3.50</td>
	<td align=center>0.12</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.00</td>
	<td align=center>2.46</td>
	<td align=center>940</td>
	<td align=center>0.66</td>
	<td align=center>1156</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;07:00</td>
	<td align=center>7.76</td>
	<td align=center>86.14</td>
	<td align=center>3.50</td>
	<td align=center>0.12</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.00</td>
	<td align=center>2.44</td>
	<td align=center>941</td>
	<td align=center>0.66</td>
	<td align=center>1159</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:55</td>
	<td align=center>7.77</td>
	<td align=center>86.09</td>
	<td align=center>3.54</td>
	<td align=center>0.12</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.00</td>
	<td align=center>2.44</td>
	<td align=center>941</td>
	<td align=center>0.66</td>
	<td align=center>1159</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:50</td>
	<td align=center>7.70</td>
	<td align=center>86.13</td>
	<td align=center>3.56</td>
	<td align=center>0.14</td>
	<td align=center>0.02</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.01</td>
	<td align=center>0.00</td>
	<td align=center>2.41</td>
	<td align=center>943</td>
	<td align=center>0.66</td>
	<td align=center>1161</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:45</td>
	<td align=center>9.65</td>
	<td align=center>81.86</td>
	<td align=center>4.68</td>
	<td align=center>1.00</td>
	<td align=center>0.21</td>
	<td align=center>0.19</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.26</td>
	<td align=center>959</td>
	<td align=center>0.70</td>
	<td align=center>1146</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:40</td>
	<td align=center>10.89</td>
	<td align=center>79.07</td>
	<td align=center>5.36</td>
	<td align=center>1.61</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:35</td>
	<td align=center>10.88</td>
	<td align=center>79.10</td>
	<td align=center>5.34</td>
	<td align=center>1.62</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:30</td>
	<td align=center>10.83</td>
	<td align=center>79.13</td>
	<td align=center>5.36</td>
	<td align=center>1.61</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:25</td>
	<td align=center>10.83</td>
	<td align=center>79.15</td>
	<td align=center>5.34</td>
	<td align=center>1.61</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:20</td>
	<td align=center>10.80</td>
	<td align=center>79.24</td>
	<td align=center>5.31</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:15</td>
	<td align=center>10.78</td>
	<td align=center>79.32</td>
	<td align=center>5.29</td>
	<td align=center>1.57</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:10</td>
	<td align=center>10.81</td>
	<td align=center>79.30</td>
	<td align=center>5.28</td>
	<td align=center>1.57</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>969</td>
	<td align=center>0.72</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:05</td>
	<td align=center>10.78</td>
	<td align=center>79.33</td>
	<td align=center>5.31</td>
	<td align=center>1.55</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>969</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;06:00</td>
	<td align=center>10.74</td>
	<td align=center>79.41</td>
	<td align=center>5.27</td>
	<td align=center>1.55</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:55</td>
	<td align=center>10.74</td>
	<td align=center>79.31</td>
	<td align=center>5.36</td>
	<td align=center>1.56</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:50</td>
	<td align=center>10.76</td>
	<td align=center>79.29</td>
	<td align=center>5.36</td>
	<td align=center>1.56</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:45</td>
	<td align=center>10.83</td>
	<td align=center>79.13</td>
	<td align=center>5.41</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:40</td>
	<td align=center>10.81</td>
	<td align=center>79.14</td>
	<td align=center>5.41</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:35</td>
	<td align=center>10.84</td>
	<td align=center>79.06</td>
	<td align=center>5.46</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:30</td>
	<td align=center>10.82</td>
	<td align=center>79.16</td>
	<td align=center>5.41</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:25</td>
	<td align=center>10.78</td>
	<td align=center>79.16</td>
	<td align=center>5.42</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.15</td>
	<td align=center>972</td>
	<td align=center>0.72</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:20</td>
	<td align=center>10.77</td>
	<td align=center>79.17</td>
	<td align=center>5.44</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.15</td>
	<td align=center>972</td>
	<td align=center>0.72</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:15</td>
	<td align=center>10.76</td>
	<td align=center>79.28</td>
	<td align=center>5.37</td>
	<td align=center>1.55</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.14</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:10</td>
	<td align=center>10.75</td>
	<td align=center>79.24</td>
	<td align=center>5.38</td>
	<td align=center>1.57</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.14</td>
	<td align=center>972</td>
	<td align=center>0.72</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:05</td>
	<td align=center>10.72</td>
	<td align=center>79.41</td>
	<td align=center>5.34</td>
	<td align=center>1.54</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.13</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;05:00</td>
	<td align=center>10.75</td>
	<td align=center>79.28</td>
	<td align=center>5.38</td>
	<td align=center>1.57</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.14</td>
	<td align=center>971</td>
	<td align=center>0.72</td>
	<td align=center>1142</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:55</td>
	<td align=center>10.73</td>
	<td align=center>79.38</td>
	<td align=center>5.34</td>
	<td align=center>1.54</td>
	<td align=center>0.34</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.14</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:50</td>
	<td align=center>10.84</td>
	<td align=center>79.18</td>
	<td align=center>5.39</td>
	<td align=center>1.56</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:45</td>
	<td align=center>10.82</td>
	<td align=center>79.25</td>
	<td align=center>5.37</td>
	<td align=center>1.55</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.14</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:40</td>
	<td align=center>10.92</td>
	<td align=center>79.04</td>
	<td align=center>5.44</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.14</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:35</td>
	<td align=center>10.95</td>
	<td align=center>78.97</td>
	<td align=center>5.47</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.13</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:30</td>
	<td align=center>10.93</td>
	<td align=center>78.97</td>
	<td align=center>5.45</td>
	<td align=center>1.60</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.13</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:25</td>
	<td align=center>11.08</td>
	<td align=center>78.69</td>
	<td align=center>5.53</td>
	<td align=center>1.65</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:20</td>
	<td align=center>10.95</td>
	<td align=center>78.93</td>
	<td align=center>5.45</td>
	<td align=center>1.62</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:15</td>
	<td align=center>10.94</td>
	<td align=center>78.84</td>
	<td align=center>5.53</td>
	<td align=center>1.64</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.15</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:10</td>
	<td align=center>10.93</td>
	<td align=center>78.94</td>
	<td align=center>5.47</td>
	<td align=center>1.61</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:05</td>
	<td align=center>10.86</td>
	<td align=center>79.04</td>
	<td align=center>5.45</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;04:00</td>
	<td align=center>10.93</td>
	<td align=center>78.92</td>
	<td align=center>5.48</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:55</td>
	<td align=center>10.83</td>
	<td align=center>79.12</td>
	<td align=center>5.43</td>
	<td align=center>1.57</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:50</td>
	<td align=center>10.80</td>
	<td align=center>79.20</td>
	<td align=center>5.42</td>
	<td align=center>1.55</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:45</td>
	<td align=center>10.76</td>
	<td align=center>79.26</td>
	<td align=center>5.41</td>
	<td align=center>1.55</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1141</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:40</td>
	<td align=center>10.79</td>
	<td align=center>79.23</td>
	<td align=center>5.42</td>
	<td align=center>1.54</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:35</td>
	<td align=center>10.78</td>
	<td align=center>79.30</td>
	<td align=center>5.38</td>
	<td align=center>1.54</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.14</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:30</td>
	<td align=center>10.83</td>
	<td align=center>79.19</td>
	<td align=center>5.41</td>
	<td align=center>1.56</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.13</td>
	<td align=center>970</td>
	<td align=center>0.72</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:25</td>
	<td align=center>10.89</td>
	<td align=center>79.06</td>
	<td align=center>5.43</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.13</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:20</td>
	<td align=center>10.92</td>
	<td align=center>78.99</td>
	<td align=center>5.45</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.13</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:15</td>
	<td align=center>10.99</td>
	<td align=center>78.87</td>
	<td align=center>5.46</td>
	<td align=center>1.62</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:10</td>
	<td align=center>11.02</td>
	<td align=center>78.81</td>
	<td align=center>5.48</td>
	<td align=center>1.64</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.14</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:05</td>
	<td align=center>10.98</td>
	<td align=center>78.88</td>
	<td align=center>5.47</td>
	<td align=center>1.61</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;03:00</td>
	<td align=center>11.00</td>
	<td align=center>78.81</td>
	<td align=center>5.49</td>
	<td align=center>1.63</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:55</td>
	<td align=center>10.98</td>
	<td align=center>78.81</td>
	<td align=center>5.50</td>
	<td align=center>1.63</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:50</td>
	<td align=center>10.91</td>
	<td align=center>78.99</td>
	<td align=center>5.43</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:45</td>
	<td align=center>10.88</td>
	<td align=center>79.03</td>
	<td align=center>5.44</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.18</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:40</td>
	<td align=center>10.86</td>
	<td align=center>79.04</td>
	<td align=center>5.45</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.17</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1140</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:35</td>
	<td align=center>10.88</td>
	<td align=center>79.02</td>
	<td align=center>5.46</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:30</td>
	<td align=center>10.88</td>
	<td align=center>79.04</td>
	<td align=center>5.44</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:25</td>
	<td align=center>10.96</td>
	<td align=center>78.91</td>
	<td align=center>5.47</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.18</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:20</td>
	<td align=center>10.94</td>
	<td align=center>78.93</td>
	<td align=center>5.46</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:15</td>
	<td align=center>10.99</td>
	<td align=center>78.81</td>
	<td align=center>5.49</td>
	<td align=center>1.62</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:10</td>
	<td align=center>11.02</td>
	<td align=center>78.74</td>
	<td align=center>5.51</td>
	<td align=center>1.63</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:05</td>
	<td align=center>11.08</td>
	<td align=center>78.57</td>
	<td align=center>5.58</td>
	<td align=center>1.66</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;02:00</td>
	<td align=center>11.03</td>
	<td align=center>78.67</td>
	<td align=center>5.55</td>
	<td align=center>1.65</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:55</td>
	<td align=center>11.04</td>
	<td align=center>78.61</td>
	<td align=center>5.59</td>
	<td align=center>1.66</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:50</td>
	<td align=center>11.00</td>
	<td align=center>78.67</td>
	<td align=center>5.58</td>
	<td align=center>1.65</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:45</td>
	<td align=center>11.00</td>
	<td align=center>78.63</td>
	<td align=center>5.63</td>
	<td align=center>1.65</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:40</td>
	<td align=center>11.00</td>
	<td align=center>78.58</td>
	<td align=center>5.66</td>
	<td align=center>1.66</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:35</td>
	<td align=center>11.02</td>
	<td align=center>78.71</td>
	<td align=center>5.52</td>
	<td align=center>1.65</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:30</td>
	<td align=center>11.00</td>
	<td align=center>78.74</td>
	<td align=center>5.51</td>
	<td align=center>1.65</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:25</td>
	<td align=center>11.07</td>
	<td align=center>78.64</td>
	<td align=center>5.53</td>
	<td align=center>1.66</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1138</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:20</td>
	<td align=center>11.05</td>
	<td align=center>78.75</td>
	<td align=center>5.47</td>
	<td align=center>1.63</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:15</td>
	<td align=center>11.07</td>
	<td align=center>78.74</td>
	<td align=center>5.47</td>
	<td align=center>1.64</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:10</td>
	<td align=center>11.11</td>
	<td align=center>78.65</td>
	<td align=center>5.50</td>
	<td align=center>1.64</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:05</td>
	<td align=center>11.09</td>
	<td align=center>78.66</td>
	<td align=center>5.53</td>
	<td align=center>1.63</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;01:00</td>
	<td align=center>11.10</td>
	<td align=center>78.67</td>
	<td align=center>5.46</td>
	<td align=center>1.66</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:55</td>
	<td align=center>11.10</td>
	<td align=center>78.65</td>
	<td align=center>5.47</td>
	<td align=center>1.66</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:50</td>
	<td align=center>11.13</td>
	<td align=center>78.53</td>
	<td align=center>5.53</td>
	<td align=center>1.68</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.19</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:45</td>
	<td align=center>11.08</td>
	<td align=center>78.63</td>
	<td align=center>5.50</td>
	<td align=center>1.66</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.19</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:40</td>
	<td align=center>11.13</td>
	<td align=center>78.60</td>
	<td align=center>5.47</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.20</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:35</td>
	<td align=center>11.17</td>
	<td align=center>78.52</td>
	<td align=center>5.48</td>
	<td align=center>1.68</td>
	<td align=center>0.37</td>
	<td align=center>0.34</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.20</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:30</td>
	<td align=center>11.14</td>
	<td align=center>78.56</td>
	<td align=center>5.48</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.21</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:25</td>
	<td align=center>11.17</td>
	<td align=center>78.51</td>
	<td align=center>5.51</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.21</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:20</td>
	<td align=center>11.17</td>
	<td align=center>78.54</td>
	<td align=center>5.48</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.21</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:15</td>
	<td align=center>11.20</td>
	<td align=center>78.51</td>
	<td align=center>5.47</td>
	<td align=center>1.67</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.21</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:10</td>
	<td align=center>11.14</td>
	<td align=center>78.62</td>
	<td align=center>5.44</td>
	<td align=center>1.66</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:05</td>
	<td align=center>11.14</td>
	<td align=center>78.61</td>
	<td align=center>5.46</td>
	<td align=center>1.65</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">22/12/2549&nbsp;00:00</td>
	<td align=center>11.08</td>
	<td align=center>78.73</td>
	<td align=center>5.45</td>
	<td align=center>1.61</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:55</td>
	<td align=center>11.05</td>
	<td align=center>78.82</td>
	<td align=center>5.43</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:50</td>
	<td align=center>11.06</td>
	<td align=center>78.84</td>
	<td align=center>5.39</td>
	<td align=center>1.59</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:45</td>
	<td align=center>10.98</td>
	<td align=center>78.99</td>
	<td align=center>5.37</td>
	<td align=center>1.57</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:40</td>
	<td align=center>11.01</td>
	<td align=center>78.91</td>
	<td align=center>5.40</td>
	<td align=center>1.58</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:35</td>
	<td align=center>10.93</td>
	<td align=center>78.99</td>
	<td align=center>5.41</td>
	<td align=center>1.57</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1137</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:30</td>
	<td align=center>10.96</td>
	<td align=center>78.95</td>
	<td align=center>5.42</td>
	<td align=center>1.57</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>968</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:25</td>
	<td align=center>10.96</td>
	<td align=center>79.02</td>
	<td align=center>5.37</td>
	<td align=center>1.56</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:20</td>
	<td align=center>10.98</td>
	<td align=center>79.01</td>
	<td align=center>5.36</td>
	<td align=center>1.56</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.22</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:15</td>
	<td align=center>10.86</td>
	<td align=center>79.28</td>
	<td align=center>5.28</td>
	<td align=center>1.51</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>967</td>
	<td align=center>0.72</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:10</td>
	<td align=center>10.89</td>
	<td align=center>79.22</td>
	<td align=center>5.31</td>
	<td align=center>1.52</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>966</td>
	<td align=center>0.72</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:05</td>
	<td align=center>10.90</td>
	<td align=center>79.32</td>
	<td align=center>5.22</td>
	<td align=center>1.50</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;23:00</td>
	<td align=center>10.92</td>
	<td align=center>79.29</td>
	<td align=center>5.19</td>
	<td align=center>1.53</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.24</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:55</td>
	<td align=center>10.87</td>
	<td align=center>79.46</td>
	<td align=center>5.09</td>
	<td align=center>1.49</td>
	<td align=center>0.33</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:50</td>
	<td align=center>10.88</td>
	<td align=center>79.42</td>
	<td align=center>5.11</td>
	<td align=center>1.50</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:45</td>
	<td align=center>10.78</td>
	<td align=center>79.48</td>
	<td align=center>5.17</td>
	<td align=center>1.49</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:40</td>
	<td align=center>10.76</td>
	<td align=center>79.54</td>
	<td align=center>5.14</td>
	<td align=center>1.48</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.27</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:35</td>
	<td align=center>10.71</td>
	<td align=center>79.66</td>
	<td align=center>5.10</td>
	<td align=center>1.45</td>
	<td align=center>0.31</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.27</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:30</td>
	<td align=center>10.78</td>
	<td align=center>79.55</td>
	<td align=center>5.14</td>
	<td align=center>1.46</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.27</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:25</td>
	<td align=center>10.80</td>
	<td align=center>79.57</td>
	<td align=center>5.11</td>
	<td align=center>1.47</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:20</td>
	<td align=center>10.78</td>
	<td align=center>79.59</td>
	<td align=center>5.04</td>
	<td align=center>1.52</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>965</td>
	<td align=center>0.72</td>
	<td align=center>1136</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:15</td>
	<td align=center>10.82</td>
	<td align=center>79.71</td>
	<td align=center>4.93</td>
	<td align=center>1.48</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.24</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:10</td>
	<td align=center>10.83</td>
	<td align=center>79.68</td>
	<td align=center>4.94</td>
	<td align=center>1.49</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.24</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:05</td>
	<td align=center>10.79</td>
	<td align=center>79.74</td>
	<td align=center>4.94</td>
	<td align=center>1.48</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.23</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;22:00</td>
	<td align=center>10.81</td>
	<td align=center>79.68</td>
	<td align=center>4.97</td>
	<td align=center>1.48</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1135</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:55</td>
	<td align=center>10.84</td>
	<td align=center>79.66</td>
	<td align=center>4.95</td>
	<td align=center>1.49</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.24</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1134</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:50</td>
	<td align=center>10.92</td>
	<td align=center>79.47</td>
	<td align=center>5.00</td>
	<td align=center>1.52</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.25</td>
	<td align=center>963</td>
	<td align=center>0.72</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:45</td>
	<td align=center>10.99</td>
	<td align=center>79.34</td>
	<td align=center>5.03</td>
	<td align=center>1.54</td>
	<td align=center>0.34</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.24</td>
	<td align=center>964</td>
	<td align=center>0.72</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:40</td>
	<td align=center>11.08</td>
	<td align=center>79.10</td>
	<td align=center>5.09</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.23</td>
	<td align=center>965</td>
	<td align=center>0.73</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:35</td>
	<td align=center>11.20</td>
	<td align=center>78.84</td>
	<td align=center>5.15</td>
	<td align=center>1.66</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.23</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:30</td>
	<td align=center>11.46</td>
	<td align=center>78.30</td>
	<td align=center>5.28</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.19</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:25</td>
	<td align=center>11.55</td>
	<td align=center>78.08</td>
	<td align=center>5.35</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:20</td>
	<td align=center>11.65</td>
	<td align=center>77.87</td>
	<td align=center>5.41</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:15</td>
	<td align=center>11.59</td>
	<td align=center>77.94</td>
	<td align=center>5.39</td>
	<td align=center>1.86</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.14</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:10</td>
	<td align=center>11.58</td>
	<td align=center>77.95</td>
	<td align=center>5.40</td>
	<td align=center>1.86</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:05</td>
	<td align=center>11.59</td>
	<td align=center>77.99</td>
	<td align=center>5.37</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.14</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;21:00</td>
	<td align=center>11.59</td>
	<td align=center>78.00</td>
	<td align=center>5.36</td>
	<td align=center>1.84</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:55</td>
	<td align=center>11.61</td>
	<td align=center>77.97</td>
	<td align=center>5.37</td>
	<td align=center>1.84</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:50</td>
	<td align=center>11.62</td>
	<td align=center>77.98</td>
	<td align=center>5.36</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:45</td>
	<td align=center>11.61</td>
	<td align=center>78.00</td>
	<td align=center>5.34</td>
	<td align=center>1.84</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:40</td>
	<td align=center>11.65</td>
	<td align=center>77.92</td>
	<td align=center>5.38</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.14</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:35</td>
	<td align=center>11.64</td>
	<td align=center>77.94</td>
	<td align=center>5.36</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.14</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:30</td>
	<td align=center>11.63</td>
	<td align=center>77.96</td>
	<td align=center>5.37</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:25</td>
	<td align=center>11.68</td>
	<td align=center>77.83</td>
	<td align=center>5.39</td>
	<td align=center>1.88</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:20</td>
	<td align=center>11.71</td>
	<td align=center>77.79</td>
	<td align=center>5.41</td>
	<td align=center>1.88</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:15</td>
	<td align=center>11.70</td>
	<td align=center>77.80</td>
	<td align=center>5.40</td>
	<td align=center>1.88</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:10</td>
	<td align=center>11.69</td>
	<td align=center>77.79</td>
	<td align=center>5.41</td>
	<td align=center>1.89</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:05</td>
	<td align=center>11.71</td>
	<td align=center>77.78</td>
	<td align=center>5.40</td>
	<td align=center>1.89</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;20:00</td>
	<td align=center>11.70</td>
	<td align=center>77.76</td>
	<td align=center>5.43</td>
	<td align=center>1.90</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:55</td>
	<td align=center>11.69</td>
	<td align=center>77.78</td>
	<td align=center>5.42</td>
	<td align=center>1.89</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:50</td>
	<td align=center>11.68</td>
	<td align=center>77.83</td>
	<td align=center>5.38</td>
	<td align=center>1.89</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:45</td>
	<td align=center>11.64</td>
	<td align=center>77.91</td>
	<td align=center>5.38</td>
	<td align=center>1.87</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:40</td>
	<td align=center>11.73</td>
	<td align=center>77.83</td>
	<td align=center>5.38</td>
	<td align=center>1.87</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:35</td>
	<td align=center>11.72</td>
	<td align=center>77.81</td>
	<td align=center>5.41</td>
	<td align=center>1.87</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:30</td>
	<td align=center>11.71</td>
	<td align=center>77.81</td>
	<td align=center>5.41</td>
	<td align=center>1.88</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.11</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:25</td>
	<td align=center>11.62</td>
	<td align=center>77.99</td>
	<td align=center>5.36</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:20</td>
	<td align=center>11.56</td>
	<td align=center>78.10</td>
	<td align=center>5.34</td>
	<td align=center>1.84</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:15</td>
	<td align=center>11.60</td>
	<td align=center>78.03</td>
	<td align=center>5.38</td>
	<td align=center>1.83</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:10</td>
	<td align=center>11.62</td>
	<td align=center>78.07</td>
	<td align=center>5.34</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:05</td>
	<td align=center>11.59</td>
	<td align=center>78.13</td>
	<td align=center>5.32</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;19:00</td>
	<td align=center>11.58</td>
	<td align=center>78.13</td>
	<td align=center>5.33</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:55</td>
	<td align=center>11.59</td>
	<td align=center>78.11</td>
	<td align=center>5.34</td>
	<td align=center>1.79</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.14</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:50</td>
	<td align=center>11.52</td>
	<td align=center>78.19</td>
	<td align=center>5.33</td>
	<td align=center>1.78</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.14</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:45</td>
	<td align=center>11.57</td>
	<td align=center>78.05</td>
	<td align=center>5.35</td>
	<td align=center>1.80</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:40</td>
	<td align=center>11.55</td>
	<td align=center>78.14</td>
	<td align=center>5.33</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:35</td>
	<td align=center>11.51</td>
	<td align=center>78.19</td>
	<td align=center>5.33</td>
	<td align=center>1.78</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:30</td>
	<td align=center>11.53</td>
	<td align=center>78.13</td>
	<td align=center>5.35</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:25</td>
	<td align=center>11.58</td>
	<td align=center>78.08</td>
	<td align=center>5.36</td>
	<td align=center>1.80</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:20</td>
	<td align=center>11.65</td>
	<td align=center>77.95</td>
	<td align=center>5.37</td>
	<td align=center>1.81</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.15</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:15</td>
	<td align=center>11.68</td>
	<td align=center>77.86</td>
	<td align=center>5.41</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.16</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:10</td>
	<td align=center>11.70</td>
	<td align=center>77.85</td>
	<td align=center>5.40</td>
	<td align=center>1.83</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:05</td>
	<td align=center>11.70</td>
	<td align=center>77.85</td>
	<td align=center>5.42</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.17</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;18:00</td>
	<td align=center>11.65</td>
	<td align=center>77.92</td>
	<td align=center>5.41</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.18</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:55</td>
	<td align=center>11.66</td>
	<td align=center>77.80</td>
	<td align=center>5.44</td>
	<td align=center>1.84</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.19</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:50</td>
	<td align=center>11.66</td>
	<td align=center>77.87</td>
	<td align=center>5.44</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.19</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:45</td>
	<td align=center>11.71</td>
	<td align=center>77.84</td>
	<td align=center>5.43</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.20</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1127</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:40</td>
	<td align=center>11.66</td>
	<td align=center>77.91</td>
	<td align=center>5.41</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.21</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:35</td>
	<td align=center>11.63</td>
	<td align=center>77.96</td>
	<td align=center>5.40</td>
	<td align=center>1.80</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.22</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:30</td>
	<td align=center>11.54</td>
	<td align=center>78.11</td>
	<td align=center>5.36</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.23</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:25</td>
	<td align=center>11.56</td>
	<td align=center>78.07</td>
	<td align=center>5.37</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.24</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:20</td>
	<td align=center>11.59</td>
	<td align=center>78.03</td>
	<td align=center>5.38</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.25</td>
	<td align=center>967</td>
	<td align=center>0.74</td>
	<td align=center>1127</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:15</td>
	<td align=center>11.56</td>
	<td align=center>78.08</td>
	<td align=center>5.36</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.25</td>
	<td align=center>967</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:10</td>
	<td align=center>11.54</td>
	<td align=center>78.07</td>
	<td align=center>5.38</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.25</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:05</td>
	<td align=center>11.59</td>
	<td align=center>78.00</td>
	<td align=center>5.39</td>
	<td align=center>1.78</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.24</td>
	<td align=center>968</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;17:00</td>
	<td align=center>11.52</td>
	<td align=center>77.99</td>
	<td align=center>5.42</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.25</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:55</td>
	<td align=center>11.57</td>
	<td align=center>77.87</td>
	<td align=center>5.45</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.26</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:50</td>
	<td align=center>11.52</td>
	<td align=center>77.91</td>
	<td align=center>5.46</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.28</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:45</td>
	<td align=center>11.54</td>
	<td align=center>77.79</td>
	<td align=center>5.53</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.29</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:40</td>
	<td align=center>11.57</td>
	<td align=center>77.75</td>
	<td align=center>5.52</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.29</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:35</td>
	<td align=center>11.57</td>
	<td align=center>77.77</td>
	<td align=center>5.50</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:30</td>
	<td align=center>11.56</td>
	<td align=center>77.78</td>
	<td align=center>5.51</td>
	<td align=center>1.83</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.29</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:25</td>
	<td align=center>11.59</td>
	<td align=center>77.74</td>
	<td align=center>5.52</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:20</td>
	<td align=center>11.63</td>
	<td align=center>77.69</td>
	<td align=center>5.52</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:15</td>
	<td align=center>11.61</td>
	<td align=center>77.71</td>
	<td align=center>5.53</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:10</td>
	<td align=center>11.58</td>
	<td align=center>77.70</td>
	<td align=center>5.54</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:05</td>
	<td align=center>11.56</td>
	<td align=center>77.72</td>
	<td align=center>5.54</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;16:00</td>
	<td align=center>11.56</td>
	<td align=center>77.74</td>
	<td align=center>5.52</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:55</td>
	<td align=center>11.57</td>
	<td align=center>77.72</td>
	<td align=center>5.56</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:50</td>
	<td align=center>11.59</td>
	<td align=center>77.67</td>
	<td align=center>5.58</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:45</td>
	<td align=center>11.62</td>
	<td align=center>77.69</td>
	<td align=center>5.53</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:40</td>
	<td align=center>11.62</td>
	<td align=center>77.71</td>
	<td align=center>5.53</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:35</td>
	<td align=center>11.60</td>
	<td align=center>77.73</td>
	<td align=center>5.54</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:30</td>
	<td align=center>11.52</td>
	<td align=center>77.83</td>
	<td align=center>5.52</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:25</td>
	<td align=center>11.55</td>
	<td align=center>77.74</td>
	<td align=center>5.57</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:20</td>
	<td align=center>11.53</td>
	<td align=center>77.75</td>
	<td align=center>5.58</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:15</td>
	<td align=center>11.54</td>
	<td align=center>77.73</td>
	<td align=center>5.58</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:10</td>
	<td align=center>11.53</td>
	<td align=center>77.75</td>
	<td align=center>5.58</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:05</td>
	<td align=center>11.54</td>
	<td align=center>77.67</td>
	<td align=center>5.63</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;15:00</td>
	<td align=center>11.55</td>
	<td align=center>77.66</td>
	<td align=center>5.61</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:55</td>
	<td align=center>11.57</td>
	<td align=center>77.62</td>
	<td align=center>5.64</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:50</td>
	<td align=center>11.55</td>
	<td align=center>77.70</td>
	<td align=center>5.61</td>
	<td align=center>1.78</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:45</td>
	<td align=center>11.55</td>
	<td align=center>77.72</td>
	<td align=center>5.62</td>
	<td align=center>1.77</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:40</td>
	<td align=center>11.54</td>
	<td align=center>77.74</td>
	<td align=center>5.61</td>
	<td align=center>1.78</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:35</td>
	<td align=center>11.51</td>
	<td align=center>77.76</td>
	<td align=center>5.62</td>
	<td align=center>1.78</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:30</td>
	<td align=center>11.51</td>
	<td align=center>77.72</td>
	<td align=center>5.65</td>
	<td align=center>1.78</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:25</td>
	<td align=center>11.50</td>
	<td align=center>77.81</td>
	<td align=center>5.58</td>
	<td align=center>1.77</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:20</td>
	<td align=center>11.48</td>
	<td align=center>77.86</td>
	<td align=center>5.54</td>
	<td align=center>1.78</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:15</td>
	<td align=center>11.56</td>
	<td align=center>77.70</td>
	<td align=center>5.59</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:10</td>
	<td align=center>11.63</td>
	<td align=center>77.59</td>
	<td align=center>5.58</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:05</td>
	<td align=center>11.67</td>
	<td align=center>77.53</td>
	<td align=center>5.61</td>
	<td align=center>1.84</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;14:00</td>
	<td align=center>11.70</td>
	<td align=center>77.46</td>
	<td align=center>5.61</td>
	<td align=center>1.85</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:55</td>
	<td align=center>11.69</td>
	<td align=center>77.45</td>
	<td align=center>5.61</td>
	<td align=center>1.86</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1129</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:50</td>
	<td align=center>11.63</td>
	<td align=center>77.52</td>
	<td align=center>5.61</td>
	<td align=center>1.85</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:45</td>
	<td align=center>11.54</td>
	<td align=center>77.67</td>
	<td align=center>5.59</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:40</td>
	<td align=center>11.38</td>
	<td align=center>77.99</td>
	<td align=center>5.53</td>
	<td align=center>1.77</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:35</td>
	<td align=center>11.30</td>
	<td align=center>78.15</td>
	<td align=center>5.49</td>
	<td align=center>1.73</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:30</td>
	<td align=center>11.26</td>
	<td align=center>78.16</td>
	<td align=center>5.55</td>
	<td align=center>1.72</td>
	<td align=center>0.38</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:25</td>
	<td align=center>11.31</td>
	<td align=center>78.09</td>
	<td align=center>5.55</td>
	<td align=center>1.72</td>
	<td align=center>0.38</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>970</td>
	<td align=center>0.73</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:20</td>
	<td align=center>11.32</td>
	<td align=center>78.02</td>
	<td align=center>5.58</td>
	<td align=center>1.73</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:15</td>
	<td align=center>11.32</td>
	<td align=center>78.00</td>
	<td align=center>5.57</td>
	<td align=center>1.75</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.33</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:10</td>
	<td align=center>11.37</td>
	<td align=center>77.85</td>
	<td align=center>5.62</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:05</td>
	<td align=center>11.47</td>
	<td align=center>77.68</td>
	<td align=center>5.65</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.31</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;13:00</td>
	<td align=center>11.55</td>
	<td align=center>77.48</td>
	<td align=center>5.72</td>
	<td align=center>1.87</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:55</td>
	<td align=center>11.60</td>
	<td align=center>77.40</td>
	<td align=center>5.73</td>
	<td align=center>1.88</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:50</td>
	<td align=center>11.62</td>
	<td align=center>77.35</td>
	<td align=center>5.73</td>
	<td align=center>1.90</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:45</td>
	<td align=center>11.64</td>
	<td align=center>77.36</td>
	<td align=center>5.69</td>
	<td align=center>1.90</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:40</td>
	<td align=center>11.68</td>
	<td align=center>77.26</td>
	<td align=center>5.72</td>
	<td align=center>1.91</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:35</td>
	<td align=center>11.67</td>
	<td align=center>77.27</td>
	<td align=center>5.71</td>
	<td align=center>1.92</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:30</td>
	<td align=center>11.68</td>
	<td align=center>77.24</td>
	<td align=center>5.72</td>
	<td align=center>1.92</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:25</td>
	<td align=center>11.65</td>
	<td align=center>77.29</td>
	<td align=center>5.70</td>
	<td align=center>1.93</td>
	<td align=center>0.44</td>
	<td align=center>0.39</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:20</td>
	<td align=center>11.70</td>
	<td align=center>77.20</td>
	<td align=center>5.73</td>
	<td align=center>1.93</td>
	<td align=center>0.44</td>
	<td align=center>0.39</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:15</td>
	<td align=center>11.69</td>
	<td align=center>77.20</td>
	<td align=center>5.72</td>
	<td align=center>1.95</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:10</td>
	<td align=center>11.72</td>
	<td align=center>77.14</td>
	<td align=center>5.75</td>
	<td align=center>1.96</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.29</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:05</td>
	<td align=center>11.77</td>
	<td align=center>77.07</td>
	<td align=center>5.76</td>
	<td align=center>1.97</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.29</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;12:00</td>
	<td align=center>11.77</td>
	<td align=center>77.10</td>
	<td align=center>5.75</td>
	<td align=center>1.96</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.29</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:55</td>
	<td align=center>11.75</td>
	<td align=center>77.12</td>
	<td align=center>5.75</td>
	<td align=center>1.96</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.28</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:50</td>
	<td align=center>11.71</td>
	<td align=center>77.18</td>
	<td align=center>5.76</td>
	<td align=center>1.93</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:45</td>
	<td align=center>11.67</td>
	<td align=center>77.27</td>
	<td align=center>5.73</td>
	<td align=center>1.92</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.30</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:40</td>
	<td align=center>11.65</td>
	<td align=center>77.30</td>
	<td align=center>5.72</td>
	<td align=center>1.92</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:35</td>
	<td align=center>11.65</td>
	<td align=center>77.30</td>
	<td align=center>5.73</td>
	<td align=center>1.91</td>
	<td align=center>0.43</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:30</td>
	<td align=center>11.67</td>
	<td align=center>77.30</td>
	<td align=center>5.71</td>
	<td align=center>1.91</td>
	<td align=center>0.43</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.32</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:25</td>
	<td align=center>11.67</td>
	<td align=center>77.27</td>
	<td align=center>5.73</td>
	<td align=center>1.91</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.32</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:20</td>
	<td align=center>11.63</td>
	<td align=center>77.32</td>
	<td align=center>5.71</td>
	<td align=center>1.91</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.32</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:15</td>
	<td align=center>11.67</td>
	<td align=center>77.28</td>
	<td align=center>5.72</td>
	<td align=center>1.90</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.32</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:10</td>
	<td align=center>11.63</td>
	<td align=center>77.35</td>
	<td align=center>5.70</td>
	<td align=center>1.90</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.32</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
	<td>&nbsp;</td> 
  </tr>
			
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:05</td>
	<td align=center>11.62</td>
	<td align=center>77.31</td>
	<td align=center>5.76</td>
	<td align=center>1.89</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.32</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
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
