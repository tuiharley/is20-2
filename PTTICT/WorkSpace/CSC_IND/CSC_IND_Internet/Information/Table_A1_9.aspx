<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
<% 
			Dim TABLE
			TABLE=Request.Item ("TABLE")
			if TABLE="" then TABLE=1
			%>
<% select case TABLE
			   case 1: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td width="48" rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11" ><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="47" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="50" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="53" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="54" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="54" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="57" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="56" align="center" bgcolor="#97EAFF" class="T_black11">300</td>
    <td width="52" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="55" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="54" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="52" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,250</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,547</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,244</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">942</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">756</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">647</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">520</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">445</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">394</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">357</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">306</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">271</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,620</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,175</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,2550</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,934</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,553</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,329</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,067</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">914</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">810</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">734</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">628</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">557</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,922</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,757</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">3,820</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,898</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,327</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,992</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,599</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,369</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,213</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,099</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">941</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">834</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">13,331</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">9,162</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">7,357</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">5,581</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,482</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,836</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,080</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,636</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,337</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,117</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,812</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,606</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,247</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">14,603</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">11,727</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">8,895</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,143</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,114</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,909</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,202</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,724</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">3,374</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,888</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,559</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">37,561</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">25,815</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">20,731</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">15,725</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,628</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">10,808</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,679</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,428</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">6,583</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,965</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,105</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,525</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">54,995</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">37,798</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">30,353</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">23,024</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">18,489</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">15,824</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,707</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">10,876</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">9,639</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">8,734</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,475</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,625</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">4.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">76,612</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">52,655</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">42,284</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">32,074</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">25,757</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">22,044</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">17,702</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">15,151</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">13,428</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,167</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,413</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">9,229</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">138,602</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">95,260</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">76,497</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">58,027</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">46,597</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">39,881</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">32,026</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">27,410</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">24,293</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">22,011</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">18,839</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">16,697</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">6.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">224,429</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">154,249</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">123,867</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">93,958</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">75,452</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">64,577</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">51,858</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">44,383</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">39,336</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">35,642</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">30,505</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">27,036</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">461,116</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">316,922</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">254,500</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">193,049</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">155,025</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">132,618</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">106,548</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">91,191</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">80,821</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">73,230</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">62,675</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">55,548</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">837,509</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">575,615</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">462,239</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">350,628</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">281,567</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">240,985</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">193,519</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">165,627</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">164,793</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">133,005</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">113,835</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">100,890</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">12.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,325,882</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">991,271</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">731,783</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">55,088</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">445,756</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">381,509</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">306,365</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">262,209</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">232,391</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">210,563</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">180,215</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">159,721</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table><% case 2: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11" ><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td width="48"  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.00</td>
    <td width="47" align="right" bgcolor="#FFFFFF" class="T_gray7">3,683</td>
    <td width="51" align="right" bgcolor="#FFFFFF" class="T_gray7">2,531 </td>
    <td width="53" align="right" bgcolor="#F4FFFF" class="T_gray7">2,033</td>
    <td width="54" align="right" bgcolor="#F0FFFF" class="T_gray7">1,542</td>
    <td width="55" align="right" bgcolor="#EAFFFF" class="T_gray7">1,238</td>
    <td width="53" align="right" bgcolor="#EAFFFF" class="T_gray7">1,060</td>
    <td width="57" align="right" bgcolor="#EAFFFF" class="T_gray7">851</td>
    <td width="56" align="right" bgcolor="#EAFFFF" class="T_gray7">728</td>
    <td width="53" align="right" bgcolor="#F0FFFF" class="T_gray7">646</td>
    <td width="55" align="right" bgcolor="#F4FFFF" class="T_gray7">585</td>
    <td width="51" align="right" bgcolor="#FFFFFF" class="T_gray7">501</td>
    <td width="53" align="right" bgcolor="#FFFFFF" class="T_gray7">444</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,562</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,197</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,173</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,166</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,542</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,176</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,747</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,495</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,325</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,201</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,028</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">911</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">11,330</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,787</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">6,253</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,743</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,809</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,260</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,618</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,241</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,986</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,799</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,540</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,365</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,820</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">14,997</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,043</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">9,135</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,336</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,278</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,042</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,315</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,,824</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">3,465</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,966</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,628</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">34,777</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">23,902</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">19,194</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">14,560</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">11,692</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">10,007</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,036</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,878</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">6,095</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,523</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,727</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,189</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">61,480</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">42,255</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">33,932</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">25,739</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">20,669</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">17,690</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">14,206</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,158</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">10,776</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">9,764</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,356</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,406</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">90,016</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">61,867</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">49,682</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">37,686</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">30,263</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">25,901</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">20,800</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">17,802</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">15,777</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">14,295</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">12,235</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,844</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">4.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">125,399</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">86,186</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">69,211</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">52,499</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">42,159</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">36,082</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">28,975</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">24,799</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">21,979</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">19,915</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">17,044</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">15,106</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">226,865</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">155,923</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">125,212</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">94,978</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">76,271</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">65,278</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">52,421</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">44,865</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">39,763</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">36,028</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">30,836</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">27,329</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center" class="T_gray7"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">6.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">367,347</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">252,476</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">202,747</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">153,792</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">123,500</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">105,700</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">84,881</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">72,647</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">64,386</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">58,338</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">49,930</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">44,252</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">754,758</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">518,741</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">416,567</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">315,984</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">253,746</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">217,174</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">174,398</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">149,263</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">132,289</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">119,863</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">102,587</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">90,912</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,370,843</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">942,173</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">756,598</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">573,911</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">460,871</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">394,446</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">316,754</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">271,101</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">240,271</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">217,703</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">186,326</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">165,137</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td  height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">12.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,170,217</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,491,578</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,197,790</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">908,574</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">729,617</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">624,458</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">501,462</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">429,186</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">380,380</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">344,652</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">294,977</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">261,433</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table><% case 3: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td width="48" rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="48" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="51" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="53" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="54" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="55" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="56" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="56" align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td width="53" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="56" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="49" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="53" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,902</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,682</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,153</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,843</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,480</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,267</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,123</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,017</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">871</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">772</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">620</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">530</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,010</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,505</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,421</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,784</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,039</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,601</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,305</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,088</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,787</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,584</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,272</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,089</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">12,002</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,249</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">6,624</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">5,669</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,553</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,897</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,453</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,129</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,678</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,374</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,906</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,631</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">23,115</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">15,886</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,757</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">10,919</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,768</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,504</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,651</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,026</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">5,158</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,571</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,671</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,142</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >36,841</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >25,321</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >20,333</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >17,403</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >13,975</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >11,961</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >10,601</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >9,605</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >8,221</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >7,286</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >5,851</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >5,007</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">65,128</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">44,762</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">35,946</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">30,765</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">24,705</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">21,144</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">18,740</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">16,980</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">14,532</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,880</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,343</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,852</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >95,357</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >65,539</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >52,630</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >45,044</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >36,172</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >30,959</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >27,438</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >24,861</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >21,278</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >18,858</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >15,144</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >12,961</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">4.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >132,841</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >91,301</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >73,318</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >62,750</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >50,391</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >43,128</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >38,224</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >34,633</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >29,642</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >26,271</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >21,096</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >18,056</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >240,328</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >165,176</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >132,642</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >113,524</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >91,164</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >78,025</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >69,152</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >62,657</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >53,626</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >47,528</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >38,166</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >32,665</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">6.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >389,146</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >267,458</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >214,778</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >183,822</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >147,616</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >126,340</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >111,973</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >101,455</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >86,833</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >76,958</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >61,800</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >52,893</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >799,546</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >549,524</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >441,287</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >377,685</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >303,294</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >259,580</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >230,061</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >208,452</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >178,408</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >158,120</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >126,976</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >108,675</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >1,452,190</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >998,082</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >801,495</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >685,976</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >550,863</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >471,467</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >417,853</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >378,605</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >324,037</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >287,188</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >230,622</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >197,383</td>
  </tr>
  <tr bgcolor="#CCCCCC">
    <td height="1" colspan="13" align="center"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">12.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >2,298,999</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >1,580,089</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >1,268,867</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >1,085,986</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >872,085</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >746,392</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >661,514</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >599,379</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >512,991</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >454,655</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >365,104</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >312,482</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table><% case 4: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td width="48"  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.00</td>
    <td width="48" align="right" bgcolor="#FFFFFF" class="T_gray7">4,726</td>
    <td width="52" align="right" bgcolor="#FFFFFF" class="T_gray7">3,248</td>
    <td width="53" align="right" bgcolor="#F4FFFF" class="T_gray7">2,608</td>
    <td width="54" align="right" bgcolor="#F0FFFF" class="T_gray7">2,232</td>
    <td width="55" align="right" bgcolor="#EAFFFF" class="T_gray7">1,793</td>
    <td width="54" align="right" bgcolor="#EAFFFF" class="T_gray7">1,534</td>
    <td width="56" align="right" bgcolor="#EAFFFF" class="T_gray7">1,360</td>
    <td width="56" align="right" bgcolor="#EAFFFF" class="T_gray7">1,232</td>
    <td width="53" align="right" bgcolor="#F0FFFF" class="T_gray7">1,055</td>
    <td width="56" align="right" bgcolor="#F4FFFF" class="T_gray7">935</td>
    <td width="50" align="right" bgcolor="#FFFFFF" class="T_gray7">751</td>
    <td width="51" align="right" bgcolor="#FFFFFF" class="T_gray7">642</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">9,703</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,669</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,355</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,583</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,681</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,150</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,792</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,530</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,165</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,919</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,541</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,319</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50</td>
    <td  height="1" align="right" bgcolor="#FFFFFF" class="T_gray7">14,538</td>
    <td  height="1" align="right" bgcolor="#FFFFFF" class="T_gray7">9,992</td>
    <td  height="1" align="right" bgcolor="#F4FFFF" class="T_gray7">8,024</td>
    <td  height="1" align="right" bgcolor="#F0FFFF" class="T_gray7">6,867</td>
    <td  height="1" align="right" bgcolor="#EAFFFF" class="T_gray7">5,515</td>
    <td  height="1" align="right" bgcolor="#EAFFFF" class="T_gray7">4,720</td>
    <td  height="1" align="right" bgcolor="#EAFFFF" class="T_gray7">4,183</td>
    <td  height="1" align="right" bgcolor="#EAFFFF" class="T_gray7">3,790</td>
    <td  height="1" align="right" bgcolor="#F0FFFF" class="T_gray7">3,244</td>
    <td  height="1" align="right" bgcolor="#F4FFFF" class="T_gray7">2,875</td>
    <td  height="1" align="right" bgcolor="#FFFFFF" class="T_gray7">2,309</td>
    <td  height="1" align="right" bgcolor="#FFFFFF" class="T_gray7">1,976</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >27,999</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >19,243</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >15,453</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >13,226</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >10,621</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >9,090</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >8,056</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >7,300</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >6,248</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >5,537</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >4,446</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >3,806</td>
  </tr>
  <tr>
    <td height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">44,625</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">30,671</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">24,630</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">21,080</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">16,928</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">14,488</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,841</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">11,634</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">9,958</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">8.825</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,087</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,066</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">78,890</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">54,221</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">43,541</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">37,266</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">29,926</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">25,612</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">22,700</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">20,568</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">17,603</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">15,601</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">12,529</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,723</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">115,507</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">79,387</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">63,751</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">54,562</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">43,815</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">37,500</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">33,236</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">30,114</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">25,774</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">22,843</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">18,344</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">15,700</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">4.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">160,910</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">110,593</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">88,810</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">76,010</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">61,039</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">52,241</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">46,300</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">41,951</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">35,905</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">31,822</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">25,554</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,871</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">291,110</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">200,078</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">160,670</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">137,512</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">110,427</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">94,512</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">83,764</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">75,896</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">64,957</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">57,570</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">46,231</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">39,568</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="right" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">6.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">471,374</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">323,972</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">260,161</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">222,664</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">178,807</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">153,036</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">135,633</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">122,893</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">105,181</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">93,220</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">74,859</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">64,069</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="right" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">968,493</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">665,640</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">534,532</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">457,490</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">367,381</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">314,431</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">278,674</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">252,499</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">216,106</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">191,531</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">153,806</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">131,638</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,759,042</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,208,980</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">970,853</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">830,925</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">667,262</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">571,090</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">506,146</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">458,605</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">392,507</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">347,872</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">279,353</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">239,090</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">12.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,784,785</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,913,967</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,536,983</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,315,459</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,056,360</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">904,107</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">801,294</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">726,030</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">621,388</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">550,725</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">442,251</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">378,510</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table><% case 5: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td width="48" rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="48" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="53" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="53" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="55" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="55" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="56" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="55" align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td width="54" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="55" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="50" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="50" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,607</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,290</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,854</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">5,010</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,024</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,444</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,052</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,765</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,367</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,098</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,684</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,442</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,777</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">14,967</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,019</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">10,287</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,261</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,070</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,266</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,677</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,859</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,307</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,458</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,960</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">32,628</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">22,425</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">18,008</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">15,413</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,377</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">10,593</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">9,388</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,507</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">7,281</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">6,453</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,182</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,435</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >62,839</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >43,189</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >34,682</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >29,683</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >23,837</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >20,401</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >18,081</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >16,383</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >14,,022</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >12,427</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >9,979</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >8,541</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">100,155</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">68,836</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">55,278</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">47,311</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">37,992</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">32,516</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">28,819</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">26,112</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">22,348</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">19,807</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">15,906</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">13,613</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">177,057</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">121,690</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">97,721</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">83,637</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">67,163</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">57,483</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">50,946</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">46,161</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">39,508</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">35,015</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">28,118</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">24,066</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">259,237</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">178,172</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">143,079</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">122,457</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">98,337</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">84,164</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">74,593</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">67,587</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">57,845</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">51,267</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">41,169</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">35,236</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">4.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">361,139</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">248,209</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">199,320</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">170,592</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">136,992</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">117,247</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">103,914</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">94,154</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">80,583</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">71,420</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">57,352</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">49,086</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">653,351</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">449,045</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">360,599</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">308,626</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">247,837</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">212,117</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">187,995</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">170,337</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">145,787</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">129,208</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">103,759</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">88,804</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">6.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,057,927</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">727,107</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">583,893</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">499,737</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">401,306</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">343,466</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">304,408</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">275,815</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">236,062</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">209,218</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">168,009</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">143,794</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,173,636</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,493,928</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,199,677</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,026,768</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">824,531</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">705,692</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">625,442</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">566,695</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">485,018</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">429,862</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">345,195</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">295,442</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,947,903</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,713,371</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,178,933</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,864,885</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,497,568</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,281,725</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,135,969</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,029,270</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">880,922</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">780,745</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">626,966</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">536,602</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">12.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,250,028</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,295,609</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">3,449,525</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,952,348</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,370,839</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,029,132</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,798,382</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,629,464</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,394,611</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,236,018</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">992,566</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">849,508</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table><% case 6: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="48" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="52" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="53" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="56" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="54" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="57" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="54" align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td width="55" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="54" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="51" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="50" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  
  <tr>
    <td  height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td width="48" height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">1.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">14,055</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">9,660</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">7,757</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">6,639</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,332</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,563</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,044</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,664</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,136</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,780</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,232</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,910</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">28,857</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">19,833</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">15,927</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">13,613</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">10,946</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">9,369</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,303</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,523</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">6,439</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,707</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,583</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,922</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">43,237</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">29,716</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">23,863</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">20,424</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">16,401</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">14,037</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,441</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">11,272</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">9,648</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">8,551</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,866</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,877</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >83,270</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >57,231</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >45,958</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >39,334</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >31,587</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >27,034</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >23,960</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >21,709</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >18,581</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >16,468</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >13,224</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >11,318</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">132,718</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">91,217</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">73,250</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">62,693</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">50,344</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">43,088</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">38,188</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">34,601</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">29,614</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">26,247</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,077</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">18,039</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >3.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">234,623</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">161,255</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">129,493</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">110,830</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">89,000</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">76,173</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">67,510</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">61,169</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">52,353</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">46,399</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">37,260</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">31,890</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">343,523</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">236,101</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">189,598</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">162,271</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">130,309</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">111,528</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">98,845</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">89,561</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">76,653</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">67,936</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">54,555</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">46,692</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">4.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">478,556</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">328,909</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">264,125</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">226,057</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">181,532</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">155,368</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">137,700</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">124,766</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">106,783</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">94,640</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">75,999</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">65,046</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">865,775</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">595,042</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">477,840</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">408,969</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">328,417</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">281,082</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">249,118</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">225,719</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">193,186</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">171,217</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">137,494</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">117,677</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">6.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,401,890</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">963,511</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">773,733</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">662,215</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">513,782</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">455,137</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">403,379</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">365,491</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">312,813</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">277,240</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">222,634</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">190,546</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,880,348</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,979,647</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,589,726</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,360,600</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,092,610</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">935,133</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">828,791</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">750,945</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">642,711</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">569,623</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">457,428</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">391,499</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,231,481</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,595,567</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,887,367</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,471,213</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,984,471</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,698,451</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,505,305</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,363,916</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,167,336</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,034,588</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">830,811</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">711,066</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >12.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,282,093</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,692,236</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,571,066</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,912,241</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,141,668</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,688,861</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,383,088</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,159,251</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,848,039</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,637,883</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,315,278</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,125,708</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table>
