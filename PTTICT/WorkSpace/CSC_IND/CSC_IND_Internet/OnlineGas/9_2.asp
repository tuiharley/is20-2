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
<title>Online Gas Quality Past 7 Days. </title>
<style type="text/css">
<!--
.head { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; }
.head2 { font-family: MS Sans Serif; font-size:8pt; }
.head4 { font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#000000 }
.body { font-family: MS Sans Serif; font-size:6pt; }
-->
</style>
<link rel="stylesheet" href="../csc-text.css" type="text/css">
</head>

<body bgcolor="#ffffff" leftmargin="5" topmargin="0" >
<!-- #include file = "header.asp" -->
<table width="770" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="20" bgcolor="#000066">&nbsp;</td>
    <td width="750" class="head4" bgcolor="#000066"><font color="#ffffff">Online 
      Gas Quality Past 7 Days</font></td>
  </tr>
</table>
<table BORDER="0" CELLPADDING="2" width="574" >
  <tr class="head">
    <td bgcolor="#37a4bb" align="left" colspan="16"  ><font color="#ffff80"><strong>ON LINE MONITOR BY GAS CHROMATOGRAPH  - PAST 7 DAY.</strong></font></td>
  </tr>
  <tr align="middle" bgcolor="#55caca" class="head">
    <td WIDTH="106" rowspan="2" >TIME</td>    
    <td  colspan="4" >ON#1 (AT BV.12)</td>
    <td  colspan="4" >MTP (AT DPCU)</td> 
 </tr>
  
  <tr align="middle" bgcolor="#55caca">   
    <td WIDTH="65" height="3" class="head"> 
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="head" align="middle">
        <td>LHV(dry)</td>
      </tr>
      <tr class="head2" align="middle">
        <td>(BTU/SCF)</td>
      </tr>
    </table>
	</td>
    <td WIDTH="65" height="3"> 
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="head" align="middle">
        <td>HHV(dry)</td>
      </tr>
      <tr class="head2" align="middle">
        <td>(BTU/SCF)</td>
      </tr>
    </table>
	</td>
    <td WIDTH="58" height="3" class="head" >SG.</td>
    <td WIDTH="60"  height="3"> 
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="head" align="middle">
        <td>WI</td>      
      </tr>
      <tr class="head2" align="middle">
        <td>(BTU/SCF)</td>
      </tr>
    </table>
    </td>   
    <td WIDTH="65" height="3" class="head"> 
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="head" align="middle">
        <td>LHV(dry)</td>
      </tr>
      <tr class="head2" align="middle">
        <td>(BTU/SCF)</td>
      </tr>
    </table>
	</td>
    <td WIDTH="65" height="3" class="head"> 
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="head" align="middle">
        <td>HHV(dry)</td> 
      </tr>
      <tr class="head2" align="middle">
        <td>(BTU/SCF)</td>
      </tr>
    </table>
    </td>
    <td WIDTH="60" height="3" class="head" >SG.</td>
    <td WIDTH="58"  height="3"> 
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="head" align="middle">
        <td>WI</td>      
      </tr>
      <tr class="head2" align="middle">
        <td>(BTU/SCF)</td>
      </tr>
    </table>
    </td> 
  </tr>
  
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">876.1730</td>
    <td WIDTH="65">970.0179</td>
    <td WIDTH="58">0.7364000</td>
    <td WIDTH="60">1130.3760</td>
    <td WIDTH="65">884.3521</td>
    <td WIDTH="65">978.9574</td>
    <td WIDTH="58">0.7338000</td>
    <td WIDTH="60">1142.8120</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">878.2483</td>
    <td WIDTH="65">972.1920</td>
    <td WIDTH="58">0.7398000</td>
    <td WIDTH="60">1130.3030</td>
    <td WIDTH="65">881.2261</td>
    <td WIDTH="65">975.6322</td>
    <td WIDTH="58">0.7305000</td>
    <td WIDTH="60">1141.5000</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">878.7366</td>
    <td WIDTH="65">972.7822</td>
    <td WIDTH="58">0.7383000</td>
    <td WIDTH="60">1132.1370</td>
    <td WIDTH="65">877.9521</td>
    <td WIDTH="65">972.0136</td>
    <td WIDTH="58">0.7327000</td>
    <td WIDTH="60">1135.5580</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">876.6308</td>
    <td WIDTH="65">970.5148</td>
    <td WIDTH="58">0.7373000</td>
    <td WIDTH="60">1130.2640</td>
    <td WIDTH="65">847.6959</td>
    <td WIDTH="65">940.7542</td>
    <td WIDTH="58">0.6590000</td>
    <td WIDTH="60">1158.8670</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">875.7458</td>
    <td WIDTH="65">969.5209</td>
    <td WIDTH="58">0.7364000</td>
    <td WIDTH="60">1129.7970</td>
    <td WIDTH="65">875.5116</td>
    <td WIDTH="65">969.5774</td>
    <td WIDTH="58">0.7228000</td>
    <td WIDTH="60">1140.4430</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">876.8444</td>
    <td WIDTH="65">970.7011</td>
    <td WIDTH="58">0.7380000</td>
    <td WIDTH="60">1129.9450</td>
    <td WIDTH="65">876.9752</td>
    <td WIDTH="65">971.1507</td>
    <td WIDTH="58">0.7237000</td>
    <td WIDTH="60">1141.5830</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">877.2717</td>
    <td WIDTH="65">971.3224</td>
    <td WIDTH="58">0.7374000</td>
    <td WIDTH="60">1131.1280</td>
    <td WIDTH="65">876.6351</td>
    <td WIDTH="65">970.7089</td>
    <td WIDTH="58">0.7267000</td>
    <td WIDTH="60">1138.7050</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">877.8820</td>
    <td WIDTH="65">971.7262</td>
    <td WIDTH="58">0.7376000</td>
    <td WIDTH="60">1131.4450</td>
    <td WIDTH="65">876.9147</td>
    <td WIDTH="65">970.9861</td>
    <td WIDTH="58">0.7279000</td>
    <td WIDTH="60">1138.0910</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">877.5158</td>
    <td WIDTH="65">971.4777</td>
    <td WIDTH="58">0.7354000</td>
    <td WIDTH="60">1132.8460</td>
    <td WIDTH="65">877.4572</td>
    <td WIDTH="65">971.5494</td>
    <td WIDTH="58">0.7289000</td>
    <td WIDTH="60">1137.9700</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">879.8657</td>
    <td WIDTH="65">973.9001</td>
    <td WIDTH="58">0.7416000</td>
    <td WIDTH="60">1130.9140</td>
    <td WIDTH="65">876.6873</td>
    <td WIDTH="65">970.7031</td>
    <td WIDTH="58">0.7294000</td>
    <td WIDTH="60">1136.5890</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">22/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">879.7437</td>
    <td WIDTH="65">973.7759</td>
    <td WIDTH="58">0.7411000</td>
    <td WIDTH="60">1131.1510</td>
    <td WIDTH="65">874.6282</td>
    <td WIDTH="65">968.4837</td>
    <td WIDTH="58">0.7283000</td>
    <td WIDTH="60">1134.8470</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">877.0275</td>
    <td WIDTH="65">970.9186</td>
    <td WIDTH="58">0.7368000</td>
    <td WIDTH="60">1131.1180</td>
    <td WIDTH="65">871.7089</td>
    <td WIDTH="65">965.4125</td>
    <td WIDTH="58">0.7238000</td>
    <td WIDTH="60">1134.7590</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">879.3774</td>
    <td WIDTH="65">973.4033</td>
    <td WIDTH="58">0.7397000</td>
    <td WIDTH="60">1131.7880</td>
    <td WIDTH="65">869.7568</td>
    <td WIDTH="65">963.3575</td>
    <td WIDTH="58">0.7208000</td>
    <td WIDTH="60">1134.6980</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">879.4690</td>
    <td WIDTH="65">973.5275</td>
    <td WIDTH="58">0.7389000</td>
    <td WIDTH="60">1132.5450</td>
    <td WIDTH="65">877.1998</td>
    <td WIDTH="65">971.0845</td>
    <td WIDTH="58">0.7375000</td>
    <td WIDTH="60">1130.7750</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">879.4080</td>
    <td WIDTH="65">973.4653</td>
    <td WIDTH="58">0.7393000</td>
    <td WIDTH="60">1132.1660</td>
    <td WIDTH="65">878.4544</td>
    <td WIDTH="65">972.3992</td>
    <td WIDTH="58">0.7398000</td>
    <td WIDTH="60">1130.5440</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">879.4080</td>
    <td WIDTH="65">973.4965</td>
    <td WIDTH="58">0.7384000</td>
    <td WIDTH="60">1132.8920</td>
    <td WIDTH="65">876.3033</td>
    <td WIDTH="65">970.1364</td>
    <td WIDTH="58">0.7364000</td>
    <td WIDTH="60">1130.5140</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">880.5371</td>
    <td WIDTH="65">974.6766</td>
    <td WIDTH="58">0.7394000</td>
    <td WIDTH="60">1133.4980</td>
    <td WIDTH="65">875.7232</td>
    <td WIDTH="65">969.4702</td>
    <td WIDTH="58">0.7377000</td>
    <td WIDTH="60">1128.7420</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">880.7812</td>
    <td WIDTH="65">974.9873</td>
    <td WIDTH="58">0.7387000</td>
    <td WIDTH="60">1134.3970</td>
    <td WIDTH="65">875.9533</td>
    <td WIDTH="65">969.7370</td>
    <td WIDTH="58">0.7365000</td>
    <td WIDTH="60">1129.9720</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">881.5442</td>
    <td WIDTH="65">975.8257</td>
    <td WIDTH="58">0.7384000</td>
    <td WIDTH="60">1135.6030</td>
    <td WIDTH="65">875.9337</td>
    <td WIDTH="65">969.6714</td>
    <td WIDTH="58">0.7380000</td>
    <td WIDTH="60">1128.7460</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">880.9338</td>
    <td WIDTH="65">975.1115</td>
    <td WIDTH="58">0.7391000</td>
    <td WIDTH="60">1134.2340</td>
    <td WIDTH="65">876.8035</td>
    <td WIDTH="65">970.6083</td>
    <td WIDTH="58">0.7384000</td>
    <td WIDTH="60">1129.5310</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">879.3164</td>
    <td WIDTH="65">973.4033</td>
    <td WIDTH="58">0.7371000</td>
    <td WIDTH="60">1133.7820</td>
    <td WIDTH="65">877.2001</td>
    <td WIDTH="65">970.9874</td>
    <td WIDTH="58">0.7408000</td>
    <td WIDTH="60">1128.1400</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">879.5605</td>
    <td WIDTH="65">973.6828</td>
    <td WIDTH="58">0.7368000</td>
    <td WIDTH="60">1134.3390</td>
    <td WIDTH="65">879.7934</td>
    <td WIDTH="65">973.8215</td>
    <td WIDTH="58">0.7401000</td>
    <td WIDTH="60">1131.9680</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">881.9714</td>
    <td WIDTH="65">976.2297</td>
    <td WIDTH="58">0.7406000</td>
    <td WIDTH="60">1134.3840</td>
    <td WIDTH="65">880.4684</td>
    <td WIDTH="65">974.4697</td>
    <td WIDTH="58">0.7440000</td>
    <td WIDTH="60">1129.7490</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;11:00</td>
    <td WIDTH="65">880.7812</td>
    <td WIDTH="65">974.9561</td>
    <td WIDTH="58">0.7386000</td>
    <td WIDTH="60">1134.4370</td>
    <td WIDTH="65">880.5414</td>
    <td WIDTH="65">974.6232</td>
    <td WIDTH="58">0.7406000</td>
    <td WIDTH="60">1132.5170</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">882.0936</td>
    <td WIDTH="65">976.2917</td>
    <td WIDTH="58">0.7435000</td>
    <td WIDTH="60">1132.2420</td>
    <td WIDTH="65">877.4320</td>
    <td WIDTH="65">971.3200</td>
    <td WIDTH="58">0.7372000</td>
    <td WIDTH="60">1131.2790</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">881.8188</td>
    <td WIDTH="65">976.0121</td>
    <td WIDTH="58">0.7418000</td>
    <td WIDTH="60">1133.2140</td>
    <td WIDTH="65">882.1837</td>
    <td WIDTH="65">976.4779</td>
    <td WIDTH="58">0.7377000</td>
    <td WIDTH="60">1136.9010</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">883.3753</td>
    <td WIDTH="65">977.6893</td>
    <td WIDTH="58">0.7429000</td>
    <td WIDTH="60">1134.3200</td>
    <td WIDTH="65">879.3266</td>
    <td WIDTH="65">973.4155</td>
    <td WIDTH="58">0.7358000</td>
    <td WIDTH="60">1134.7970</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">883.2532</td>
    <td WIDTH="65">977.5961</td>
    <td WIDTH="58">0.7415000</td>
    <td WIDTH="60">1135.2820</td>
    <td WIDTH="65">877.5216</td>
    <td WIDTH="65">971.4962</td>
    <td WIDTH="58">0.7339000</td>
    <td WIDTH="60">1134.0250</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">882.8260</td>
    <td WIDTH="65">977.1302</td>
    <td WIDTH="58">0.7419000</td>
    <td WIDTH="60">1134.4350</td>
    <td WIDTH="65">878.2903</td>
    <td WIDTH="65">972.3317</td>
    <td WIDTH="58">0.7341000</td>
    <td WIDTH="60">1134.8460</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">882.0936</td>
    <td WIDTH="65">976.2917</td>
    <td WIDTH="58">0.7422000</td>
    <td WIDTH="60">1133.2330</td>
    <td WIDTH="65">877.9954</td>
    <td WIDTH="65">972.0018</td>
    <td WIDTH="58">0.7345000</td>
    <td WIDTH="60">1134.1520</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">880.2014</td>
    <td WIDTH="65">974.3349</td>
    <td WIDTH="58">0.7388000</td>
    <td WIDTH="60">1133.5610</td>
    <td WIDTH="65">878.8332</td>
    <td WIDTH="65">972.9251</td>
    <td WIDTH="58">0.7341000</td>
    <td WIDTH="60">1135.5380</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">878.6145</td>
    <td WIDTH="65">972.7200</td>
    <td WIDTH="58">0.7347000</td>
    <td WIDTH="60">1134.8350</td>
    <td WIDTH="65">877.9891</td>
    <td WIDTH="65">971.9798</td>
    <td WIDTH="58">0.7353000</td>
    <td WIDTH="60">1133.5090</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">879.7742</td>
    <td WIDTH="65">973.9933</td>
    <td WIDTH="58">0.7339000</td>
    <td WIDTH="60">1136.9400</td>
    <td WIDTH="65">878.7958</td>
    <td WIDTH="65">972.8284</td>
    <td WIDTH="58">0.7365000</td>
    <td WIDTH="60">1133.5740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">881.5747</td>
    <td WIDTH="65">975.8569</td>
    <td WIDTH="58">0.7393000</td>
    <td WIDTH="60">1134.9480</td>
    <td WIDTH="65">879.5759</td>
    <td WIDTH="65">973.6752</td>
    <td WIDTH="58">0.7366000</td>
    <td WIDTH="60">1134.4840</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">21/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">881.6968</td>
    <td WIDTH="65">975.9811</td>
    <td WIDTH="58">0.7380000</td>
    <td WIDTH="60">1136.0910</td>
    <td WIDTH="65">879.9929</td>
    <td WIDTH="65">974.0969</td>
    <td WIDTH="58">0.7380000</td>
    <td WIDTH="60">1133.8980</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">881.1169</td>
    <td WIDTH="65">975.2978</td>
    <td WIDTH="58">0.7397000</td>
    <td WIDTH="60">1133.9900</td>
    <td WIDTH="65">879.5628</td>
    <td WIDTH="65">973.6135</td>
    <td WIDTH="58">0.7383000</td>
    <td WIDTH="60">1133.1050</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">880.8118</td>
    <td WIDTH="65">974.9561</td>
    <td WIDTH="58">0.7409000</td>
    <td WIDTH="60">1132.6750</td>
    <td WIDTH="65">882.2680</td>
    <td WIDTH="65">976.4455</td>
    <td WIDTH="58">0.7432000</td>
    <td WIDTH="60">1132.6490</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">880.5371</td>
    <td WIDTH="65">974.6766</td>
    <td WIDTH="58">0.7403000</td>
    <td WIDTH="60">1132.8090</td>
    <td WIDTH="65">883.9167</td>
    <td WIDTH="65">978.2428</td>
    <td WIDTH="58">0.7432000</td>
    <td WIDTH="60">1134.7330</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">879.4385</td>
    <td WIDTH="65">973.4965</td>
    <td WIDTH="58">0.7394000</td>
    <td WIDTH="60">1132.1260</td>
    <td WIDTH="65">884.1030</td>
    <td WIDTH="65">978.4677</td>
    <td WIDTH="58">0.7423000</td>
    <td WIDTH="60">1135.6820</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">879.2859</td>
    <td WIDTH="65">973.3722</td>
    <td WIDTH="58">0.7374000</td>
    <td WIDTH="60">1133.5150</td>
    <td WIDTH="65">885.2045</td>
    <td WIDTH="65">979.6877</td>
    <td WIDTH="58">0.7411000</td>
    <td WIDTH="60">1138.0180</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">878.9807</td>
    <td WIDTH="65">972.9685</td>
    <td WIDTH="58">0.7403000</td>
    <td WIDTH="60">1130.8240</td>
    <td WIDTH="65">883.9539</td>
    <td WIDTH="65">978.3027</td>
    <td WIDTH="58">0.7422000</td>
    <td WIDTH="60">1135.5670</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">879.5605</td>
    <td WIDTH="65">973.6517</td>
    <td WIDTH="58">0.7386000</td>
    <td WIDTH="60">1132.9190</td>
    <td WIDTH="65">882.8116</td>
    <td WIDTH="65">977.0979</td>
    <td WIDTH="58">0.7405000</td>
    <td WIDTH="60">1135.4700</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">879.8962</td>
    <td WIDTH="65">974.0245</td>
    <td WIDTH="58">0.7399000</td>
    <td WIDTH="60">1132.3570</td>
    <td WIDTH="65">878.4705</td>
    <td WIDTH="65">972.5521</td>
    <td WIDTH="58">0.7324000</td>
    <td WIDTH="60">1136.4200</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">881.4526</td>
    <td WIDTH="65">975.7327</td>
    <td WIDTH="58">0.7384000</td>
    <td WIDTH="60">1135.4940</td>
    <td WIDTH="65">878.5838</td>
    <td WIDTH="65">972.7560</td>
    <td WIDTH="58">0.7291000</td>
    <td WIDTH="60">1139.2270</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">880.4456</td>
    <td WIDTH="65">974.7076</td>
    <td WIDTH="58">0.7369000</td>
    <td WIDTH="60">1135.4550</td>
    <td WIDTH="65">883.4345</td>
    <td WIDTH="65">977.8202</td>
    <td WIDTH="58">0.7388000</td>
    <td WIDTH="60">1137.6160</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">878.8892</td>
    <td WIDTH="65">972.9685</td>
    <td WIDTH="58">0.7373000</td>
    <td WIDTH="60">1133.1220</td>
    <td WIDTH="65">882.2701</td>
    <td WIDTH="65">976.6023</td>
    <td WIDTH="58">0.7367000</td>
    <td WIDTH="60">1137.8170</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">881.1780</td>
    <td WIDTH="65">975.3290</td>
    <td WIDTH="58">0.7431000</td>
    <td WIDTH="60">1131.4300</td>
    <td WIDTH="65">882.4949</td>
    <td WIDTH="65">976.7416</td>
    <td WIDTH="58">0.7411000</td>
    <td WIDTH="60">1134.5960</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;11:00</td>
    <td WIDTH="65">881.3306</td>
    <td WIDTH="65">975.5153</td>
    <td WIDTH="58">0.7423000</td>
    <td WIDTH="60">1132.2550</td>
    <td WIDTH="65">880.6486</td>
    <td WIDTH="65">974.7959</td>
    <td WIDTH="58">0.7380000</td>
    <td WIDTH="60">1134.7120</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">882.8565</td>
    <td WIDTH="65">977.0992</td>
    <td WIDTH="58">0.7456000</td>
    <td WIDTH="60">1131.5810</td>
    <td WIDTH="65">880.0555</td>
    <td WIDTH="65">974.1340</td>
    <td WIDTH="58">0.7393000</td>
    <td WIDTH="60">1132.9440</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">882.1851</td>
    <td WIDTH="65">976.3538</td>
    <td WIDTH="58">0.7456000</td>
    <td WIDTH="60">1130.7180</td>
    <td WIDTH="65">878.9059</td>
    <td WIDTH="65">972.9030</td>
    <td WIDTH="58">0.7385000</td>
    <td WIDTH="60">1132.1250</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">880.8423</td>
    <td WIDTH="65">974.9873</td>
    <td WIDTH="58">0.7415000</td>
    <td WIDTH="60">1132.2530</td>
    <td WIDTH="65">878.8785</td>
    <td WIDTH="65">972.8917</td>
    <td WIDTH="58">0.7377000</td>
    <td WIDTH="60">1132.7250</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">880.0183</td>
    <td WIDTH="65">974.1176</td>
    <td WIDTH="58">0.7399000</td>
    <td WIDTH="60">1132.4650</td>
    <td WIDTH="65">877.6794</td>
    <td WIDTH="65">971.6302</td>
    <td WIDTH="58">0.7358000</td>
    <td WIDTH="60">1132.7160</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">879.7742</td>
    <td WIDTH="65">973.9001</td>
    <td WIDTH="58">0.7388000</td>
    <td WIDTH="60">1133.0550</td>
    <td WIDTH="65">875.3997</td>
    <td WIDTH="65">969.1532</td>
    <td WIDTH="58">0.7358000</td>
    <td WIDTH="60">1129.8280</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">881.9714</td>
    <td WIDTH="65">976.2917</td>
    <td WIDTH="58">0.7384000</td>
    <td WIDTH="60">1136.1450</td>
    <td WIDTH="65">877.6231</td>
    <td WIDTH="65">971.5994</td>
    <td WIDTH="58">0.7346000</td>
    <td WIDTH="60">1133.6050</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">881.5747</td>
    <td WIDTH="65">975.8569</td>
    <td WIDTH="58">0.7373000</td>
    <td WIDTH="60">1136.4860</td>
    <td WIDTH="65">878.0031</td>
    <td WIDTH="65">972.0621</td>
    <td WIDTH="58">0.7329000</td>
    <td WIDTH="60">1135.4590</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">881.6968</td>
    <td WIDTH="65">975.9501</td>
    <td WIDTH="58">0.7411000</td>
    <td WIDTH="60">1133.6770</td>
    <td WIDTH="65">878.3655</td>
    <td WIDTH="65">972.4413</td>
    <td WIDTH="58">0.7339000</td>
    <td WIDTH="60">1135.1280</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">880.5066</td>
    <td WIDTH="65">974.6145</td>
    <td WIDTH="58">0.7422000</td>
    <td WIDTH="60">1131.2860</td>
    <td WIDTH="65">878.5604</td>
    <td WIDTH="65">972.6710</td>
    <td WIDTH="58">0.7333000</td>
    <td WIDTH="60">1135.8610</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">880.7202</td>
    <td WIDTH="65">974.8319</td>
    <td WIDTH="58">0.7424000</td>
    <td WIDTH="60">1131.3860</td>
    <td WIDTH="65">876.9433</td>
    <td WIDTH="65">970.9221</td>
    <td WIDTH="58">0.7327000</td>
    <td WIDTH="60">1134.2830</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">20/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">881.5442</td>
    <td WIDTH="65">975.6395</td>
    <td WIDTH="58">0.7456000</td>
    <td WIDTH="60">1129.8910</td>
    <td WIDTH="65">881.2146</td>
    <td WIDTH="65">975.3907</td>
    <td WIDTH="58">0.7406000</td>
    <td WIDTH="60">1133.4090</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">882.1851</td>
    <td WIDTH="65">976.2917</td>
    <td WIDTH="58">0.7492000</td>
    <td WIDTH="60">1127.9260</td>
    <td WIDTH="65">881.7901</td>
    <td WIDTH="65">976.0560</td>
    <td WIDTH="58">0.7387000</td>
    <td WIDTH="60">1135.6400</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">882.0936</td>
    <td WIDTH="65">976.1985</td>
    <td WIDTH="58">0.7500000</td>
    <td WIDTH="60">1127.2170</td>
    <td WIDTH="65">883.4032</td>
    <td WIDTH="65">977.7325</td>
    <td WIDTH="58">0.7417000</td>
    <td WIDTH="60">1135.2880</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">879.7131</td>
    <td WIDTH="65">973.6828</td>
    <td WIDTH="58">0.7448000</td>
    <td WIDTH="60">1128.2300</td>
    <td WIDTH="65">883.9794</td>
    <td WIDTH="65">978.2938</td>
    <td WIDTH="58">0.7445000</td>
    <td WIDTH="60">1133.8010</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">878.3093</td>
    <td WIDTH="65">972.2852</td>
    <td WIDTH="58">0.7399000</td>
    <td WIDTH="60">1130.3350</td>
    <td WIDTH="65">883.3937</td>
    <td WIDTH="65">977.6603</td>
    <td WIDTH="58">0.7444000</td>
    <td WIDTH="60">1133.1430</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">874.6472</td>
    <td WIDTH="65">968.3718</td>
    <td WIDTH="58">0.7370000</td>
    <td WIDTH="60">1127.9980</td>
    <td WIDTH="65">883.6295</td>
    <td WIDTH="65">977.9402</td>
    <td WIDTH="58">0.7435000</td>
    <td WIDTH="60">1134.1530</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">874.8303</td>
    <td WIDTH="65">968.5892</td>
    <td WIDTH="58">0.7354000</td>
    <td WIDTH="60">1129.4780</td>
    <td WIDTH="65">885.0128</td>
    <td WIDTH="65">979.4523</td>
    <td WIDTH="58">0.7432000</td>
    <td WIDTH="60">1136.1360</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">871.7174</td>
    <td WIDTH="65">965.2970</td>
    <td WIDTH="58">0.7308000</td>
    <td WIDTH="60">1129.1760</td>
    <td WIDTH="65">886.5162</td>
    <td WIDTH="65">981.1210</td>
    <td WIDTH="58">0.7422000</td>
    <td WIDTH="60">1138.8380</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">872.6329</td>
    <td WIDTH="65">966.3219</td>
    <td WIDTH="58">0.7299000</td>
    <td WIDTH="60">1131.0720</td>
    <td WIDTH="65">885.1818</td>
    <td WIDTH="65">979.6517</td>
    <td WIDTH="58">0.7431000</td>
    <td WIDTH="60">1136.4440</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">872.9686</td>
    <td WIDTH="65">966.6946</td>
    <td WIDTH="58">0.7295000</td>
    <td WIDTH="60">1131.8180</td>
    <td WIDTH="65">883.6611</td>
    <td WIDTH="65">977.9653</td>
    <td WIDTH="58">0.7445000</td>
    <td WIDTH="60">1133.4210</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">875.0134</td>
    <td WIDTH="65">968.7134</td>
    <td WIDTH="58">0.7381000</td>
    <td WIDTH="60">1127.5550</td>
    <td WIDTH="65">882.8554</td>
    <td WIDTH="65">977.0720</td>
    <td WIDTH="58">0.7448000</td>
    <td WIDTH="60">1132.1570</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">875.8373</td>
    <td WIDTH="65">969.5521</td>
    <td WIDTH="58">0.7399000</td>
    <td WIDTH="60">1127.1580</td>
    <td WIDTH="65">882.0212</td>
    <td WIDTH="65">976.1508</td>
    <td WIDTH="58">0.7454000</td>
    <td WIDTH="60">1130.6340</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">866.6514</td>
    <td WIDTH="65">959.7686</td>
    <td WIDTH="58">0.7319000</td>
    <td WIDTH="60">1121.8650</td>
    <td WIDTH="65">880.5846</td>
    <td WIDTH="65">974.5829</td>
    <td WIDTH="58">0.7454000</td>
    <td WIDTH="60">1128.8180</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;11:00</td>
    <td WIDTH="65">871.6259</td>
    <td WIDTH="65">965.1727</td>
    <td WIDTH="58">0.7315000</td>
    <td WIDTH="60">1128.4900</td>
    <td WIDTH="65">880.3308</td>
    <td WIDTH="65">974.2468</td>
    <td WIDTH="58">0.7481000</td>
    <td WIDTH="60">1126.3910</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">880.8728</td>
    <td WIDTH="65">974.9561</td>
    <td WIDTH="58">0.7434000</td>
    <td WIDTH="60">1130.7690</td>
    <td WIDTH="65">877.5699</td>
    <td WIDTH="65">971.3784</td>
    <td WIDTH="58">0.7423000</td>
    <td WIDTH="60">1127.4540</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">885.6336</td>
    <td WIDTH="65">979.9565</td>
    <td WIDTH="58">0.7515000</td>
    <td WIDTH="60">1130.4270</td>
    <td WIDTH="65">876.1976</td>
    <td WIDTH="65">969.9525</td>
    <td WIDTH="58">0.7394000</td>
    <td WIDTH="60">1128.0040</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">887.0680</td>
    <td WIDTH="65">981.3542</td>
    <td WIDTH="58">0.7536000</td>
    <td WIDTH="60">1130.4600</td>
    <td WIDTH="65">872.0837</td>
    <td WIDTH="65">965.6764</td>
    <td WIDTH="58">0.7305000</td>
    <td WIDTH="60">1129.8520</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">885.4810</td>
    <td WIDTH="65">979.8013</td>
    <td WIDTH="58">0.7517000</td>
    <td WIDTH="60">1130.0970</td>
    <td WIDTH="65">871.0161</td>
    <td WIDTH="65">964.6049</td>
    <td WIDTH="58">0.7267000</td>
    <td WIDTH="60">1131.5450</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">885.3895</td>
    <td WIDTH="65">979.8013</td>
    <td WIDTH="58">0.7479000</td>
    <td WIDTH="60">1132.9640</td>
    <td WIDTH="65">867.5557</td>
    <td WIDTH="65">961.0024</td>
    <td WIDTH="58">0.7193000</td>
    <td WIDTH="60">1133.1030</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">886.1525</td>
    <td WIDTH="65">980.6088</td>
    <td WIDTH="58">0.7489000</td>
    <td WIDTH="60">1133.1410</td>
    <td WIDTH="65">868.1176</td>
    <td WIDTH="65">961.5061</td>
    <td WIDTH="58">0.7238000</td>
    <td WIDTH="60">1130.1670</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">885.8777</td>
    <td WIDTH="65">980.2982</td>
    <td WIDTH="58">0.7494000</td>
    <td WIDTH="60">1132.4040</td>
    <td WIDTH="65">868.6226</td>
    <td WIDTH="65">962.1035</td>
    <td WIDTH="58">0.7217000</td>
    <td WIDTH="60">1132.5140</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">885.0538</td>
    <td WIDTH="65">979.3665</td>
    <td WIDTH="58">0.7507000</td>
    <td WIDTH="60">1130.3480</td>
    <td WIDTH="65">868.6523</td>
    <td WIDTH="65">962.1550</td>
    <td WIDTH="58">0.7208000</td>
    <td WIDTH="60">1133.2810</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">885.0843</td>
    <td WIDTH="65">979.3665</td>
    <td WIDTH="58">0.7514000</td>
    <td WIDTH="60">1129.8210</td>
    <td WIDTH="65">872.0378</td>
    <td WIDTH="65">965.6144</td>
    <td WIDTH="58">0.7307000</td>
    <td WIDTH="60">1129.6250</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">885.6641</td>
    <td WIDTH="65">979.8945</td>
    <td WIDTH="58">0.7508000</td>
    <td WIDTH="60">1130.8820</td>
    <td WIDTH="65">875.6374</td>
    <td WIDTH="65">969.4565</td>
    <td WIDTH="58">0.7340000</td>
    <td WIDTH="60">1131.5670</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">19/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">885.6336</td>
    <td WIDTH="65">980.0187</td>
    <td WIDTH="58">0.7485000</td>
    <td WIDTH="60">1132.7610</td>
    <td WIDTH="65">873.4888</td>
    <td WIDTH="65">967.2163</td>
    <td WIDTH="58">0.7300000</td>
    <td WIDTH="60">1132.0410</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">886.3966</td>
    <td WIDTH="65">980.8884</td>
    <td WIDTH="58">0.7481000</td>
    <td WIDTH="60">1134.0700</td>
    <td WIDTH="65">875.5022</td>
    <td WIDTH="65">969.3711</td>
    <td WIDTH="58">0.7314000</td>
    <td WIDTH="60">1133.4770</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">884.8707</td>
    <td WIDTH="65">979.2733</td>
    <td WIDTH="58">0.7465000</td>
    <td WIDTH="60">1133.4150</td>
    <td WIDTH="65">878.8323</td>
    <td WIDTH="65">972.8682</td>
    <td WIDTH="58">0.7371000</td>
    <td WIDTH="60">1133.1590</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">884.2603</td>
    <td WIDTH="65">978.7453</td>
    <td WIDTH="58">0.7458000</td>
    <td WIDTH="60">1133.3350</td>
    <td WIDTH="65">883.6091</td>
    <td WIDTH="65">977.8556</td>
    <td WIDTH="58">0.7465000</td>
    <td WIDTH="60">1131.7740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">883.2532</td>
    <td WIDTH="65">977.4408</td>
    <td WIDTH="58">0.7496000</td>
    <td WIDTH="60">1128.9530</td>
    <td WIDTH="65">885.3351</td>
    <td WIDTH="65">979.6093</td>
    <td WIDTH="58">0.7522000</td>
    <td WIDTH="60">1129.5000</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">883.0701</td>
    <td WIDTH="65">977.1613</td>
    <td WIDTH="58">0.7520000</td>
    <td WIDTH="60">1126.8270</td>
    <td WIDTH="65">886.2732</td>
    <td WIDTH="65">980.6373</td>
    <td WIDTH="58">0.7513000</td>
    <td WIDTH="60">1131.3620</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">882.8260</td>
    <td WIDTH="65">976.8508</td>
    <td WIDTH="58">0.7548000</td>
    <td WIDTH="60">1124.3780</td>
    <td WIDTH="65">885.9361</td>
    <td WIDTH="65">980.4057</td>
    <td WIDTH="58">0.7461000</td>
    <td WIDTH="60">1135.0300</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">882.4903</td>
    <td WIDTH="65">976.4780</td>
    <td WIDTH="58">0.7557000</td>
    <td WIDTH="60">1123.2790</td>
    <td WIDTH="65">886.3119</td>
    <td WIDTH="65">980.7907</td>
    <td WIDTH="58">0.7471000</td>
    <td WIDTH="60">1134.7150</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">878.9502</td>
    <td WIDTH="65">972.6578</td>
    <td WIDTH="58">0.7546000</td>
    <td WIDTH="60">1119.7000</td>
    <td WIDTH="65">884.6331</td>
    <td WIDTH="65">978.8806</td>
    <td WIDTH="58">0.7503000</td>
    <td WIDTH="60">1130.0880</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">867.5364</td>
    <td WIDTH="65">960.7313</td>
    <td WIDTH="58">0.7314000</td>
    <td WIDTH="60">1123.3740</td>
    <td WIDTH="65">885.2681</td>
    <td WIDTH="65">979.6396</td>
    <td WIDTH="58">0.7474000</td>
    <td WIDTH="60">1133.1560</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">863.4775</td>
    <td WIDTH="65">956.6318</td>
    <td WIDTH="58">0.7176000</td>
    <td WIDTH="60">1129.2850</td>
    <td WIDTH="65">885.9569</td>
    <td WIDTH="65">980.4479</td>
    <td WIDTH="58">0.7448000</td>
    <td WIDTH="60">1136.0690</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">864.0269</td>
    <td WIDTH="65">957.1597</td>
    <td WIDTH="58">0.7199000</td>
    <td WIDTH="60">1128.1020</td>
    <td WIDTH="65">884.3032</td>
    <td WIDTH="65">978.6685</td>
    <td WIDTH="58">0.7440000</td>
    <td WIDTH="60">1134.6170</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">864.6372</td>
    <td WIDTH="65">957.8118</td>
    <td WIDTH="58">0.7208000</td>
    <td WIDTH="60">1128.1660</td>
    <td WIDTH="65">884.4772</td>
    <td WIDTH="65">978.7573</td>
    <td WIDTH="58">0.7484000</td>
    <td WIDTH="60">1131.3790</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;11:00</td>
    <td WIDTH="65">861.7380</td>
    <td WIDTH="65">954.6751</td>
    <td WIDTH="58">0.7205000</td>
    <td WIDTH="60">1124.7050</td>
    <td WIDTH="65">883.1956</td>
    <td WIDTH="65">977.3826</td>
    <td WIDTH="58">0.7476000</td>
    <td WIDTH="60">1130.3940</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">860.4868</td>
    <td WIDTH="65">953.2153</td>
    <td WIDTH="58">0.7232000</td>
    <td WIDTH="60">1120.8870</td>
    <td WIDTH="65">883.1931</td>
    <td WIDTH="65">977.2675</td>
    <td WIDTH="58">0.7525000</td>
    <td WIDTH="60">1126.5750</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">867.8721</td>
    <td WIDTH="65">960.8557</td>
    <td WIDTH="58">0.7417000</td>
    <td WIDTH="60">1115.6910</td>
    <td WIDTH="65">884.5383</td>
    <td WIDTH="65">978.6768</td>
    <td WIDTH="58">0.7550000</td>
    <td WIDTH="60">1126.3300</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">839.0021</td>
    <td WIDTH="65">930.1077</td>
    <td WIDTH="58">0.7144000</td>
    <td WIDTH="60">1100.4300</td>
    <td WIDTH="65">882.5875</td>
    <td WIDTH="65">976.5616</td>
    <td WIDTH="58">0.7545000</td>
    <td WIDTH="60">1124.2680</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">843.4882</td>
    <td WIDTH="65">934.7976</td>
    <td WIDTH="58">0.7210000</td>
    <td WIDTH="60">1100.9050</td>
    <td WIDTH="65">869.7410</td>
    <td WIDTH="65">963.1063</td>
    <td WIDTH="58">0.7315000</td>
    <td WIDTH="60">1126.0740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">845.8076</td>
    <td WIDTH="65">937.2822</td>
    <td WIDTH="58">0.7241000</td>
    <td WIDTH="60">1101.4660</td>
    <td WIDTH="65">862.9590</td>
    <td WIDTH="65">956.1042</td>
    <td WIDTH="58">0.7148000</td>
    <td WIDTH="60">1130.8710</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">846.2654</td>
    <td WIDTH="65">937.7171</td>
    <td WIDTH="58">0.7277000</td>
    <td WIDTH="60">1099.2480</td>
    <td WIDTH="65">864.2328</td>
    <td WIDTH="65">957.4254</td>
    <td WIDTH="58">0.7176000</td>
    <td WIDTH="60">1130.2220</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">845.2277</td>
    <td WIDTH="65">936.5990</td>
    <td WIDTH="58">0.7247000</td>
    <td WIDTH="60">1100.2070</td>
    <td WIDTH="65">864.7322</td>
    <td WIDTH="65">957.9359</td>
    <td WIDTH="58">0.7191000</td>
    <td WIDTH="60">1129.6450</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">842.8779</td>
    <td WIDTH="65">934.0831</td>
    <td WIDTH="58">0.7236000</td>
    <td WIDTH="60">1098.0860</td>
    <td WIDTH="65">861.7521</td>
    <td WIDTH="65">954.6490</td>
    <td WIDTH="58">0.7210000</td>
    <td WIDTH="60">1124.2840</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">845.1057</td>
    <td WIDTH="65">936.5369</td>
    <td WIDTH="58">0.7218000</td>
    <td WIDTH="60">1102.3420</td>
    <td WIDTH="65">861.1443</td>
    <td WIDTH="65">953.9616</td>
    <td WIDTH="58">0.7220000</td>
    <td WIDTH="60">1122.6960</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">844.5869</td>
    <td WIDTH="65">935.9468</td>
    <td WIDTH="58">0.7236000</td>
    <td WIDTH="60">1100.2770</td>
    <td WIDTH="65">862.8473</td>
    <td WIDTH="65">955.5899</td>
    <td WIDTH="58">0.7318000</td>
    <td WIDTH="60">1117.0570</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">18/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">839.8871</td>
    <td WIDTH="65">930.7601</td>
    <td WIDTH="58">0.7252000</td>
    <td WIDTH="60">1092.9720</td>
    <td WIDTH="65">838.1646</td>
    <td WIDTH="65">929.2460</td>
    <td WIDTH="58">0.7102000</td>
    <td WIDTH="60">1102.6570</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">843.5493</td>
    <td WIDTH="65">934.7976</td>
    <td WIDTH="58">0.7252000</td>
    <td WIDTH="60">1097.7130</td>
    <td WIDTH="65">837.7233</td>
    <td WIDTH="65">928.6752</td>
    <td WIDTH="58">0.7142000</td>
    <td WIDTH="60">1098.8890</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">843.7934</td>
    <td WIDTH="65">934.9529</td>
    <td WIDTH="58">0.7293000</td>
    <td WIDTH="60">1094.8050</td>
    <td WIDTH="65">844.2751</td>
    <td WIDTH="65">935.6097</td>
    <td WIDTH="58">0.7225000</td>
    <td WIDTH="60">1100.7170</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">845.2888</td>
    <td WIDTH="65">936.5679</td>
    <td WIDTH="58">0.7301000</td>
    <td WIDTH="60">1096.0950</td>
    <td WIDTH="65">843.6580</td>
    <td WIDTH="65">934.9498</td>
    <td WIDTH="58">0.7221000</td>
    <td WIDTH="60">1100.2460</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">845.1972</td>
    <td WIDTH="65">936.3816</td>
    <td WIDTH="58">0.7343000</td>
    <td WIDTH="60">1092.7380</td>
    <td WIDTH="65">845.9387</td>
    <td WIDTH="65">937.4079</td>
    <td WIDTH="58">0.7233000</td>
    <td WIDTH="60">1102.2230</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">844.8310</td>
    <td WIDTH="65">935.9778</td>
    <td WIDTH="58">0.7342000</td>
    <td WIDTH="60">1092.3410</td>
    <td WIDTH="65">846.3019</td>
    <td WIDTH="65">937.7266</td>
    <td WIDTH="58">0.7266000</td>
    <td WIDTH="60">1100.0910</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">846.3264</td>
    <td WIDTH="65">937.5618</td>
    <td WIDTH="58">0.7363000</td>
    <td WIDTH="60">1092.6290</td>
    <td WIDTH="65">844.0907</td>
    <td WIDTH="65">935.3911</td>
    <td WIDTH="58">0.7234000</td>
    <td WIDTH="60">1099.7750</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">846.6316</td>
    <td WIDTH="65">937.9034</td>
    <td WIDTH="58">0.7363000</td>
    <td WIDTH="60">1093.0270</td>
    <td WIDTH="65">841.6297</td>
    <td WIDTH="65">932.7637</td>
    <td WIDTH="58">0.7208000</td>
    <td WIDTH="60">1098.6620</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">845.6245</td>
    <td WIDTH="65">936.8785</td>
    <td WIDTH="58">0.7327000</td>
    <td WIDTH="60">1094.5110</td>
    <td WIDTH="65">844.8477</td>
    <td WIDTH="65">936.2287</td>
    <td WIDTH="58">0.7222000</td>
    <td WIDTH="60">1101.6740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">846.0212</td>
    <td WIDTH="65">937.2822</td>
    <td WIDTH="58">0.7334000</td>
    <td WIDTH="60">1094.4600</td>
    <td WIDTH="65">841.9637</td>
    <td WIDTH="65">933.0753</td>
    <td WIDTH="58">0.7226000</td>
    <td WIDTH="60">1097.6600</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">845.2888</td>
    <td WIDTH="65">936.5679</td>
    <td WIDTH="58">0.7313000</td>
    <td WIDTH="60">1095.1950</td>
    <td WIDTH="65">839.8282</td>
    <td WIDTH="65">930.6893</td>
    <td WIDTH="58">0.7246000</td>
    <td WIDTH="60">1093.3410</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">844.0681</td>
    <td WIDTH="65">935.3566</td>
    <td WIDTH="58">0.7278000</td>
    <td WIDTH="60">1096.4060</td>
    <td WIDTH="65">842.9040</td>
    <td WIDTH="65">934.0781</td>
    <td WIDTH="58">0.7240000</td>
    <td WIDTH="60">1097.7760</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">846.0212</td>
    <td WIDTH="65">937.3133</td>
    <td WIDTH="58">0.7312000</td>
    <td WIDTH="60">1096.1420</td>
    <td WIDTH="65">844.5408</td>
    <td WIDTH="65">935.7419</td>
    <td WIDTH="58">0.7293000</td>
    <td WIDTH="60">1095.7290</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;11:00</td>
    <td WIDTH="65">848.4932</td>
    <td WIDTH="65">939.9844</td>
    <td WIDTH="58">0.7325000</td>
    <td WIDTH="60">1098.2890</td>
    <td WIDTH="65">844.4357</td>
    <td WIDTH="65">935.5652</td>
    <td WIDTH="58">0.7320000</td>
    <td WIDTH="60">1093.4990</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">847.9744</td>
    <td WIDTH="65">939.3321</td>
    <td WIDTH="58">0.7367000</td>
    <td WIDTH="60">1094.3940</td>
    <td WIDTH="65">844.3348</td>
    <td WIDTH="65">935.4251</td>
    <td WIDTH="58">0.7334000</td>
    <td WIDTH="60">1092.2920</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">845.4719</td>
    <td WIDTH="65">936.7853</td>
    <td WIDTH="58">0.7283000</td>
    <td WIDTH="60">1097.7030</td>
    <td WIDTH="65">846.0464</td>
    <td WIDTH="65">937.2407</td>
    <td WIDTH="58">0.7356000</td>
    <td WIDTH="60">1092.7740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">851.7891</td>
    <td WIDTH="65">943.4008</td>
    <td WIDTH="58">0.7403000</td>
    <td WIDTH="60">1096.4590</td>
    <td WIDTH="65">844.9573</td>
    <td WIDTH="65">936.1219</td>
    <td WIDTH="58">0.7322000</td>
    <td WIDTH="60">1094.0010</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">853.2234</td>
    <td WIDTH="65">944.7051</td>
    <td WIDTH="58">0.7500000</td>
    <td WIDTH="60">1090.8520</td>
    <td WIDTH="65">846.1862</td>
    <td WIDTH="65">937.4741</td>
    <td WIDTH="58">0.7316000</td>
    <td WIDTH="60">1096.0300</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">853.3760</td>
    <td WIDTH="65">944.8605</td>
    <td WIDTH="58">0.7524000</td>
    <td WIDTH="60">1089.2900</td>
    <td WIDTH="65">845.2744</td>
    <td WIDTH="65">936.5026</td>
    <td WIDTH="58">0.7306000</td>
    <td WIDTH="60">1095.6430</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">852.2469</td>
    <td WIDTH="65">943.6182</td>
    <td WIDTH="58">0.7527000</td>
    <td WIDTH="60">1087.6410</td>
    <td WIDTH="65">844.7511</td>
    <td WIDTH="65">935.9707</td>
    <td WIDTH="58">0.7285000</td>
    <td WIDTH="60">1096.5980</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">850.0496</td>
    <td WIDTH="65">941.2888</td>
    <td WIDTH="58">0.7488000</td>
    <td WIDTH="60">1087.7770</td>
    <td WIDTH="65">847.9894</td>
    <td WIDTH="65">939.4080</td>
    <td WIDTH="58">0.7324000</td>
    <td WIDTH="60">1097.6910</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">856.0006</td>
    <td WIDTH="65">947.9663</td>
    <td WIDTH="58">0.7469000</td>
    <td WIDTH="60">1096.8860</td>
    <td WIDTH="65">848.2696</td>
    <td WIDTH="65">939.6749</td>
    <td WIDTH="58">0.7340000</td>
    <td WIDTH="60">1096.8050</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">856.1227</td>
    <td WIDTH="65">947.8422</td>
    <td WIDTH="58">0.7476000</td>
    <td WIDTH="60">1096.2290</td>
    <td WIDTH="65">847.4261</td>
    <td WIDTH="65">938.7132</td>
    <td WIDTH="58">0.7358000</td>
    <td WIDTH="60">1094.3420</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">856.1532</td>
    <td WIDTH="65">948.1216</td>
    <td WIDTH="58">0.7475000</td>
    <td WIDTH="60">1096.6260</td>
    <td WIDTH="65">843.4456</td>
    <td WIDTH="65">934.5500</td>
    <td WIDTH="58">0.7285000</td>
    <td WIDTH="60">1094.9330</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">17/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">856.2142</td>
    <td WIDTH="65">948.0285</td>
    <td WIDTH="58">0.7483000</td>
    <td WIDTH="60">1095.9320</td>
    <td WIDTH="65">844.4051</td>
    <td WIDTH="65">935.6268</td>
    <td WIDTH="58">0.7272000</td>
    <td WIDTH="60">1097.1750</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">856.0922</td>
    <td WIDTH="65">947.9042</td>
    <td WIDTH="58">0.7487000</td>
    <td WIDTH="60">1095.4950</td>
    <td WIDTH="65">853.0296</td>
    <td WIDTH="65">944.6077</td>
    <td WIDTH="58">0.7449000</td>
    <td WIDTH="60">1094.4670</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">856.4279</td>
    <td WIDTH="65">948.2770</td>
    <td WIDTH="58">0.7483000</td>
    <td WIDTH="60">1096.2190</td>
    <td WIDTH="65">852.5573</td>
    <td WIDTH="65">943.9583</td>
    <td WIDTH="58">0.7506000</td>
    <td WIDTH="60">1089.5530</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">855.1766</td>
    <td WIDTH="65">946.9725</td>
    <td WIDTH="58">0.7461000</td>
    <td WIDTH="60">1096.3240</td>
    <td WIDTH="65">852.5952</td>
    <td WIDTH="65">943.9734</td>
    <td WIDTH="58">0.7520000</td>
    <td WIDTH="60">1088.5560</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">851.7891</td>
    <td WIDTH="65">943.5561</td>
    <td WIDTH="58">0.7401000</td>
    <td WIDTH="60">1096.7880</td>
    <td WIDTH="65">851.0037</td>
    <td WIDTH="65">942.1609</td>
    <td WIDTH="58">0.7549000</td>
    <td WIDTH="60">1084.3770</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">853.1929</td>
    <td WIDTH="65">944.8915</td>
    <td WIDTH="58">0.7413000</td>
    <td WIDTH="60">1097.4510</td>
    <td WIDTH="65">854.7423</td>
    <td WIDTH="65">946.4172</td>
    <td WIDTH="58">0.7472000</td>
    <td WIDTH="60">1094.8740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">853.5286</td>
    <td WIDTH="65">945.2643</td>
    <td WIDTH="58">0.7418000</td>
    <td WIDTH="60">1097.5130</td>
    <td WIDTH="65">855.2917</td>
    <td WIDTH="65">947.0247</td>
    <td WIDTH="58">0.7468000</td>
    <td WIDTH="60">1095.8700</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">852.0333</td>
    <td WIDTH="65">943.6492</td>
    <td WIDTH="58">0.7405000</td>
    <td WIDTH="60">1096.5990</td>
    <td WIDTH="65">855.9388</td>
    <td WIDTH="65">947.7324</td>
    <td WIDTH="58">0.7466000</td>
    <td WIDTH="60">1096.8360</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">852.4910</td>
    <td WIDTH="65">944.2394</td>
    <td WIDTH="58">0.7375000</td>
    <td WIDTH="60">1099.5150</td>
    <td WIDTH="65">856.6016</td>
    <td WIDTH="65">948.4127</td>
    <td WIDTH="58">0.7484000</td>
    <td WIDTH="60">1096.3030</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">851.6671</td>
    <td WIDTH="65">943.4008</td>
    <td WIDTH="58">0.7340000</td>
    <td WIDTH="60">1101.1540</td>
    <td WIDTH="65">855.9767</td>
    <td WIDTH="65">947.7642</td>
    <td WIDTH="58">0.7471000</td>
    <td WIDTH="60">1096.5060</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">851.3008</td>
    <td WIDTH="65">942.9971</td>
    <td WIDTH="58">0.7354000</td>
    <td WIDTH="60">1099.6350</td>
    <td WIDTH="65">855.0482</td>
    <td WIDTH="65">946.7772</td>
    <td WIDTH="58">0.7463000</td>
    <td WIDTH="60">1095.9510</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">853.2845</td>
    <td WIDTH="65">945.0469</td>
    <td WIDTH="58">0.7388000</td>
    <td WIDTH="60">1099.4870</td>
    <td WIDTH="65">851.4636</td>
    <td WIDTH="65">943.0342</td>
    <td WIDTH="58">0.7393000</td>
    <td WIDTH="60">1096.7740</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">857.6486</td>
    <td WIDTH="65">949.8298</td>
    <td WIDTH="58">0.7390000</td>
    <td WIDTH="60">1104.9010</td>
    <td WIDTH="65">852.7709</td>
    <td WIDTH="65">944.4293</td>
    <td WIDTH="58">0.7405000</td>
    <td WIDTH="60">1097.5060</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;11:00</td>
    <td WIDTH="65">857.5570</td>
    <td WIDTH="65">949.7988</td>
    <td WIDTH="58">0.7361000</td>
    <td WIDTH="60">1107.0400</td>
    <td WIDTH="65">852.9521</td>
    <td WIDTH="65">944.6186</td>
    <td WIDTH="58">0.7410000</td>
    <td WIDTH="60">1097.3560</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;10:00</td>
    <td WIDTH="65">858.2895</td>
    <td WIDTH="65">950.5131</td>
    <td WIDTH="58">0.7399000</td>
    <td WIDTH="60">1105.0240</td>
    <td WIDTH="65">851.4683</td>
    <td WIDTH="65">943.0311</td>
    <td WIDTH="58">0.7398000</td>
    <td WIDTH="60">1096.4000</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;09:00</td>
    <td WIDTH="65">860.5173</td>
    <td WIDTH="65">952.8736</td>
    <td WIDTH="58">0.7415000</td>
    <td WIDTH="60">1106.5720</td>
    <td WIDTH="65">852.2606</td>
    <td WIDTH="65">943.9521</td>
    <td WIDTH="58">0.7372000</td>
    <td WIDTH="60">1099.4040</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;08:00</td>
    <td WIDTH="65">860.9750</td>
    <td WIDTH="65">953.4016</td>
    <td WIDTH="58">0.7413000</td>
    <td WIDTH="60">1107.3350</td>
    <td WIDTH="65">854.1979</td>
    <td WIDTH="65">946.0573</td>
    <td WIDTH="58">0.7372000</td>
    <td WIDTH="60">1101.8560</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;07:00</td>
    <td WIDTH="65">862.3179</td>
    <td WIDTH="65">954.8303</td>
    <td WIDTH="58">0.7411000</td>
    <td WIDTH="60">1109.1440</td>
    <td WIDTH="65">850.8051</td>
    <td WIDTH="65">942.4252</td>
    <td WIDTH="58">0.7346000</td>
    <td WIDTH="60">1099.5660</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;06:00</td>
    <td WIDTH="65">861.8600</td>
    <td WIDTH="65">954.3333</td>
    <td WIDTH="58">0.7418000</td>
    <td WIDTH="60">1108.0430</td>
    <td WIDTH="65">853.0209</td>
    <td WIDTH="65">944.7657</td>
    <td WIDTH="58">0.7378000</td>
    <td WIDTH="60">1099.9040</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;05:00</td>
    <td WIDTH="65">863.9048</td>
    <td WIDTH="65">956.5695</td>
    <td WIDTH="58">0.7420000</td>
    <td WIDTH="60">1110.4900</td>
    <td WIDTH="65">857.3527</td>
    <td WIDTH="65">949.4774</td>
    <td WIDTH="58">0.7385000</td>
    <td WIDTH="60">1104.8650</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;04:00</td>
    <td WIDTH="65">864.5151</td>
    <td WIDTH="65">957.1907</td>
    <td WIDTH="58">0.7435000</td>
    <td WIDTH="60">1110.0890</td>
    <td WIDTH="65">857.1539</td>
    <td WIDTH="65">949.3198</td>
    <td WIDTH="58">0.7359000</td>
    <td WIDTH="60">1106.6320</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;03:00</td>
    <td WIDTH="65">864.8508</td>
    <td WIDTH="65">957.5323</td>
    <td WIDTH="58">0.7447000</td>
    <td WIDTH="60">1109.5910</td>
    <td WIDTH="65">857.0800</td>
    <td WIDTH="65">949.2021</td>
    <td WIDTH="58">0.7375000</td>
    <td WIDTH="60">1105.2940</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;02:00</td>
    <td WIDTH="65">865.4917</td>
    <td WIDTH="65">958.1535</td>
    <td WIDTH="58">0.7474000</td>
    <td WIDTH="60">1108.3030</td>
    <td WIDTH="65">860.0277</td>
    <td WIDTH="65">952.3359</td>
    <td WIDTH="58">0.7407000</td>
    <td WIDTH="60">1106.5450</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;01:00</td>
    <td WIDTH="65">866.1021</td>
    <td WIDTH="65">958.9611</td>
    <td WIDTH="58">0.7472000</td>
    <td WIDTH="60">1109.3860</td>
    <td WIDTH="65">860.6743</td>
    <td WIDTH="65">953.0434</td>
    <td WIDTH="58">0.7406000</td>
    <td WIDTH="60">1107.4420</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">16/12/2549&nbsp;&nbsp;00:00</td>
    <td WIDTH="65">865.4612</td>
    <td WIDTH="65">958.2778</td>
    <td WIDTH="58">0.7468000</td>
    <td WIDTH="60">1108.8920</td>
    <td WIDTH="65">861.4407</td>
    <td WIDTH="65">953.8787</td>
    <td WIDTH="58">0.7404000</td>
    <td WIDTH="60">1108.5620</td> 
  </tr>
  <tr class="body" bgcolor="#ffb997" align="right" height="2"> 
    <td colspan="9" align="middle" height="2" ></td>
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;23:00</td>
    <td WIDTH="65">866.1021</td>
    <td WIDTH="65">958.8058</td>
    <td WIDTH="58">0.7481000</td>
    <td WIDTH="60">1108.5390</td>
    <td WIDTH="65">860.9905</td>
    <td WIDTH="65">953.3799</td>
    <td WIDTH="58">0.7407000</td>
    <td WIDTH="60">1107.7580</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;22:00</td>
    <td WIDTH="65">866.0106</td>
    <td WIDTH="65">958.7126</td>
    <td WIDTH="58">0.7481000</td>
    <td WIDTH="60">1108.4310</td>
    <td WIDTH="65">863.3032</td>
    <td WIDTH="65">955.8726</td>
    <td WIDTH="58">0.7417000</td>
    <td WIDTH="60">1109.9050</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;21:00</td>
    <td WIDTH="65">866.4683</td>
    <td WIDTH="65">959.1785</td>
    <td WIDTH="58">0.7484000</td>
    <td WIDTH="60">1108.7470</td>
    <td WIDTH="65">865.1147</td>
    <td WIDTH="65">957.7890</td>
    <td WIDTH="58">0.7441000</td>
    <td WIDTH="60">1110.3350</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;20:00</td>
    <td WIDTH="65">865.7664</td>
    <td WIDTH="65">958.4020</td>
    <td WIDTH="58">0.7504000</td>
    <td WIDTH="60">1106.3720</td>
    <td WIDTH="65">864.1724</td>
    <td WIDTH="65">956.7551</td>
    <td WIDTH="58">0.7445000</td>
    <td WIDTH="60">1108.8390</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;19:00</td>
    <td WIDTH="65">864.2100</td>
    <td WIDTH="65">956.7870</td>
    <td WIDTH="58">0.7465000</td>
    <td WIDTH="60">1107.3890</td>
    <td WIDTH="65">866.0615</td>
    <td WIDTH="65">958.7598</td>
    <td WIDTH="58">0.7467000</td>
    <td WIDTH="60">1109.5240</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;18:00</td>
    <td WIDTH="65">865.0950</td>
    <td WIDTH="65">957.7187</td>
    <td WIDTH="58">0.7477000</td>
    <td WIDTH="60">1107.5780</td>
    <td WIDTH="65">865.6436</td>
    <td WIDTH="65">958.3157</td>
    <td WIDTH="58">0.7463000</td>
    <td WIDTH="60">1109.3070</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;17:00</td>
    <td WIDTH="65">865.3391</td>
    <td WIDTH="65">957.9672</td>
    <td WIDTH="58">0.7475000</td>
    <td WIDTH="60">1108.0130</td>
    <td WIDTH="65">865.3854</td>
    <td WIDTH="65">958.0160</td>
    <td WIDTH="58">0.7470000</td>
    <td WIDTH="60">1108.4410</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;16:00</td>
    <td WIDTH="65">866.2242</td>
    <td WIDTH="65">958.9611</td>
    <td WIDTH="58">0.7474000</td>
    <td WIDTH="60">1109.2370</td>
    <td WIDTH="65">866.1304</td>
    <td WIDTH="65">958.8163</td>
    <td WIDTH="58">0.7474000</td>
    <td WIDTH="60">1109.0700</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;15:00</td>
    <td WIDTH="65">863.9963</td>
    <td WIDTH="65">956.5074</td>
    <td WIDTH="58">0.7487000</td>
    <td WIDTH="60">1105.4380</td>
    <td WIDTH="65">866.3240</td>
    <td WIDTH="65">959.0189</td>
    <td WIDTH="58">0.7478000</td>
    <td WIDTH="60">1109.0070</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;14:00</td>
    <td WIDTH="65">864.1184</td>
    <td WIDTH="65">956.6627</td>
    <td WIDTH="58">0.7476000</td>
    <td WIDTH="60">1106.4310</td>
    <td WIDTH="65">865.6873</td>
    <td WIDTH="65">958.3168</td>
    <td WIDTH="58">0.7484000</td>
    <td WIDTH="60">1107.7510</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;13:00</td>
    <td WIDTH="65">864.2405</td>
    <td WIDTH="65">956.8181</td>
    <td WIDTH="58">0.7465000</td>
    <td WIDTH="60">1107.4250</td>
    <td WIDTH="65">863.8344</td>
    <td WIDTH="65">956.3484</td>
    <td WIDTH="58">0.7465000</td>
    <td WIDTH="60">1106.8820</td> 
  </tr>
  <tr class="body" bgcolor="#e0f5f5" align="right">
    <td WIDTH="113" align="middle">15/12/2549&nbsp;&nbsp;12:00</td>
    <td WIDTH="65">864.2405</td>
    <td WIDTH="65">956.8181</td>
    <td WIDTH="58">0.7468000</td>
    <td WIDTH="60">1107.2030</td>
    <td WIDTH="65">864.4638</td>
    <td WIDTH="65">957.0384</td>
    <td WIDTH="58">0.7460000</td>
    <td WIDTH="60">1108.0520</td> 
  </tr>
</table>
<br>
<font face="MS Sans Serif">
<p><u><strong>หมายเหตุ</strong></u></p>

<blockquote>
  <p>1. ไม่ใช่ข้อมูลที่ใช้ซื้อขาย</p>
  <p>2. ข้อมูลอาจ ERROR จากกำลังสอบเทียบ</p>
  <p>3. Wobbe Index = HHV(dry)/SQR(SG)</p>
  <p>4. ก่อนใช้ข้อมูลปรับแต่งอุปกรณ์ ควรสอบทวนกับ Gas Control โทร. (038) 274397,9</p>
</blockquote>
</font>
</body>
</html>
