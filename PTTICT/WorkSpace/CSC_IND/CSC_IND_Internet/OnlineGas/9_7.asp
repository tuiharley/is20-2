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
<title>Gas Composition Past 7 Days</title>
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
	timerID = setTimeout(document.location='9_7.asp',300000);	  
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
	<td width="809" class="head4" bgcolor="#000066"><font color="#FFFFFF">Gas Composition Past 7 days</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="832">
  <tr class="head">
	<td bgcolor="#84762B" align="center" colspan="15" ><strong>GAS COMPOSITION FROM ONLINE GC AT MTP
	  (AT DPCU) - PAST 7 DAYS</strong></td>
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
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
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
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;11:00</td>
	<td align=center>11.54</td>
	<td align=center>77.43</td>
	<td align=center>5.72</td>
	<td align=center>1.89</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.31</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;10:00</td>
	<td align=center>11.47</td>
	<td align=center>77.80</td>
	<td align=center>5.60</td>
	<td align=center>1.79</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.30</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1131</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;09:00</td>
	<td align=center>11.32</td>
	<td align=center>77.74</td>
	<td align=center>5.74</td>
	<td align=center>1.84</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.26</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1137</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;08:00</td>
	<td align=center>11.32</td>
	<td align=center>77.96</td>
	<td align=center>5.61</td>
	<td align=center>1.81</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.27</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;07:00</td>
	<td align=center>11.27</td>
	<td align=center>78.16</td>
	<td align=center>5.54</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.28</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;06:00</td>
	<td align=center>11.27</td>
	<td align=center>78.16</td>
	<td align=center>5.55</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.25</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;05:00</td>
	<td align=center>11.31</td>
	<td align=center>78.12</td>
	<td align=center>5.55</td>
	<td align=center>1.76</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.24</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;04:00</td>
	<td align=center>11.27</td>
	<td align=center>78.20</td>
	<td align=center>5.53</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.22</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;03:00</td>
	<td align=center>11.37</td>
	<td align=center>78.09</td>
	<td align=center>5.50</td>
	<td align=center>1.77</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.23</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;02:00</td>
	<td align=center>11.40</td>
	<td align=center>77.92</td>
	<td align=center>5.60</td>
	<td align=center>1.80</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.24</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;01:00</td>
	<td align=center>11.39</td>
	<td align=center>77.94</td>
	<td align=center>5.59</td>
	<td align=center>1.80</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.09</td>
	<td align=center>2.22</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">21/12/2549&nbsp;00:00</td>
	<td align=center>11.45</td>
	<td align=center>77.78</td>
	<td align=center>5.62</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.23</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;23:00</td>
	<td align=center>11.46</td>
	<td align=center>77.65</td>
	<td align=center>5.74</td>
	<td align=center>1.82</td>
	<td align=center>0.40</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.28</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;22:00</td>
	<td align=center>11.65</td>
	<td align=center>77.14</td>
	<td align=center>5.87</td>
	<td align=center>1.94</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.27</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;21:00</td>
	<td align=center>11.62</td>
	<td align=center>77.15</td>
	<td align=center>5.91</td>
	<td align=center>1.98</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.22</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;20:00</td>
	<td align=center>11.56</td>
	<td align=center>77.22</td>
	<td align=center>5.95</td>
	<td align=center>1.95</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.21</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;19:00</td>
	<td align=center>11.42</td>
	<td align=center>77.32</td>
	<td align=center>5.95</td>
	<td align=center>1.95</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.24</td>
	<td align=center>980</td>
	<td align=center>0.74</td>
	<td align=center>1138</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;18:00</td>
	<td align=center>11.53</td>
	<td align=center>77.24</td>
	<td align=center>5.88</td>
	<td align=center>1.96</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.25</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;17:00</td>
	<td align=center>11.46</td>
	<td align=center>77.43</td>
	<td align=center>5.79</td>
	<td align=center>1.94</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.27</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;16:00</td>
	<td align=center>11.10</td>
	<td align=center>78.25</td>
	<td align=center>5.57</td>
	<td align=center>1.75</td>
	<td align=center>0.38</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.34</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;15:00</td>
	<td align=center>10.91</td>
	<td align=center>78.63</td>
	<td align=center>5.52</td>
	<td align=center>1.68</td>
	<td align=center>0.37</td>
	<td align=center>0.34</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.30</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1139</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;14:00</td>
	<td align=center>11.38</td>
	<td align=center>77.61</td>
	<td align=center>5.82</td>
	<td align=center>1.91</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.20</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1138</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;13:00</td>
	<td align=center>11.28</td>
	<td align=center>77.85</td>
	<td align=center>5.74</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.21</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1138</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;12:00</td>
	<td align=center>11.53</td>
	<td align=center>77.36</td>
	<td align=center>5.84</td>
	<td align=center>1.92</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.25</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;11:00</td>
	<td align=center>11.37</td>
	<td align=center>77.66</td>
	<td align=center>5.74</td>
	<td align=center>1.85</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.32</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;10:00</td>
	<td align=center>11.53</td>
	<td align=center>77.60</td>
	<td align=center>5.70</td>
	<td align=center>1.88</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.23</td>
	<td align=center>974</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;09:00</td>
	<td align=center>11.53</td>
	<td align=center>77.74</td>
	<td align=center>5.57</td>
	<td align=center>1.85</td>
	<td align=center>0.42</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.23</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;08:00</td>
	<td align=center>11.48</td>
	<td align=center>77.79</td>
	<td align=center>5.62</td>
	<td align=center>1.83</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.23</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;07:00</td>
	<td align=center>11.41</td>
	<td align=center>77.95</td>
	<td align=center>5.62</td>
	<td align=center>1.77</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.23</td>
	<td align=center>972</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;06:00</td>
	<td align=center>11.52</td>
	<td align=center>78.03</td>
	<td align=center>5.46</td>
	<td align=center>1.77</td>
	<td align=center>0.39</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.23</td>
	<td align=center>969</td>
	<td align=center>0.74</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;05:00</td>
	<td align=center>11.37</td>
	<td align=center>78.05</td>
	<td align=center>5.68</td>
	<td align=center>1.72</td>
	<td align=center>0.38</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.19</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;04:00</td>
	<td align=center>11.30</td>
	<td align=center>78.29</td>
	<td align=center>5.63</td>
	<td align=center>1.70</td>
	<td align=center>0.37</td>
	<td align=center>0.34</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.10</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;03:00</td>
	<td align=center>11.39</td>
	<td align=center>78.23</td>
	<td align=center>5.63</td>
	<td align=center>1.73</td>
	<td align=center>0.38</td>
	<td align=center>0.35</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.04</td>
	<td align=center>972</td>
	<td align=center>0.73</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;02:00</td>
	<td align=center>11.36</td>
	<td align=center>78.32</td>
	<td align=center>5.60</td>
	<td align=center>1.72</td>
	<td align=center>0.38</td>
	<td align=center>0.34</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.01</td>
	<td align=center>973</td>
	<td align=center>0.73</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;01:00</td>
	<td align=center>11.38</td>
	<td align=center>78.35</td>
	<td align=center>5.60</td>
	<td align=center>1.68</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.05</td>
	<td align=center>971</td>
	<td align=center>0.73</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">20/12/2549&nbsp;00:00</td>
	<td align=center>11.70</td>
	<td align=center>77.53</td>
	<td align=center>5.81</td>
	<td align=center>1.88</td>
	<td align=center>0.41</td>
	<td align=center>0.38</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.02</td>
	<td align=center>975</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;23:00</td>
	<td align=center>11.55</td>
	<td align=center>77.71</td>
	<td align=center>5.79</td>
	<td align=center>1.86</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.03</td>
	<td align=center>976</td>
	<td align=center>0.74</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;22:00</td>
	<td align=center>11.62</td>
	<td align=center>77.34</td>
	<td align=center>5.90</td>
	<td align=center>1.93</td>
	<td align=center>0.43</td>
	<td align=center>0.39</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.11</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;21:00</td>
	<td align=center>11.75</td>
	<td align=center>77.06</td>
	<td align=center>5.92</td>
	<td align=center>2.00</td>
	<td align=center>0.45</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.13</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;20:00</td>
	<td align=center>11.78</td>
	<td align=center>77.05</td>
	<td align=center>5.94</td>
	<td align=center>2.00</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.12</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;19:00</td>
	<td align=center>11.73</td>
	<td align=center>77.20</td>
	<td align=center>5.86</td>
	<td align=center>1.99</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.09</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1134</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;18:00</td>
	<td align=center>11.66</td>
	<td align=center>77.22</td>
	<td align=center>5.92</td>
	<td align=center>1.98</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.08</td>
	<td align=center>979</td>
	<td align=center>0.74</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;17:00</td>
	<td align=center>11.60</td>
	<td align=center>77.36</td>
	<td align=center>5.92</td>
	<td align=center>2.01</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>1.98</td>
	<td align=center>981</td>
	<td align=center>0.74</td>
	<td align=center>1139</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;16:00</td>
	<td align=center>11.72</td>
	<td align=center>77.28</td>
	<td align=center>5.91</td>
	<td align=center>1.99</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>1.97</td>
	<td align=center>980</td>
	<td align=center>0.74</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;15:00</td>
	<td align=center>11.85</td>
	<td align=center>77.14</td>
	<td align=center>5.89</td>
	<td align=center>2.00</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>1.99</td>
	<td align=center>978</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;14:00</td>
	<td align=center>11.87</td>
	<td align=center>77.06</td>
	<td align=center>5.89</td>
	<td align=center>2.01</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.06</td>
	<td align=center>977</td>
	<td align=center>0.74</td>
	<td align=center>1132</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;13:00</td>
	<td align=center>11.93</td>
	<td align=center>76.99</td>
	<td align=center>5.87</td>
	<td align=center>2.02</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.08</td>
	<td align=center>976</td>
	<td align=center>0.75</td>
	<td align=center>1131</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;12:00</td>
	<td align=center>11.96</td>
	<td align=center>76.97</td>
	<td align=center>5.84</td>
	<td align=center>2.00</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.12</td>
	<td align=center>975</td>
	<td align=center>0.75</td>
	<td align=center>1129</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;11:00</td>
	<td align=center>12.15</td>
	<td align=center>76.64</td>
	<td align=center>5.95</td>
	<td align=center>2.04</td>
	<td align=center>0.44</td>
	<td align=center>0.40</td>
	<td align=center>0.12</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.11</td>
	<td align=center>974</td>
	<td align=center>0.75</td>
	<td align=center>1126</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;10:00</td>
	<td align=center>11.90</td>
	<td align=center>77.31</td>
	<td align=center>5.73</td>
	<td align=center>1.91</td>
	<td align=center>0.41</td>
	<td align=center>0.37</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.12</td>
	<td align=center>971</td>
	<td align=center>0.74</td>
	<td align=center>1127</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;09:00</td>
	<td align=center>11.79</td>
	<td align=center>77.61</td>
	<td align=center>5.65</td>
	<td align=center>1.85</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.06</td>
	<td align=center>2.10</td>
	<td align=center>970</td>
	<td align=center>0.74</td>
	<td align=center>1128</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;08:00</td>
	<td align=center>11.37</td>
	<td align=center>78.56</td>
	<td align=center>5.37</td>
	<td align=center>1.65</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;07:00</td>
	<td align=center>11.20</td>
	<td align=center>78.99</td>
	<td align=center>5.27</td>
	<td align=center>1.57</td>
	<td align=center>0.34</td>
	<td align=center>0.30</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.05</td>
	<td align=center>2.13</td>
	<td align=center>965</td>
	<td align=center>0.73</td>
	<td align=center>1132</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;06:00</td>
	<td align=center>10.83</td>
	<td align=center>79.80</td>
	<td align=center>4.96</td>
	<td align=center>1.43</td>
	<td align=center>0.30</td>
	<td align=center>0.27</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.21</td>
	<td align=center>961</td>
	<td align=center>0.72</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;05:00</td>
	<td align=center>11.07</td>
	<td align=center>79.26</td>
	<td align=center>5.15</td>
	<td align=center>1.48</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.05</td>
	<td align=center>2.24</td>
	<td align=center>962</td>
	<td align=center>0.72</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;04:00</td>
	<td align=center>10.92</td>
	<td align=center>79.48</td>
	<td align=center>5.13</td>
	<td align=center>1.45</td>
	<td align=center>0.31</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.23</td>
	<td align=center>962</td>
	<td align=center>0.72</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;03:00</td>
	<td align=center>10.85</td>
	<td align=center>79.53</td>
	<td align=center>5.19</td>
	<td align=center>1.43</td>
	<td align=center>0.30</td>
	<td align=center>0.27</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.25</td>
	<td align=center>962</td>
	<td align=center>0.72</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;02:00</td>
	<td align=center>11.35</td>
	<td align=center>78.46</td>
	<td align=center>5.49</td>
	<td align=center>1.60</td>
	<td align=center>0.35</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.21</td>
	<td align=center>966</td>
	<td align=center>0.73</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;01:00</td>
	<td align=center>11.42</td>
	<td align=center>78.13</td>
	<td align=center>5.60</td>
	<td align=center>1.72</td>
	<td align=center>0.38</td>
	<td align=center>0.34</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.06</td>
	<td align=center>2.19</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1132</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">19/12/2549&nbsp;00:00</td>
	<td align=center>11.26</td>
	<td align=center>78.60</td>
	<td align=center>5.42</td>
	<td align=center>1.64</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.18</td>
	<td align=center>967</td>
	<td align=center>0.73</td>
	<td align=center>1132</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;23:00</td>
	<td align=center>11.27</td>
	<td align=center>78.47</td>
	<td align=center>5.45</td>
	<td align=center>1.70</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.17</td>
	<td align=center>969</td>
	<td align=center>0.73</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;22:00</td>
	<td align=center>11.51</td>
	<td align=center>77.90</td>
	<td align=center>5.60</td>
	<td align=center>1.85</td>
	<td align=center>0.40</td>
	<td align=center>0.36</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.12</td>
	<td align=center>973</td>
	<td align=center>0.74</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;21:00</td>
	<td align=center>11.94</td>
	<td align=center>76.93</td>
	<td align=center>5.86</td>
	<td align=center>2.05</td>
	<td align=center>0.45</td>
	<td align=center>0.41</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.06</td>
	<td align=center>978</td>
	<td align=center>0.75</td>
	<td align=center>1132</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;20:00</td>
	<td align=center>12.26</td>
	<td align=center>76.39</td>
	<td align=center>5.93</td>
	<td align=center>2.19</td>
	<td align=center>0.48</td>
	<td align=center>0.44</td>
	<td align=center>0.14</td>
	<td align=center>0.09</td>
	<td align=center>0.09</td>
	<td align=center>2.01</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;19:00</td>
	<td align=center>12.11</td>
	<td align=center>76.38</td>
	<td align=center>6.03</td>
	<td align=center>2.18</td>
	<td align=center>0.47</td>
	<td align=center>0.43</td>
	<td align=center>0.14</td>
	<td align=center>0.09</td>
	<td align=center>0.09</td>
	<td align=center>2.09</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1131</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;18:00</td>
	<td align=center>11.87</td>
	<td align=center>77.02</td>
	<td align=center>5.89</td>
	<td align=center>2.08</td>
	<td align=center>0.45</td>
	<td align=center>0.42</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>1.97</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;17:00</td>
	<td align=center>11.91</td>
	<td align=center>76.91</td>
	<td align=center>5.91</td>
	<td align=center>2.11</td>
	<td align=center>0.46</td>
	<td align=center>0.42</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>1.98</td>
	<td align=center>981</td>
	<td align=center>0.75</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;16:00</td>
	<td align=center>12.13</td>
	<td align=center>76.53</td>
	<td align=center>5.90</td>
	<td align=center>2.16</td>
	<td align=center>0.47</td>
	<td align=center>0.43</td>
	<td align=center>0.13</td>
	<td align=center>0.09</td>
	<td align=center>0.08</td>
	<td align=center>2.07</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;15:00</td>
	<td align=center>11.93</td>
	<td align=center>76.92</td>
	<td align=center>5.78</td>
	<td align=center>2.12</td>
	<td align=center>0.47</td>
	<td align=center>0.43</td>
	<td align=center>0.14</td>
	<td align=center>0.08</td>
	<td align=center>0.10</td>
	<td align=center>2.05</td>
	<td align=center>980</td>
	<td align=center>0.75</td>
	<td align=center>1133</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;14:00</td>
	<td align=center>11.74</td>
	<td align=center>77.17</td>
	<td align=center>5.78</td>
	<td align=center>2.08</td>
	<td align=center>0.46</td>
	<td align=center>0.42</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.05</td>
	<td align=center>980</td>
	<td align=center>0.74</td>
	<td align=center>1136</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;13:00</td>
	<td align=center>11.76</td>
	<td align=center>77.21</td>
	<td align=center>5.80</td>
	<td align=center>2.04</td>
	<td align=center>0.45</td>
	<td align=center>0.41</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.08</td>
	<td align=center>2.05</td>
	<td align=center>979</td>
	<td align=center>0.74</td>
	<td align=center>1135</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;12:00</td>
	<td align=center>12.02</td>
	<td align=center>76.78</td>
	<td align=center>5.82</td>
	<td align=center>2.12</td>
	<td align=center>0.47</td>
	<td align=center>0.43</td>
	<td align=center>0.13</td>
	<td align=center>0.08</td>
	<td align=center>0.09</td>
	<td align=center>2.06</td>
	<td align=center>979</td>
	<td align=center>0.75</td>
	<td align=center>1131</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;11:00</td>
	<td align=center>12.02</td>
	<td align=center>76.95</td>
	<td align=center>5.67</td>
	<td align=center>2.09</td>
	<td align=center>0.46</td>
	<td align=center>0.42</td>
	<td align=center>0.14</td>
	<td align=center>0.09</td>
	<td align=center>0.09</td>
	<td align=center>2.07</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;10:00</td>
	<td align=center>12.33</td>
	<td align=center>76.41</td>
	<td align=center>5.79</td>
	<td align=center>2.16</td>
	<td align=center>0.48</td>
	<td align=center>0.44</td>
	<td align=center>0.14</td>
	<td align=center>0.09</td>
	<td align=center>0.10</td>
	<td align=center>2.07</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1127</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;09:00</td>
	<td align=center>12.43</td>
	<td align=center>76.25</td>
	<td align=center>5.76</td>
	<td align=center>2.19</td>
	<td align=center>0.49</td>
	<td align=center>0.45</td>
	<td align=center>0.15</td>
	<td align=center>0.10</td>
	<td align=center>0.13</td>
	<td align=center>2.06</td>
	<td align=center>979</td>
	<td align=center>0.76</td>
	<td align=center>1126</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;08:00</td>
	<td align=center>12.46</td>
	<td align=center>76.31</td>
	<td align=center>5.67</td>
	<td align=center>2.16</td>
	<td align=center>0.48</td>
	<td align=center>0.44</td>
	<td align=center>0.15</td>
	<td align=center>0.10</td>
	<td align=center>0.13</td>
	<td align=center>2.10</td>
	<td align=center>977</td>
	<td align=center>0.75</td>
	<td align=center>1124</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;07:00</td>
	<td align=center>11.51</td>
	<td align=center>78.60</td>
	<td align=center>5.11</td>
	<td align=center>1.68</td>
	<td align=center>0.37</td>
	<td align=center>0.33</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.20</td>
	<td align=center>963</td>
	<td align=center>0.73</td>
	<td align=center>1126</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;06:00</td>
	<td align=center>10.72</td>
	<td align=center>80.27</td>
	<td align=center>4.78</td>
	<td align=center>1.32</td>
	<td align=center>0.27</td>
	<td align=center>0.24</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.25</td>
	<td align=center>956</td>
	<td align=center>0.71</td>
	<td align=center>1131</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;05:00</td>
	<td align=center>10.84</td>
	<td align=center>79.99</td>
	<td align=center>4.83</td>
	<td align=center>1.38</td>
	<td align=center>0.29</td>
	<td align=center>0.25</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.04</td>
	<td align=center>2.25</td>
	<td align=center>957</td>
	<td align=center>0.72</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;04:00</td>
	<td align=center>10.92</td>
	<td align=center>79.86</td>
	<td align=center>4.85</td>
	<td align=center>1.40</td>
	<td align=center>0.29</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.24</td>
	<td align=center>958</td>
	<td align=center>0.72</td>
	<td align=center>1130</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;03:00</td>
	<td align=center>11.14</td>
	<td align=center>79.68</td>
	<td align=center>4.77</td>
	<td align=center>1.40</td>
	<td align=center>0.29</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.28</td>
	<td align=center>955</td>
	<td align=center>0.72</td>
	<td align=center>1124</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;02:00</td>
	<td align=center>11.20</td>
	<td align=center>79.52</td>
	<td align=center>4.78</td>
	<td align=center>1.39</td>
	<td align=center>0.29</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.32</td>
	<td align=center>953</td>
	<td align=center>0.72</td>
	<td align=center>1122</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;01:00</td>
	<td align=center>11.75</td>
	<td align=center>78.55</td>
	<td align=center>4.94</td>
	<td align=center>1.58</td>
	<td align=center>0.34</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.32</td>
	<td align=center>956</td>
	<td align=center>0.73</td>
	<td align=center>1117</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">18/12/2549&nbsp;00:00</td>
	<td align=center>11.48</td>
	<td align=center>80.53</td>
	<td align=center>4.70</td>
	<td align=center>0.69</td>
	<td align=center>0.13</td>
	<td align=center>0.11</td>
	<td align=center>0.04</td>
	<td align=center>0.02</td>
	<td align=center>0.01</td>
	<td align=center>2.29</td>
	<td align=center>929</td>
	<td align=center>0.71</td>
	<td align=center>1103</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;23:00</td>
	<td align=center>11.74</td>
	<td align=center>80.08</td>
	<td align=center>4.83</td>
	<td align=center>0.72</td>
	<td align=center>0.14</td>
	<td align=center>0.12</td>
	<td align=center>0.04</td>
	<td align=center>0.03</td>
	<td align=center>0.01</td>
	<td align=center>2.29</td>
	<td align=center>929</td>
	<td align=center>0.71</td>
	<td align=center>1099</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;22:00</td>
	<td align=center>12.00</td>
	<td align=center>79.11</td>
	<td align=center>5.25</td>
	<td align=center>0.91</td>
	<td align=center>0.18</td>
	<td align=center>0.16</td>
	<td align=center>0.05</td>
	<td align=center>0.03</td>
	<td align=center>0.03</td>
	<td align=center>2.27</td>
	<td align=center>936</td>
	<td align=center>0.72</td>
	<td align=center>1101</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;21:00</td>
	<td align=center>12.00</td>
	<td align=center>79.27</td>
	<td align=center>5.02</td>
	<td align=center>0.96</td>
	<td align=center>0.19</td>
	<td align=center>0.17</td>
	<td align=center>0.06</td>
	<td align=center>0.03</td>
	<td align=center>0.03</td>
	<td align=center>2.27</td>
	<td align=center>935</td>
	<td align=center>0.72</td>
	<td align=center>1100</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;20:00</td>
	<td align=center>12.00</td>
	<td align=center>79.21</td>
	<td align=center>5.00</td>
	<td align=center>1.03</td>
	<td align=center>0.21</td>
	<td align=center>0.19</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.03</td>
	<td align=center>2.23</td>
	<td align=center>937</td>
	<td align=center>0.72</td>
	<td align=center>1102</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;19:00</td>
	<td align=center>12.18</td>
	<td align=center>78.89</td>
	<td align=center>5.06</td>
	<td align=center>1.06</td>
	<td align=center>0.22</td>
	<td align=center>0.20</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.24</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1100</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;18:00</td>
	<td align=center>12.06</td>
	<td align=center>79.21</td>
	<td align=center>4.95</td>
	<td align=center>0.98</td>
	<td align=center>0.20</td>
	<td align=center>0.18</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.27</td>
	<td align=center>935</td>
	<td align=center>0.72</td>
	<td align=center>1100</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;17:00</td>
	<td align=center>11.95</td>
	<td align=center>79.42</td>
	<td align=center>4.91</td>
	<td align=center>0.88</td>
	<td align=center>0.18</td>
	<td align=center>0.17</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.03</td>
	<td align=center>2.35</td>
	<td align=center>933</td>
	<td align=center>0.72</td>
	<td align=center>1099</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;16:00</td>
	<td align=center>11.90</td>
	<td align=center>79.13</td>
	<td align=center>5.20</td>
	<td align=center>0.94</td>
	<td align=center>0.19</td>
	<td align=center>0.17</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.03</td>
	<td align=center>2.35</td>
	<td align=center>936</td>
	<td align=center>0.72</td>
	<td align=center>1102</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;15:00</td>
	<td align=center>12.00</td>
	<td align=center>79.04</td>
	<td align=center>5.18</td>
	<td align=center>0.90</td>
	<td align=center>0.18</td>
	<td align=center>0.16</td>
	<td align=center>0.06</td>
	<td align=center>0.03</td>
	<td align=center>0.03</td>
	<td align=center>2.43</td>
	<td align=center>933</td>
	<td align=center>0.72</td>
	<td align=center>1098</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;14:00</td>
	<td align=center>12.11</td>
	<td align=center>78.81</td>
	<td align=center>5.07</td>
	<td align=center>0.94</td>
	<td align=center>0.19</td>
	<td align=center>0.17</td>
	<td align=center>0.06</td>
	<td align=center>0.03</td>
	<td align=center>0.03</td>
	<td align=center>2.59</td>
	<td align=center>931</td>
	<td align=center>0.72</td>
	<td align=center>1093</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;13:00</td>
	<td align=center>12.11</td>
	<td align=center>79.03</td>
	<td align=center>5.06</td>
	<td align=center>0.96</td>
	<td align=center>0.20</td>
	<td align=center>0.17</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.03</td>
	<td align=center>2.33</td>
	<td align=center>934</td>
	<td align=center>0.72</td>
	<td align=center>1098</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;12:00</td>
	<td align=center>12.38</td>
	<td align=center>78.50</td>
	<td align=center>5.17</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.20</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.31</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;11:00</td>
	<td align=center>12.55</td>
	<td align=center>78.25</td>
	<td align=center>5.16</td>
	<td align=center>1.11</td>
	<td align=center>0.24</td>
	<td align=center>0.21</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.32</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1093</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;10:00</td>
	<td align=center>12.64</td>
	<td align=center>78.11</td>
	<td align=center>5.17</td>
	<td align=center>1.15</td>
	<td align=center>0.24</td>
	<td align=center>0.22</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.05</td>
	<td align=center>2.32</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1092</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;09:00</td>
	<td align=center>12.73</td>
	<td align=center>77.90</td>
	<td align=center>5.23</td>
	<td align=center>1.20</td>
	<td align=center>0.25</td>
	<td align=center>0.23</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.28</td>
	<td align=center>937</td>
	<td align=center>0.74</td>
	<td align=center>1093</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;08:00</td>
	<td align=center>12.52</td>
	<td align=center>78.12</td>
	<td align=center>5.29</td>
	<td align=center>1.12</td>
	<td align=center>0.23</td>
	<td align=center>0.21</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.35</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1094</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;07:00</td>
	<td align=center>12.44</td>
	<td align=center>78.19</td>
	<td align=center>5.31</td>
	<td align=center>1.13</td>
	<td align=center>0.23</td>
	<td align=center>0.21</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.33</td>
	<td align=center>937</td>
	<td align=center>0.73</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;06:00</td>
	<td align=center>12.41</td>
	<td align=center>78.34</td>
	<td align=center>5.25</td>
	<td align=center>1.09</td>
	<td align=center>0.23</td>
	<td align=center>0.20</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.35</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;05:00</td>
	<td align=center>12.24</td>
	<td align=center>78.46</td>
	<td align=center>5.23</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.19</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.44</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;04:00</td>
	<td align=center>12.37</td>
	<td align=center>78.05</td>
	<td align=center>5.40</td>
	<td align=center>1.17</td>
	<td align=center>0.24</td>
	<td align=center>0.22</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.40</td>
	<td align=center>939</td>
	<td align=center>0.73</td>
	<td align=center>1098</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;03:00</td>
	<td align=center>12.45</td>
	<td align=center>77.90</td>
	<td align=center>5.40</td>
	<td align=center>1.20</td>
	<td align=center>0.25</td>
	<td align=center>0.22</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.41</td>
	<td align=center>940</td>
	<td align=center>0.73</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;02:00</td>
	<td align=center>12.58</td>
	<td align=center>77.73</td>
	<td align=center>5.34</td>
	<td align=center>1.24</td>
	<td align=center>0.26</td>
	<td align=center>0.23</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.45</td>
	<td align=center>939</td>
	<td align=center>0.74</td>
	<td align=center>1094</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;01:00</td>
	<td align=center>12.28</td>
	<td align=center>78.54</td>
	<td align=center>5.08</td>
	<td align=center>1.07</td>
	<td align=center>0.22</td>
	<td align=center>0.20</td>
	<td align=center>0.06</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.46</td>
	<td align=center>935</td>
	<td align=center>0.73</td>
	<td align=center>1095</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">17/12/2549&nbsp;00:00</td>
	<td align=center>12.18</td>
	<td align=center>78.72</td>
	<td align=center>5.00</td>
	<td align=center>1.10</td>
	<td align=center>0.22</td>
	<td align=center>0.20</td>
	<td align=center>0.07</td>
	<td align=center>0.04</td>
	<td align=center>0.04</td>
	<td align=center>2.43</td>
	<td align=center>936</td>
	<td align=center>0.73</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;23:00</td>
	<td align=center>12.91</td>
	<td align=center>76.84</td>
	<td align=center>5.49</td>
	<td align=center>1.54</td>
	<td align=center>0.31</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.37</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1094</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;22:00</td>
	<td align=center>13.29</td>
	<td align=center>76.22</td>
	<td align=center>5.58</td>
	<td align=center>1.64</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.44</td>
	<td align=center>944</td>
	<td align=center>0.75</td>
	<td align=center>1090</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;21:00</td>
	<td align=center>13.40</td>
	<td align=center>76.12</td>
	<td align=center>5.55</td>
	<td align=center>1.67</td>
	<td align=center>0.34</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.39</td>
	<td align=center>944</td>
	<td align=center>0.75</td>
	<td align=center>1089</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;20:00</td>
	<td align=center>13.58</td>
	<td align=center>75.68</td>
	<td align=center>5.69</td>
	<td align=center>1.68</td>
	<td align=center>0.34</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.51</td>
	<td align=center>942</td>
	<td align=center>0.75</td>
	<td align=center>1084</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;19:00</td>
	<td align=center>13.03</td>
	<td align=center>76.57</td>
	<td align=center>5.62</td>
	<td align=center>1.59</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.37</td>
	<td align=center>946</td>
	<td align=center>0.75</td>
	<td align=center>1095</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;18:00</td>
	<td align=center>12.99</td>
	<td align=center>76.60</td>
	<td align=center>5.65</td>
	<td align=center>1.58</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.36</td>
	<td align=center>947</td>
	<td align=center>0.75</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;17:00</td>
	<td align=center>12.95</td>
	<td align=center>76.63</td>
	<td align=center>5.65</td>
	<td align=center>1.59</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.36</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;16:00</td>
	<td align=center>13.03</td>
	<td align=center>76.41</td>
	<td align=center>5.65</td>
	<td align=center>1.63</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.36</td>
	<td align=center>949</td>
	<td align=center>0.75</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;15:00</td>
	<td align=center>12.98</td>
	<td align=center>76.61</td>
	<td align=center>5.60</td>
	<td align=center>1.61</td>
	<td align=center>0.34</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.35</td>
	<td align=center>948</td>
	<td align=center>0.75</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;14:00</td>
	<td align=center>12.98</td>
	<td align=center>76.74</td>
	<td align=center>5.53</td>
	<td align=center>1.58</td>
	<td align=center>0.33</td>
	<td align=center>0.29</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.33</td>
	<td align=center>947</td>
	<td align=center>0.75</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;13:00</td>
	<td align=center>12.67</td>
	<td align=center>77.47</td>
	<td align=center>5.33</td>
	<td align=center>1.40</td>
	<td align=center>0.30</td>
	<td align=center>0.26</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.37</td>
	<td align=center>943</td>
	<td align=center>0.74</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;12:00</td>
	<td align=center>12.70</td>
	<td align=center>77.35</td>
	<td align=center>5.37</td>
	<td align=center>1.44</td>
	<td align=center>0.31</td>
	<td align=center>0.27</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>2.36</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1098</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;11:00</td>
	<td align=center>12.74</td>
	<td align=center>77.32</td>
	<td align=center>5.38</td>
	<td align=center>1.44</td>
	<td align=center>0.31</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>2.33</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1097</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;10:00</td>
	<td align=center>12.73</td>
	<td align=center>77.42</td>
	<td align=center>5.38</td>
	<td align=center>1.38</td>
	<td align=center>0.30</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>2.34</td>
	<td align=center>943</td>
	<td align=center>0.74</td>
	<td align=center>1096</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;09:00</td>
	<td align=center>12.53</td>
	<td align=center>77.67</td>
	<td align=center>5.41</td>
	<td align=center>1.34</td>
	<td align=center>0.29</td>
	<td align=center>0.25</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.33</td>
	<td align=center>944</td>
	<td align=center>0.74</td>
	<td align=center>1099</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;08:00</td>
	<td align=center>12.44</td>
	<td align=center>77.69</td>
	<td align=center>5.40</td>
	<td align=center>1.37</td>
	<td align=center>0.30</td>
	<td align=center>0.27</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>2.34</td>
	<td align=center>946</td>
	<td align=center>0.74</td>
	<td align=center>1102</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;07:00</td>
	<td align=center>12.42</td>
	<td align=center>77.88</td>
	<td align=center>5.41</td>
	<td align=center>1.27</td>
	<td align=center>0.27</td>
	<td align=center>0.24</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.35</td>
	<td align=center>942</td>
	<td align=center>0.73</td>
	<td align=center>1100</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;06:00</td>
	<td align=center>12.55</td>
	<td align=center>77.61</td>
	<td align=center>5.42</td>
	<td align=center>1.37</td>
	<td align=center>0.29</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.32</td>
	<td align=center>945</td>
	<td align=center>0.74</td>
	<td align=center>1100</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;05:00</td>
	<td align=center>12.51</td>
	<td align=center>77.56</td>
	<td align=center>5.60</td>
	<td align=center>1.41</td>
	<td align=center>0.30</td>
	<td align=center>0.27</td>
	<td align=center>0.09</td>
	<td align=center>0.05</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>949</td>
	<td align=center>0.74</td>
	<td align=center>1105</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;04:00</td>
	<td align=center>12.35</td>
	<td align=center>77.83</td>
	<td align=center>5.54</td>
	<td align=center>1.37</td>
	<td align=center>0.29</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.17</td>
	<td align=center>949</td>
	<td align=center>0.74</td>
	<td align=center>1107</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;03:00</td>
	<td align=center>12.44</td>
	<td align=center>77.64</td>
	<td align=center>5.61</td>
	<td align=center>1.39</td>
	<td align=center>0.29</td>
	<td align=center>0.26</td>
	<td align=center>0.08</td>
	<td align=center>0.05</td>
	<td align=center>0.05</td>
	<td align=center>2.18</td>
	<td align=center>949</td>
	<td align=center>0.74</td>
	<td align=center>1105</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;02:00</td>
	<td align=center>12.53</td>
	<td align=center>77.27</td>
	<td align=center>5.77</td>
	<td align=center>1.49</td>
	<td align=center>0.30</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>952</td>
	<td align=center>0.74</td>
	<td align=center>1107</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;01:00</td>
	<td align=center>12.51</td>
	<td align=center>77.32</td>
	<td align=center>5.72</td>
	<td align=center>1.51</td>
	<td align=center>0.31</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.14</td>
	<td align=center>953</td>
	<td align=center>0.74</td>
	<td align=center>1107</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">16/12/2549&nbsp;00:00</td>
	<td align=center>12.46</td>
	<td align=center>77.32</td>
	<td align=center>5.75</td>
	<td align=center>1.52</td>
	<td align=center>0.31</td>
	<td align=center>0.28</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.15</td>
	<td align=center>954</td>
	<td align=center>0.74</td>
	<td align=center>1109</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
	<td colspan="14" align="middle" height="2" ></td>
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;23:00</td>
	<td align=center>12.48</td>
	<td align=center>77.31</td>
	<td align=center>5.69</td>
	<td align=center>1.53</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.17</td>
	<td align=center>953</td>
	<td align=center>0.74</td>
	<td align=center>1108</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;22:00</td>
	<td align=center>12.45</td>
	<td align=center>77.15</td>
	<td align=center>5.86</td>
	<td align=center>1.55</td>
	<td align=center>0.32</td>
	<td align=center>0.29</td>
	<td align=center>0.09</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>956</td>
	<td align=center>0.74</td>
	<td align=center>1110</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;21:00</td>
	<td align=center>12.54</td>
	<td align=center>76.85</td>
	<td align=center>6.00</td>
	<td align=center>1.62</td>
	<td align=center>0.33</td>
	<td align=center>0.30</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.14</td>
	<td align=center>958</td>
	<td align=center>0.74</td>
	<td align=center>1110</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;20:00</td>
	<td align=center>12.43</td>
	<td align=center>76.90</td>
	<td align=center>5.83</td>
	<td align=center>1.66</td>
	<td align=center>0.33</td>
	<td align=center>0.31</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.06</td>
	<td align=center>2.16</td>
	<td align=center>957</td>
	<td align=center>0.74</td>
	<td align=center>1109</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;19:00</td>
	<td align=center>12.65</td>
	<td align=center>76.69</td>
	<td align=center>5.86</td>
	<td align=center>1.73</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1110</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;18:00</td>
	<td align=center>12.64</td>
	<td align=center>76.76</td>
	<td align=center>5.80</td>
	<td align=center>1.73</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1109</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;17:00</td>
	<td align=center>12.69</td>
	<td align=center>76.66</td>
	<td align=center>5.84</td>
	<td align=center>1.73</td>
	<td align=center>0.36</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;16:00</td>
	<td align=center>12.68</td>
	<td align=center>76.63</td>
	<td align=center>5.84</td>
	<td align=center>1.74</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.08</td>
	<td align=center>2.17</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;15:00</td>
	<td align=center>12.69</td>
	<td align=center>76.61</td>
	<td align=center>5.83</td>
	<td align=center>1.75</td>
	<td align=center>0.37</td>
	<td align=center>0.34</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.18</td>
	<td align=center>959</td>
	<td align=center>0.75</td>
	<td align=center>1109</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;14:00</td>
	<td align=center>12.78</td>
	<td align=center>76.53</td>
	<td align=center>5.88</td>
	<td align=center>1.74</td>
	<td align=center>0.36</td>
	<td align=center>0.33</td>
	<td align=center>0.11</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.14</td>
	<td align=center>958</td>
	<td align=center>0.75</td>
	<td align=center>1108</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;13:00</td>
	<td align=center>12.73</td>
	<td align=center>76.71</td>
	<td align=center>5.83</td>
	<td align=center>1.67</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.06</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>956</td>
	<td align=center>0.75</td>
	<td align=center>1107</td> 
  </tr>
  <tr class="body2" bgcolor="#F3F1CB" align="right">
	<td align="center">15/12/2549&nbsp;12:00</td>
	<td align=center>12.67</td>
	<td align=center>76.77</td>
	<td align=center>5.82</td>
	<td align=center>1.69</td>
	<td align=center>0.35</td>
	<td align=center>0.32</td>
	<td align=center>0.10</td>
	<td align=center>0.07</td>
	<td align=center>0.07</td>
	<td align=center>2.16</td>
	<td align=center>957</td>
	<td align=center>0.75</td>
	<td align=center>1108</td> 
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