<% case 7: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="53" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="54" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="52" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="54" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="54" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="56" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="53" align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td width="53" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="54" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="51" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="50" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  
  <tr>
    <td height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td width="48" height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">1.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">17,555</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">12,065</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">9,689</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">8,292</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,659</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,699</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,051</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,577</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,917</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">3,472</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,788</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,386</td>
  </tr>
  
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">36,041</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">24,771</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">19,892</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">17,025</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">13,672</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">11,701</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">10,371</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">9,396</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">8,042</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">7,128</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,724</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,899</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">54,001</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">37,115</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">29,804</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">25,509</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">20,484</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">17,532</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">15,538</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">14,079</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">12,050</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">10,679</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,576</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,340</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >104,000</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >71,479</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >57,400</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >49,127</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >39,451</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >33,765</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >29,925</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >27,114</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >23,206</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >20,567</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >16,516</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >14,136</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">165,760</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">113,926</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">91,487</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">78,301</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">62,878</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">53,816</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">47,696</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">43,216</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">36,987</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">32,781</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">26,324</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">22,530</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >3.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">293,035</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">201,401</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">161,732</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">138,422</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">111,158</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">95,137</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">84,318</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">76,398</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">65,387</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">57,951</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">46,537</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">39,829</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">429,047</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">294,881</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">236,800</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">202,670</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">162,751</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">139,264</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">123,454</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">111,858</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">95,736</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">84,849</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">68,137</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">58,316</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">4.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">597,697</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">410,794</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">329,882</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">282,336</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">226,726</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">194,048</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">171,981</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">155,828</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">133,368</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">118,202</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">94,920</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">81,239</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,081,319</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">743,184</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">596,803</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">510,786</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">410,179</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">315,061</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">311,138</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">281,914</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">241,282</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">213,844</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">171,724</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">146,974</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">6.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,750,905</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,203,387</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">966,362</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">827,081</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">664,175</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">568,448</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">503,805</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">456,484</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">390,691</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">346,262</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">278,061</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">237,984</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,597,441</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,472,501</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,985,505</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,699,336</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,364,627</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,167,944</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,035,127</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">937,900</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">802,721</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">711,437</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">571,309</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">488,967</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,533,914</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,490,722</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">3,606,208</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,086,448</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,478,526</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,121,298</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,880,067</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,703,477</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,457,956</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,292,160</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,037,650</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">888,094</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >12.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,344,009</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,109,379</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,709,082</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,886,236</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,923,820</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,358,282</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,976,383</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,696,819</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,308,128</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,045,651</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,642,730</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,405,965</td>
  </tr>
  
  <tr>
    <td height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
</table>
<% case 8: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="53" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="53" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="52" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="54" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="54" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="56" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="54" align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td width="53" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="54" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="51" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="50" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  
  <tr>
    <td height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td width="48" height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">1.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,095</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">14,499</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">11,643</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">9,965</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">8,002</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,849</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,070</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,500</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,707</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,172</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,350</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,867</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">43,311</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">29,767</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">23,904</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">20,459</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">16,429</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">14,061</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,462</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">11,292</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">9,664</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">8,565</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,878</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,887</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">64,893</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">44,601</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">35,816</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">30,654</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">24,616</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">21,068</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">18,672</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">16,918</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">14,480</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,833</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,306</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,820</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >124,977</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >85,896</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >68,978</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >59,036</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >47,408</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >40,575</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >35,961</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >32,583</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >27,887</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >24,716</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >19,848</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >16,987</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">199,194</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">136,905</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">109,940</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">94,094</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">75,561</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">64,670</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">57,316</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">51,933</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">44,448</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">39,393</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">31,634</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">27,075</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >3.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">352,140</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">242,024</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">194,354</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">166,342</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">133,578</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">114,326</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">101,325</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">91,808</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">78,575</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">69,640</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">55,923</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">47,863</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">515,585</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">354,359</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">284,563</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">243,549</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">195,578</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">167,390</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">148,354</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">134,420</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">115,046</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">101,963</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">81,880</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">70,079</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">4.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">718,253</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">493,651</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">396,419</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">339,284</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">272,457</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">233,188</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">206,670</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">187,258</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">160,269</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">142,043</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">114,066</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">97,625</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,299,421</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">893,085</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">717,179</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">613,812</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">492,913</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">412,870</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">373,895</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">338,776</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">289,949</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">256,976</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">206,361</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">176,618</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">6.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,104,064</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,446,111</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,161,278</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">993,904</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">798,140</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">683,105</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">605,423</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">548,557</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">469,494</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">416,104</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">334,146</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">285,986</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,323,047</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,971,206</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,385,983</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,042,093</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,639,873</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,403,519</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,243,913</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,127,075</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">964,631</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">854,934</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">686,542</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">587,592</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,851,808</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,396,503</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,333,583</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,708,986</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,978,447</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,549,165</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,259,278</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,047,070</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,752,027</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,552,789</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,246,944</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,067,223</td>
  </tr>
  <tr>
    <td height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >12.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">12,430,402</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,109,379</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">5,709,082</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,886,236</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,923,820</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,358,282</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,976,383</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,696,819</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,308,128</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,045,651</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,642,730</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,405,965</td>
  </tr>
  <tr>
    <td height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
</table>
<% case 9: %>
<table width="700" border="0" cellspacing="1" cellpadding="0" align="center" bordercolor="#006699">
  <tr>
    <td rowspan="2" align="center" bgcolor="#C6F3FF" class="T_black11">ขนาดท่อ 
      Schedule 40 NPS</td>
    <td height="20" colspan="12" align="center" bgcolor="#4ADBFF" class="T_black11"><strong>ความยาวของท่อ 
      (เมตร)</strong></td>
  </tr>
  <tr>
    <td width="52" align="center" bgcolor="#FFFFFF" class="T_black11">25</td>
    <td width="53" align="center" bgcolor="#E8FBFF" class="T_black11">50</td>
    <td width="52" align="center" bgcolor="#DFFAFF" class="T_black11">75</td>
    <td width="55" align="center" bgcolor="#C6F3FF" class="T_black11">100</td>
    <td width="53" align="center" bgcolor="#AAEEFF" class="T_black11">150</td>
    <td width="54" align="center" bgcolor="#7DE6FF" class="T_black11">200</td>
    <td width="55" align="center" bgcolor="#7DE6FF" class="T_black11">250</td>
    <td width="55" align="center" bgcolor="#AAEEFF" class="T_black11">300</td>
    <td width="54" align="center" bgcolor="#C6F3FF" class="T_black11">400</td>
    <td width="53" align="center" bgcolor="#DFFAFF" class="T_black11">500</td>
    <td width="51" align="center" bgcolor="#E8FBFF" class="T_black11">750</td>
    <td width="51" align="center" bgcolor="#FFFFFF" class="T_black11">1000</td>
  </tr>
  
  <tr>
    <td height="1" colspan="13" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td width="48" height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">1.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">21,986</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">15,111</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">12,135</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">10,386</td>
    <td align="right" bgcolor="#E8FFFF" class="T_gray7">8,340</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">7,138</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">6,326</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">5,732</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">4,906</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,348</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,492</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,988</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.25 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">45,140</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">31,024</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">24,914</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">21,323</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">17,123</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">14,655</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">12,989</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">11,769</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">10,072</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">8,927</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">7,169</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">6,135</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">1.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">67,634</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">46,484</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">37,328</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">31,948</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">25,656</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">21,958</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">19,461</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">17,633</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">15,092</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">13,375</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">10,741</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">9,193</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >130,256</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >89,524</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >71,891</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >61,529</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >49,410</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >42,289</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >37,480</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7" >33,959</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7" >29,065</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7" >25,760</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >20,686</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7" >17,704</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">2.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">207,607</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">142,687</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">114,583</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">98,068</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">78,752</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">67,402</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">59,737</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">54,126</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">46,325</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">41,057</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">32,970</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">28,218</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >3.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">367,012</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">252,245</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">202,562</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">173,367</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">139,220</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">119,154</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">105,604</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">95,685</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">81,894</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">72,581</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">58,285</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">49,885</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">3.50 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">537,360</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">369,325</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">296,581</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">253,835</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">203,838</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">174,459</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">154,620</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">140,097</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">119,905</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">106,269</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">85,338</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">73,038</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">4.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">748,588</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">514,500</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">413,162</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">353,613</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">283,964</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">243,036</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">215,398</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">195,167</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">167,037</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">148,042</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">118,883</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">101,749</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">5.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,354,300</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">930,803</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">747,468</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">639,736</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">513,730</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">439,687</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">389,686</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">353,084</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">302,194</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">267,829</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">215,076</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">184,077</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF"  class="T_gray7">6.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,192,926</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,507,185</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,210,323</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,035,880</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">831,848</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">711,954</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">630,992</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">571,725</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">489,322</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">433,677</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">348,258</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">298,064</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">8.00</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">4,505,625</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">3,096,690</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,486,752</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,128,338</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,709,130</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,462,795</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,296,448</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">1,174,676</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,005,370</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">891,041</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">715,538</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">612,408</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td  height="20" align="center" bgcolor="#F0FCFF" class="T_gray7">10.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,183,418</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">5,624,417</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">4,516,605</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">3,865,630</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,104,237</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,656,825</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,354,695</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">2,133,525</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">1,826,021</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">1,618,369</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,299,607</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,112,296</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#F0FCFF" class="T_gray7" >12.00 </td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">12,955,381</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">8,904,160</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">7,150,355</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">6,119,779</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,914,398</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">4,206,090</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,727,779</td>
    <td align="right" bgcolor="#EAFFFF" class="T_gray7">3,377,638</td>
    <td align="right" bgcolor="#F0FFFF" class="T_gray7">2,890,822</td>
    <td align="right" bgcolor="#F4FFFF" class="T_gray7">2,562,082</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">2,057,442</td>
    <td align="right" bgcolor="#FFFFFF" class="T_gray7">1,760,904</td>
  </tr>
  <tr>
    <td  height="1" colspan="13" align="center" bgcolor="#CCCCCC"></td>
  </tr>
</table>
<%end select %>
