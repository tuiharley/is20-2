<%@ Page CodeBehind="Gas_Combustion.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Gas_Combustion" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : �ٹ���ԡ���١��ҡ�ҫ�����ҵ�</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,�ٹ���ԡ���١��ҡ�ҫ�����ҵ� ������ص��ˡ�����м�Ե俿�����ͧ,��ҫ�����ҵ�,��ҫ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<%	
	Dim gc
	gc=Request.Item ("gc")
	if gc="" then gc=1
	%>
	</HEAD>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td height="140" background="../images/menu/banner4.jpg">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="219" valign="top"><!--#include file="../Includes/m_info3.aspx" --></td>
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info3.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td class="T_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Natural 
																Gas Combustion </u></strong>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=1"><strong>Combustion 
																			Requirements</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=6"><strong>����˹�������ѷ�� 
																			(Relative Density, RD)</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=2"><strong>Stoichiometry</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=7"><strong>Wobbe 
																			Number / Wobbe Index (WI)</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=3"><strong>��Դ�ͧ���� 
																			(Classification of Flames)</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=8"><strong>����Է���Ҿ���������</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=4"><strong>��Ҥ�����͹ 
																			(Calorific Value, CV)</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=9"><strong>��äӹǳ 
																			% Flue Loss �ҡ��������� </strong></a>
																</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Gas_Combustion.aspx?gc=5"><strong>�������¢ͧ 
																			Gross CV ��� Net CV</strong></a></td>
																<td valign="top" class="T_gray13"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><%	select case gc
	case 1: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Combustion Requirements</td>
												</tr>
												<tr>
													<td class="text_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ҫ�����ҵԻ�Сͺ仴�����ǹ�����������
														<span class="T_blue13">(Combustible)</span>
														����ա��ǹ������������
														<span class="T_blue13">(Non-combustible ���� 
      Inert)</span>
														���ͧ���Сͺ�ͧ��ҫ�����ҵԢͧ ���. �繴ѧ���</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="429" border="1" cellspacing="0" cellpadding="0" align="center" bordercolor="#00a9e1">
															<tr>
																<td width="220" bgcolor="#d9ecff" class="T_black13"><div align="center"><strong>Component 
																			(of dry gas)</strong></div>
																</td>
																<td width="242" bgcolor="#d9ecff" class="T_black13"><div align="center"><strong>Percent by 
																			volume</strong></div>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="204"><div align="center">Methane (CH<sub>4</sub>)</div>
																			</td>
																			<td width="225"><div align="center">90.795</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="204"><div align="center">Ethane (C<sub>2</sub>H<sub>6</sub>)</div>
																			</td>
																			<td width="225"><div align="center">3.277</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="204"><div align="center">Propane (C<sub>3</sub>H<sub>8</sub>)</div>
																			</td>
																			<td width="225"><div align="center">0.187</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="204"><div align="center">Butane (C<sub>4</sub>H<sub>10</sub>)</div>
																			</td>
																			<td width="225"><div align="center">0.039</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="204"><div align="center">Pentane (C<sub>5</sub>H<sub>12</sub>)</div>
																			</td>
																			<td width="225"><div align="center">0.025</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="204" height="27"><div align="center">Hexen +(C<sub>6</sub>+)</div>
																			</td>
																			<td width="225" height="27"><div align="center">0.039</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td bgcolor="#deefff" colspan="2">&nbsp;</td>
															</tr>
															<tr>
																<td colspan="2" class="T_gray13">Non-combustible</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="205"><div align="center">Carbondioxide (CO<sub>2</sub>)</div>
																			</td>
																			<td width="224"><div align="center">2.468</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan="2"><table width="429" border="0" cellspacing="0" cellpadding="0" height="26" align="center"
																		class="T_gray12">
																		<tr>
																			<td width="205"><div align="center">Nitrogen (N<sub>2</sub>)</div>
																			</td>
																			<td width="224"><div align="center">3.190</div>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǹ�����������㹡�ҫ�����ҵ�
														<span class="T_blue13">(methane, ethane, propane, butane, etc.)</span>
														��ͧ���Сͺ�Ӥѭ���
														<span class="T_blue13">Carbon ��� 
      Hydrogen</span>
														������¡����ѹ���<span class="T_blue13">��û�Сͺ Hydrocarbon</span>
														���ç���ҧ�ͧ��û�Сͺ Hydrocarbon 㹡�ҫ�����ҵԨ����ѡɳ�����ͧ�е�� 
														Carbon �����������������Ѻ�е���ͧ Hydrogen ���¶֧�Ңͧ�е�� Carbon ��� 4 
														�ҹ�鹨Ѻ���Ѻ�е���ͧ Hydrogen</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="500" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#00a9e1">
															<tr>
																<td colspan="3" bgcolor="#deefff" class="T_black13"><div align="center"><strong>The Alkane 
																			Series C<sub>n</sub>H<sub>2n+2</sub></strong></div>
																</td>
															</tr>
															<tr>
																<td width="210" bgcolor="#deefff" class="T_black13"><div align="center">n = 1 Methane 
																		CH<sub>4</sub></div>
																</td>
																<td width="224" bgcolor="#deefff" class="T_black13"><div align="center">n = 2 Ethane C<sub>2</sub>H<sub>6</sub></div>
																</td>
																<td width="213" bgcolor="#deefff" class="T_black13"><div align="center">n = 3 Propane C<sub>3</sub>H<sub>8</sub></div>
																</td>
															</tr>
															<tr>
																<td width="210"><div align="center"><img src="../images/information/S1.gif" width="100" height="139"></div>
																</td>
																<td width="224"><div align="center"><img src="../images/information/S2.gif" width="130" height="139"></div>
																</td>
																<td width="213"><div align="center"><img src="../images/information/S3.gif" width="170" height="139"></div>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 2: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Stoichiometry</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�����
														<span class="T_blue13"><strong>Stoichiometry</strong> (��ҹ��� ��-��-�������)</span>
														���Ң��Ԫ�˹����Ԫ���� �����Ҵ�������ͧ�����������õ�ҧ� 
														��Ҵ��¡ѹ����Ѵ��ǹ�����</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ҫ��෹�繡�ҫ��ѡ���������㹡�ҫ�����ҵ� 
														���¤��駷���ա�õ������԰ҹ����ҫ�����ҵԻ�Сͺ������෹���� 100% 
														����������㹡�äӹǳ��������� �������ѧ㹡�ùӡ�ҫ�����ҵ����ҹ��ԧ 
														�Ҩ��������԰ҹẺ���㹡�äӹǳ�������������� ����ͧ���Сͺ���� 
														��硹�������ҹ�� �Ҩ�ռŷ�����äӹǳ�Դ��Ҵ�͡���</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;���������ͧ��ҫ��෹ 
															(CH<sub>4</sub>) �繻�ԡ����ҷ���Դ��������ҧ��ҫ��෹�Ѻ�͡��ਹ 
															������������ �ѧ���</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_org13" align="center"><table width="200" border="1" cellpadding="3" cellspacing="0" bordercolor="#99ccff">
															<tr>
																<th height="35" class="T_gray13">
																	<strong>CH<sub>4</sub> + 2O<sub>2</sub> = CO<sub>2</sub> + 2H<sub>2</sub>O</strong></th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�������觷����ҡ��ԡ����ҡ��������ͧ��෹�Ѻ�͡��ਹ 
														���
														<span class="T_green13">��ҫ����͹��͡䫴���͹ (CO<sub>2</sub>) ����͹����͹ (H<sub>2</sub>O)</span>
														�͡��ਹ�����㹡���������Ҩҡ�ҡ�� �����ҡ�����Ѵ��ǹ�»���ҳ�ͧ���ਹ 
														79% ����͡��ਹ 21% ���¤������ 1 m<sup>3</sup> �ͧ��ҫ��ͧ����ҡ�Ȼ���ҳ 10 m<sup>3</sup>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���������������ó�ͧ��෹���������ҡ����ǹ�Թ���� 
														1 m<sup>3</sup> �ͧ CO<sub>2</sub>, 2m<sup>3</sup> �ͧ H<sub>2</sub>O ��� 7.52 
														m<sup>3</sup> �ͧ N<sub>2</sub></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;㹢�з���Դ��ԡ����ҡ��������ͧ��෹���ա�û���¾�ѧ�ҹ������͹�͡��
														<span class="T_green13">(��ԡ����ҷ���ա�û���¾�ѧ�ҹ������͹�͡�����¡���
 Exothermic reaction)</span>
														��ѧ�ҹ������͹���١������͡�Ҩ��դ����ҡѺ
														<span class="T_blue12">
															<strong>802 KJ/mol</strong></span>
														��� Product �������ѧ�����ʶҹ��繡�ҫ������ �ѧࡵ����� 
														��������ͧ����ź�����繡���ʴ��֧��û���¤�����͹�͡��
														<span class="T_blue12">
															<strong>(-802 KJ/mol)</strong></span>
														������Ҥ���͹��Ż� (Enthalpy) �ͧ��� Reactant �դ���ҡ���Ҥ���͹��Żբͧ��� 
														Product</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_org13" align="center"><table width="500" border="1" cellpadding="3" cellspacing="0" bordercolor="#99ccff">
															<tr>
																<th height="35" class="T_gray13">
																	<strong>CH<sub>4</sub> (g) + 2O<sub>2</sub> (g) + 7.52N<sub>2</sub> (g) = CO<sub>2</sub>
																		(g) + 2H<sub>2</sub>O (l) + 7.52N<sub>2</sub> (g) - 802 KJ/mol</strong></th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
														����� <strong class="T_blue13">(g)</strong> ���¶֧ ʶҹС�ҫ ��� <strong class="T_blue13">
															(l)</strong> ���¶֧ ʶҹТͧ���� �ѧ��� ��ҹ���Դ��äǺ���繢ͧ���� 
														������ö��¹������� �ѧ���</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_org13" align="center"><table width="500" border="1" cellpadding="3" cellspacing="0" bordercolor="#99ccff">
															<tr>
																<th height="35" class="T_gray13">
																	<strong>CH<sub>4</sub> (g) + 2O<sub>2</sub> (g) + 7.52N<sub>2</sub> (g) = CO<sub>2</sub>
																		(g) + 2H<sub>2</sub>O (l) + 7.52N<sub>2</sub> (g) </strong>
																</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 3: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��Դ�ͧ���� 
														(Classification of Flames)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_gray13"><span class="T_blue14">1. 
                      Non-aerated Flames : </span>�����俷���Դ�ҡ��������������Ѻ�ҡ�Ȩҡ����ҡ�� ���ͺ�ͧ���� 
																	�¡�кǹ����á����������Ш�¢ͧ�ҡ����������� 
																	�֧�ժ������¡�ա���ҧ˹�����
																	<span class="T_green13">
																		<strong>"Diffusion Flames"</strong></span></td>
																<td rowspan="5" width="120"><div align="center"><img src="../images/information/fig23.jpg" width="70" height="238">
																	</div>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14"><div>
																		<div align="right"><strong><i>Non-aerated Flame</i></strong></div>
																	</div>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td width="85">&nbsp;</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><span class="T_blue14">2. Partially Aerated Flames :</span>&nbsp; 
																	�����俷���Դ�ҡ��������� �¡�˹�����ҳ 
																	�ͧ�ҡ�Ȼ���ҳ����˹�觢ͧ����ҳ�ҡ�ȷ�����㹡�������� ��駹�� 
																	�ҡ�Ȼ���ҳ����˹�� �ж١����Ѻ������ԧ��͹����ѹ�һ (���¡�ҡ�Ȫش������
																	<span class="T_green13">
																		<strong>"Primary Air"</strong></span>) �����ѡɳй�� �����ç���ҧ�� 2 
																	��� ��� ����ٻ�������� (Inner cone) ��Ъ�鹹͡ (Outer cone) 㹪�ǧ Preheat 
																	��ǹ����ͧ��ҫ ����ҡ�Ȩж١���������س������٧�֧ 700 K �֧ 1000 K ��ǧ 
																	Primary ����ǹ�ͧ��ԡ����ҷҧ��բͧ��ǹ��� (��ҫ����ҡ��) 
																	����س����Ԩ��٧��֧���� 2000 K</td>
																<td><div align="center"><img src="../images/information/fig26.jpg" width="100" height="256"></div>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/flameimg1.gif" width="482" height="274"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/flameimg2.gif" width="485" height="328"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/flameimg3.gif" width="365" height="111"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<th>
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="150" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fig29.jpg" width="150" height="179"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</th>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="244" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fig30.jpg" width="244" height="179"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<span class="T_blue14">&nbsp;&nbsp;3. 
      Fully Aerated Flames :</span>
														���俪�Դ�����������ǹ�ͧ Outer Mantle �ͧ���� (Secondary Combustion Zone) 
														���ͧ�ҡ����ҳ�ҡ�ȷ����繵�ͧ��㹡�������� 
														��������١�����ҡѺ������ԧ��͹�ѹ�һ���� 
														��������繵�ͧ������ҡ�����ͺ����</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<th>
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="150" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fully1.jpg" width="240" height="173"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</th>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="244" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fully2.jpg" width="258" height="173"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fully3.jpg" width="445" height="349"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fully4.jpg" width="444" height="330"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fully5.jpg" width="444" height="321"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fully6.jpg" width="444" height="510"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fully7.jpg" width="450" height="335"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;�&nbsp;<strong><u>�Ըա�è��¡�ҫ����ҡ�������� 
																Burner</u></strong></td>
												</tr>
												<tr>
													<td height="10"></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���俪�Դ�����������ǹ�ͧ 
														Outer Mantle �ͧ����
														<span class="T_blue13">(Secondary Combustion Zone)</span>
														���ͧ�ҡ����ҳ�ҡ�ȷ����繵�ͧ��㹡�������� 
														��������١�����ҡѺ������ԧ��͹�ѹ�һ���� 
														��������繵�ͧ������ҡ�����ͺ����</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/flameimg4.gif" width="424" height="244"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 4: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��Ҥ�����͹ (Calorific 
														Value, CV)</td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ҫ�����������ԧ��鹨��վ�ѧ�ҹ�������� 
																	�����ҷӡ�������͹Ӿ�ѧ�ҹ�͡���� ��Ҥ�����͹�ͧ������ԧ��ҧ�
																	<span class="T_blue13">(�ͧ�� 
                      �ͧ���� ���͡�ҫ)</span>
																	��鹨С�˹��»���ҳ������͹���١�Ŵ������͡�� �¡��������������ԧ (��ҫ) 
																	����ҵ� 1 �١��ȡ��������ҧ����ó� 
																	����ͼ�Ե�ѳ���������س�����������鹢ͧ������ԧ ��е�� Oxidant 
																	������ö�ʴ���ѧ�ٻ</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/ngupic2.jpg" width="498" height="303"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;˹��¢ͧ��Ҥ�����͹����Ѻ�ͧ����Тͧ���� 
																	���
																	<span class="T_blue13">Megajoules ��͡��š��� (MJ/kg)</span>
																	��� ����Ѻ������ԧ����繡�ҫ ����˹���
																	<span class="T_blue13">Megajoules ����١��ȡ����� (MJ/m3)</span>
																	˹��¢ͧ��Ҥ�����͹����Ѻ British Gas Industry
																	<span class="T_blue13">(British thermal units per cubic foot, Btu/ft3)</span>
																	�������˹��¤�����͹�ҡ����� Btu ��鹨���ҧ�ԧ 1 
																	�١��ȡ�ص�ҵðҹ����س����� 60&deg;F ��Ф����ѹ 30 ���ǻ�ͷ ����Ѻ�к� Metric 
																	��� ˹��·������ MJ/m3 ����Ѵ 1 �١��ȡ����÷��������ҵðҹ�ͧ Metric 
																	����س����� 15&deg;C ��� 1.01325 bar �͡�ҡ��� 
																	�Ҩ�ա����˹��¢ͧ��ѧ�ҹ��ѡɳ���� �ҷ� Therm ��� 1 Therm ����ҡѺ 105 
																	Btu</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���
																	<span class="T_gray12">
																		<strong>(�ʶҹС�ҫ)</strong></span>
																	��˹��㹼�Ե�ѳ�����Դ��鹨ҡ��������� (Products of Combustion) 
																	����͹�Ӷ١�Ǻ���������繢ͧ���� ��� CV �з�����鹨����¶֧ Gross CV 
																	���㹷ҧ��Ѻ�ѹ ��ҹ�������ʶҹС�ҫ
																	<span class="T_blue13">(����Դ�������㹷ҧ��Ժѵ�)</span>
																	��� CV ������鹨����¶֧ Net CV</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ѧ��� 
																	�֧�դ����Ӥѭ���е�ͧ������������ҡ���Ѵ����ҵù����ҧ�ԧ����س�������Ф����ѹ� 
																	������������ԧ��ҫ������������з����� ����������Ǵ����͹��</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="515" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#99ccff">
																		<tr>
																			<td width="260" bgcolor="#cce6ff" class="T_black13" align="center"><strong>Reference 
																					conditions</strong></td>
																			<td width="249" bgcolor="#cce6ff" class="T_black13" align="center"><strong>Calorific 
																					value</strong></td>
																		</tr>
																		<tr>
																			<td class="T_gray12"><span>&nbsp;&nbsp;&nbsp;&nbsp;Metric Standard 
                                Conditions</span></td>
																			<td class="T_gray12"><span>&nbsp;&nbsp;&nbsp;&nbsp;37.71 MJ/m<sup>3</sup> (gross) </span>
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;34.00 MJ/m<sup>3</sup> (net)</td>
																		</tr>
																		<tr>
																			<td class="T_gray12"><span>&nbsp;&nbsp;&nbsp;&nbsp;NTP 0&deg;C </span>
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;760mm Hg</td>
																			<td class="T_gray12"><span>&nbsp;&nbsp;&nbsp;&nbsp;39.78MJ/m<sup>3</sup> (gross)</span></td>
																		</tr>
																		<tr>
																			<td class="T_gray12"><span>&nbsp;&nbsp;&nbsp;&nbsp;Imperial 60&deg;F</span>
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;30" Hg</td>
																			<td><span class="T_gray12">&nbsp;&nbsp;&nbsp;&nbsp;1013Btu/ft<sup>3</sup> (gross)</span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 5: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;�������¢ͧ Gross CV ��� 
																	Net CV</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="99%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�繷���Һ�ѹ���������� 
																				���
																				<span class="T_blue13">(ʶҹ�����)</span>
																				�繼ż�Ե��Դ˹�觢ͧ��������� (Products of Combustion) 㹡���Ѵ��Ҥ�����͹ 
																				��ҹѺ�����ѧ�ҹ������͹��������͡�����ͧ�ҡ�äǺ�蹢ͧ�͹������¹ʶҹ����繢ͧ���� 
																				(���) �����¡��Ҥ�����͹������ Gross CV 㹷ҧ��Ѻ�ѹ 
																				������Ѻ�����ѧ�ҹ������͹�������¡��� Net CV</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="10" class="T_org13" align="center"><table width="500" border="1" cellpadding="3" cellspacing="0" bordercolor="#99ccff">
																					<tr>
																						<th height="35" class="T_gray13">
																							<strong>Net CV = Gross CV - ������͹������͡�Ҩҡ��äǺ������ H<sub>2</sub>O 
																								��� 15&deg;C</strong></th>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																				<span class="T_gray13">
																					<strong>��è�������</strong></span>
																				&nbsp;&nbsp;����͹�Ө���ʶҹ��͹�Өдٴ�Ѻ������͹ 
																				��������͹�ӨФǺ���繹�ӨФ�¤�����͹ ��Ҥ�����͹ὧ�ͧ��á�������
																				<span class="T_blue13">(Latent Heat ���� Enthalpy of Vaporization)</span>
																				�ͧ��Ӥ�� 2.466 MJ/kg ���¤�����ҹ�ӷ����ʶҹ��繢ͧ����˹ѡ 1 kg 
																				�ٴ�Ѻ��ѧ�ҹ���� 2.466 MJ ������¹ʶҹШҡ�ͧ�������͹�� �ѧ�����</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="10" class="T_org13" align="center"><table width="500" border="1" cellpadding="3" cellspacing="0" bordercolor="#99ccff">
																					<tr>
																						<th height="35" class="T_gray13">
																							<strong>H<sub>2</sub>O (liquid) = H<sub>2</sub>O (gas) + 2.466 MJ/kg</strong></th>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				����ö��¹͸Ժ�¤������¢ͧ Net CV ��� Gross CV 
																				��ٻ�ͧ����͹��Żբͧ��á������ͧ͢��� ��ѧ�����</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="10" class="T_org13" align="center"><table width="500" border="1" cellpadding="3" cellspacing="0" bordercolor="#99ccff">
																					<tr>
																						<th height="35" class="T_gray13">
																							<strong>&amp; Net CV = Gross CV - (��Ţͧ��� x 2.466 MJ/kg)</strong></th>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>����ͤ���͹��Żբͧ������ͧ͢��� 
																					= 2.466 MJ/kg � 15&deg;C </strong>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																	</table>
																</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 6: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;����˹�������ѷ�� 
																	(Relative Density, RD)</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="99%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th>
																				<table width="99%" border="0" cellspacing="0" cellpadding="0">
																					<tr>
																						<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																							���÷����������駡�ҫ�������� 
																							����˹�������ѷ���繡���Ѵ����˹��蹢ͧ���õ�ҧ� �ѹ��º�Ѻ����ҵðҹ 
																							��������Ѻ��ҫ ���Ѵ��º�Ѻ�ҡ�� ����˹�������ѷ��ͧ��ҫ��Դ˹�� �����¶֧ 
																							�ѵ����ǹ���º��º����˹��蹢ͧ��ҫ��Դ��� <strong class="T_blue13">( P<sub>g</sub>)</strong>
																							�Ѻ����˹��蹢ͧ�ҡ�� <strong class="T_blue13">(P<sub>a</sub>)</strong> ����дѺ�س����� 
																							��Ф����ѹ���ǡѹ</td>
																					</tr>
																					<tr>
																						<th>
																							&nbsp;</th>
																					</tr>
																					<tr>
																						<th>
																							<table width="170" border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																								<tr>
																									<th>
																										<img src="../images/information/formula.gif" width="170" height="74"></th>
																								</tr>
																							</table>
																						</th>
																					</tr>
																					<tr>
																						<th>
																							&nbsp;</th>
																					</tr>
																					<tr>
																						<td height="10" class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
																								����˹��蹢ͧ��ҫ�����ҵ��դ�һ���ҳ����˹�觢ͧ���˹ѡ�ҡ��</strong></td>
																					</tr>
																					<tr>
																						<th>
																							&nbsp;</th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																	</table>
																</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 7: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Wobbe Number / Wobbe 
																	Index(WI)</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="99%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				Wobbe Number (WI) �դ��������ҡ����Ѻ������ҫ�����ҵ���������ԧ ��觤�� 
																				WI ��� ���դ������µ�͡�ù������Ѻ�����������к� Combustion 
																				��������Է���Ҿ�٧�ش �¨С��������� WI 
																				����ǹ�Ӥѭ��ͻ���ҳ��ѧ�ҹ���Ш��¼�ҹ����к� Combustion ��ҹ Injector 
																				�Ԩ�ó��ٵá����Ţͧ��ҫ��ҹ Gas Injector</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image14.gif" width="174" height="46"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/p2.gif" width="258" height="99"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
																					�ŧ�繾�ѧ�ҹ������͹���¡�äٳ CV</strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image15.gif" width="264" height="53"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image16.gif" width="216" height="46"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image17.gif" width="214" height="43"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>�Ѵ��ǹ�����ҧ
																					<img src="../images/information/Image18.gif" width="39" height="43"> ������¡���
																					<span class="T_blue14">Wobbe Number</span></strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table width="99%" border="1" cellpadding="1" cellspacing="0" bordercolor="#6699cc" bgcolor="#f0f8ff">
																					<tr>
																						<td bordercolor="#666699" class="T_gray12">&nbsp;&nbsp;Q = FLOW OF GAS<br>
																							&nbsp;&nbsp;C = COEFFICIENT OF DISCHARGE<br>
																							&nbsp;&nbsp;CV(HV) = CALORIFIC VALUE OF NATURAL GAS<br>
																							&nbsp;&nbsp;RD = RELATIVE DENSITY OF NATURAL GAS</td>
																						<td class="T_gray12">&nbsp;&nbsp;P = GAS PRESSURE<br>
																							&nbsp;&nbsp;A = INJECTOR ORIFICE AREA<br>
																							&nbsp;&nbsp;H = HEAT FLOW<br>
																							&nbsp;&nbsp;WI = WOBBE NUMBER (WOBBE INDEX)</td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong class="T_blue13">
																					�����˵� :</strong>&nbsp;&nbsp;&nbsp;��� RD �դ����ҡѺ SG ( Specific 
																				&nbsp;Gravity )&nbsp; 㹼š���������� &nbsp;Natural Gas Composition
																			</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>:</strong>&nbsp;&nbsp;&nbsp;��� 
																				CV �դ����ҡѺ HV ( Heating &nbsp;Value )&nbsp; 㹼š���������� &nbsp;Natural 
																				Gas Composition</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>�ô�Ԩ�óҤ�������ѹ���ҧ 
																						� ��лѭ�ҷ����Դ</u></strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image19.gif" width="297" height="117"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>�������Ҷ��
																					<img src="../images/information/Image20.gif" width="41" height="43"> �ա������¹�ŧ���ռŵ�� 
																					Heat Flow (H) ����˹���� 㹡�кǹ���������</strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="2" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/p1.gif" width="389" height="155"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��з���Ѻ�Ѵ��ǹ�ͧ��ҫ����ҡ��������� ���ѧ�ҹ������͹�����ͧ���������� 
																				&nbsp;<span class="T_blue13">Heat Flow (H)</span>
																				&nbsp;�ҡ���͹���ŧ&nbsp; ��������šѺ�ҡ�Ȩ�����¹� 
																				������ѧ�ҹ������͹��������ç�����ͧ��� 
																				����ѧ���������Ǵ��������������¹��ա���� ����Ǥ�� &nbsp;<span class="T_blue13">Heat Flow 
      (H)</span>
																				&nbsp;�ҡ�����ҡ�ȷ������� ���Դ��ҫ����͹�͹��͡䫴� (CO) ��ж�� H 
																				���¡����ҡ�ȷ������š���� O<sub>2</sub> ��ҡ��ҡ��� �ѧ��� 
																				����Ңͧ��ҹ�Ǻ��� CO , O<sub>2</sub> ���¡���ѡ���Ѵ��ǹ�ͧ��ҫ ����ҡ�Ȥ���� 
																				���������ö<br>
																				�ѡ�� % �ͧ CO ���� O<sub>2</sub> ����ҹ��ͧ�����</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��������㹢�з���ҹ��Ѻ�к�
																				<span class="T_blue12">
																					<strong>Combustion</strong></span>
																				�ʹ����� ��ҹ��ͧ����ѡ�Ҥ��������ͧ��ҫ����ҡ�� ��ҹ���ѡ�� H 
																				�ͧ����餧��������ҧ��</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="1" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image21.gif" width="206" height="43"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="1" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image22.gif" width="115" height="25"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��� WI Ŵŧ ������� H �������ͧ���� Q ���ͻ���ҳ��ҫ</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��� WI ���� ������� H �������ͧŴ Q ���ͻ���ҳ��ҫ</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="1" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/Image23.gif" width="76" height="43"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="1" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<td height="10" bgcolor="#ffffff" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/information/Image24.gif" width="29" height="18">&nbsp;&nbsp;&nbsp;�����&nbsp;&nbsp;&nbsp;<img src="../images/information/Image25.gif" width="37" height="24">&nbsp;&nbsp;&nbsp;�������&nbsp;&nbsp;&nbsp;<img src="../images/information/Image26.gif" width="24" height="18">&nbsp;&nbsp;&nbsp;Ŵŧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
																					</tr>
																					<tr>
																						<td height="10" bgcolor="#ffffff" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/information/Image24.gif" width="29" height="18">&nbsp;&nbsp;&nbsp;�����&nbsp;&nbsp;&nbsp;<img src="../images/information/Image25.gif" width="37" height="24">&nbsp;&nbsp;&nbsp;Ŵŧ&nbsp;&nbsp;&nbsp;<img src="../images/information/Image26.gif" width="24" height="18">&nbsp;&nbsp;&nbsp;�������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;<strong> �ѧ��鹨д٤�� HV 
																					�ͧ��ҫ��Ҥ������§���ҧ��������� ��ͧ�Դ��� WI ���� </strong>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				HV �ͧ��ҫ�������Ѻ�Ѵ��ǹ�ͧ C1 (Methane) , C2 (Ethane) , C3 , � 
																				�������ѹ�繡�ҫ�����ҵ� ��з�� HV ������Ҩ���Ѵ��ǹ�ͧ C1 , C2 , C3 , � 
																				ᵡ��ҧ�ѹ�� �� SG ������¹����Ѵ��ǹ�ͧ C1 , C2 , C3 , � ��з�� HV �����
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				�·�������� Burner ����ö�Ѻ��ҫ����դس�Ҿ����¹�ŧ任���ҳ <img src="../images/information/Image27.gif" width="38" height="18" border="1">
																				�ͧ Wobbe Number 
																				��ҹ��Ǩ�ͺ�Ѻ����Ե���ͤ���������ͧ�ѡô�����Ңͧ��ҹ�Ѻ�������</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																	</table>
																</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 8: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;����Է���Ҿ�ͧ���������</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td height="10" class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�&nbsp; <strong><u>��õԴ�������Է���Ҿ�ͧ����������բ�ʹ��������ҧ���</u></strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table align="center" width="90%" border="0" cellspacing="0" cellpadding="0">
																					<tr>
																						<td width="20" class="T_gray13">1.</td>
																						<td class="T_gray13">��������ԧ��������� �����Ѵ��������</td>
																					</tr>
																					<tr>
																						<td width="20" class="T_gray13">2.</td>
																						<td class="T_gray13">�Ǻ�������Ǵ����</td>
																					</tr>
																					<tr>
																						<td width="20" class="T_gray13">3.</td>
																						<td class="T_gray13">������Һ�����к��Դ����٭���¾�ѧ�ҹ��дѺ����������������</td>
																					</tr>
																					<tr>
																						<td width="20" class="T_gray13">4.</td>
																						<td class="T_gray13">����ö�Ǻ����س�Ҿ�ͧ��Ե�ѳ����</td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�&nbsp; <strong><u>��õԴ�������Է���Ҿ�����������ҵ�ͧ�����ú�ҧ</u></strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��¡������ҧ
																				<span class="T_blue13">CH<sub>4</sub> (Methane)</span>
																				�繵��᷹�ͧ���͸Ժ�����ͧ�ҡ Methane ��ͧ���Сͺ��ѡ�ͧ��ҫ�����ҵ�</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table width="350" height="45" border="1" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/formula1.gif" width="316" height="29"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				�������觷����ҡ��ԡ����ҡ��������ͧ Methane �Ѻ�͡��ਹ ��� 
																				��ҫ����͹��͡䫴���͹ ����͹����͹ (H<sub>2</sub>O) 
																				�͡��ਹ�����㹡���������Ҩҡ�ҡ�� �����ҡ�����Ѵ��ǹ�»���ҳ�ͧ ���ਹ 
																				79% ����͡��ਹ 21% ���¤������ 1m<sup>3</sup> �ͧ��ҫ ��ͧ����ҡ�Ȼ���ҳ 10m<sup>3</sup>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				���������������ó�ͧ Methane ���������ҡ����ǹ�Թ���� 1 m<sup>3 </sup>�ͧ 
																				CO<sub>2</sub> + 2 m<sup>3</sup> �ͧ H<sub>2</sub>O + 7.52 m<sup>3</sup> �ͧ N<sub>2</sub></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="1" cellpadding="0" cellspacing="0" bordercolor="#99cc00">
																					<tr>
																						<th>
																							<img src="../images/information/1.jpg" width="535" height="259"></th>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																						<td background="../images/f_pic_c2.jpg"></td>
																						<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																						<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																								<tr>
																									<td align="center"><img src="../images/information/2.gif" width="392" height="331"></td>
																								</tr>
																							</table>
																						</td>
																						<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																						<td background="../images/f_pic_c7.jpg"></td>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				㹡óշ�����ҡ����ǹ�Թ �ҡ����ǹ�Թ���������ӻ�ԡ�������Шм�ҹ�͡价�� 
																				Stack ������ѵ����ǹ�ͧ CO<sub>2</sub> � Flue Product Ŵŧ (��ͨҧŧ) ��� � 
																				��� ����Դ�ջ���ҳ������ �ʴ�����դ�������ѹ��ѹ���������ҧ ��� Excess Air 
																				(� Excess Air ��ҹ��ͧ����������� O<sub>2</sub> �������)
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��������ѹ��ͧ������ԧ �ҡ����мŷ����ҡ����������ʴ������ Combustion 
																				Diagram �ѧ�ٻ
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="8" background="../images/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																						<td background="../images/f_pic_c2.jpg"></td>
																						<td width="10" align="right" background="../images/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																						<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																								<tr>
																									<td align="center"><img height="294" src="../images/information/gph1.gif" width="406"></td>
																								</tr>
																								<tr>
																									<td height="3" class="text_blue13"></td>
																								</tr>
																								<tr>
																									<td height="2" bgcolor="#99cc00" class="text_blue13"></td>
																								</tr>
																								<tr>
																									<td height="8" align="center" class="text_blue13"></td>
																								</tr>
																								<tr>
																									<td align="center" class="T_gray13"><strong>Combustion Diagram</strong></td>
																								</tr>
																							</table>
																						</td>
																						<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																						<td background="../images/f_pic_c7.jpg"></td>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�&nbsp; <strong><u>����һ���Է���Ҿ�ͧ���������</u></strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				�����ҷ�Һ�����ǹ��Сͺ�ͧ������ԧ������ ����س����Ԣͧ
																				<span class="T_blue13">Products of Combustion (POC)</span>
																				��Ҩ�����ö��Һ����Է���Ҿ�ͧ����</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;<strong>����ҳ�ͧ Products ��Сͺ����</strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table align="center" width="400" height="30" border="1" cellpadding="0" cellspacing="0"
																					bordercolor="#6699cc">
																					<tr>
																						<td class="T_black13" align="center"><strong>Products of Combustion + Volume of Excess 
																								Air</strong></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;<strong>��ǹ�س����Ԣͧ Flue Product 
																					���繵���ʴ��֧����Է���Ҿ�ͧ��������� </strong>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="8" background="../images/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																						<td background="../images/f_pic_c2.jpg"></td>
																						<td width="10" align="right" background="../images/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																						<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																								<tr>
																									<td align="center"><img height="360" src="../images/information/gph2.jpg" width="500"></td>
																								</tr>
																								<tr>
																									<td height="3" class="text_blue13"></td>
																								</tr>
																								<tr>
																									<td height="2" bgcolor="#99cc00" class="text_blue13"></td>
																								</tr>
																								<tr>
																									<td height="8" align="center" class="text_blue13"></td>
																								</tr>
																								<tr>
																									<td align="center" class="T_gray13"><strong>Flue Loss Chart</strong></td>
																								</tr>
																							</table>
																						</td>
																						<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																						<td background="../images/f_pic_c7.jpg"></td>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																				<span class="T_blue13">
																					<strong>��¡������ҧ</strong></span>&nbsp;&nbsp; 
																				�óշ���ç�ҹ��ҹ�Ѵ��ҵ�ҧ� ��� Stack ��ѧ���
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table width="200" border="1" cellpadding="0" cellspacing="0" bordercolor="#6699cc" bgcolor="#deefff">
																					<tr>
																						<td bordercolor="#666699" class="T_gray12" align="center">����ҳ O<sub>2</sub> = 4 
																							%
																							<br>
																							����ҳ CO<sub>2</sub> = 11.1%
																							<br>
																							Stack Temp = 250 C
																						</td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ҡ 
																				Flue Loss Chart ����ͻ���ҳ O<sub>2</sub> �դ�� 4 % Air Factor ����ҡѺ 1.1</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��� 
																				Air Factor ����ҡѺ 1.1 �ҡ��鹵�駩ҡ仵Ѵ��� Stack Temp 250 C ����ҹ��� 
																				Loss ����ҡѺ 22.5%
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table width="200" border="1" cellpadding="0" cellspacing="0" bordercolor="#6699cc" bgcolor="#deefff">
																					<tr>
																						<td bordercolor="#666699" class="T_gray12" align="center">Efficiency = 100 - Loss%
																							<br>
																							<br>
																							= 77.5%
																						</td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				���١������·�ҹ �ѡɳ�����ͧ�ѡ��������ö����
																				<span class="T_blue13">FLUE LOSS CHART</span>
																				�� ���ͧ�ҡ����ͧ�ѡ��� DRYER ���������ҧ</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																						<td background="../images/f_pic_c2.jpg"></td>
																						<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																						<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																								<tr>
																									<td align="center"><img src="../images/information/DRYER.gif" width="252" height="188"></td>
																								</tr>
																							</table>
																						</td>
																						<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																						<td background="../images/f_pic_c7.jpg"></td>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��ҹ����红����� % CO<sub>2</sub> , CO , O<sub>2</sub> �繻��������ӹǳ���Ѵ��ǹ�ͧ 
																				CO/CO2 ᷹ ���Ш��繡���ʴ��֧��������ó�ͧ��������� �ٵ�����ҧ Methane 
																				������繵��᷹���͸Ժ�¡��������</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��ҡ���������������ó� ����Ҩ�Դ�ҡ�ҡ�ȹ�������͡�ҫ�ҡ� ��ҹ�о������ CO 
																				��ҡ�������� ���ҧ�á���㹷�ɮ� Air Factor = 1 �з���� CO = 0 
																				��㹷ҧ��Ժѵ���������ҧ��� ��觨о�����ѧ���� CO 
																				���ͧ�ҡ��ü������������ó�ͧ CH<sub>4</sub> + O<sub>2</sub> ��� British 
																				Standard ��Ԩ�ó� ��ҡ��������������ó�е�ͧ���Ѵ��ǹ�ͧ CO/CO<sub>2</sub> 
																				���¡��� 0.02</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				��ҷ�ҹ���Ԩ�ó� CO/CO<sub>2</sub> ��ҹ�Ҩ���� Temp ��ż�Ե������� 
																				�����ҫ�ҡ���һ���</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																	</table>
																</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 9: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;��äӹǳ % Flue Loss 
																	�ҡ���������</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp; <strong><u>���ҧ��� 1</u></strong> Gas 
																				Properties ����ѵ����ǹ���������</td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<th>
																				<table width="550" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#336699">
																					<tr bgcolor="#006699">
																						<td width="69" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>% 
																									composition</strong></div>
																						</td>
																						<td width="35" height="35" bgcolor="#99ccff" class="T_white12"></td>
																						<td width="44" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>O2 
																									require </strong>
																							</div>
																						</td>
																						<td width="46" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>CO2 
																									product</strong></div>
																						</td>
																						<td width="46" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>H2O 
																									product</strong></div>
																						</td>
																						<td width="46" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>N2 
																									product</strong></div>
																						</td>
																						<td width="55" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>SG 
																									(*1)</strong></div>
																						</td>
																						<td width="61" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>SG 
																									contribution</strong></div>
																						</td>
																						<td width="62" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>HV(*1) 
																									(BTU/SCF)</strong></div>
																						</td>
																						<td width="75" height="35" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>HV 
																									contribution</strong></div>
																						</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="69" bordercolor="#ffffff" class="T_black11"><div align="center">2.15</div>
																						</td>
																						<td width="35" bordercolor="#ffffff" bgcolor="#99ccff" class="T_white12"><div align="left">N<sub>2</sub></div>
																						</td>
																						<td width="44" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="46" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="46" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">2.15</div>
																						</td>
																						<td width="55" class="T_black11"><div align="right">0.967038</div>
																						</td>
																						<td width="61" class="T_black11"><div align="right">2.0791</div>
																						</td>
																						<td width="62" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="75" class="T_black11"><div align="right">0.0000</div>
																						</td>
																					</tr>
																					<tr bgcolor="#a3c1e0">
																						<td width="69" bgcolor="#cae4ff" class="T_black11"><div align="center">15.13</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">CO<sub>2</sub></div>
																						</td>
																						<td width="44" bgcolor="#cae4ff" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">15.13</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="55" bgcolor="#cae4ff" class="T_black11"><div align="right">1.527518</div>
																						</td>
																						<td width="61" bgcolor="#cae4ff" class="T_black11"><div align="right">23.1113</div>
																						</td>
																						<td width="62" bgcolor="#cae4ff" class="T_black11"><div align="right"></div>
																						</td>
																						<td width="75" bgcolor="#cae4ff" class="T_black11"><div align="right">0.0000</div>
																						</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="69" class="T_black11"><div align="center">73.66</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>1</sub>H<sub>4</sub></div>
																						</td>
																						<td width="44" class="T_black11"><div align="right">147.32</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">73.66</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">147.32</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">554.20</div>
																						</td>
																						<td width="55" class="T_black11"><div align="right">0.554715</div>
																						</td>
																						<td width="61" class="T_black11"><div align="right">40.8603</div>
																						</td>
																						<td width="62" class="T_black11"><div align="right">1012.1</div>
																						</td>
																						<td width="75" class="T_black11"><div align="right">74551.2860</div>
																						</td>
																					</tr>
																					<tr bgcolor="#a3c1e0">
																						<td width="69" bgcolor="#cae4ff" class="T_black11"><div align="center">6.22</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>2</sub>H<sub>6</sub></div>
																						</td>
																						<td width="44" bgcolor="#cae4ff" class="T_black11"><div align="right">21.77</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">12.44</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">18.66</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">81.90</div>
																						</td>
																						<td width="55" bgcolor="#cae4ff" class="T_black11"><div align="right">1.046557</div>
																						</td>
																						<td width="61" bgcolor="#cae4ff" class="T_black11"><div align="right">6.5096</div>
																						</td>
																						<td width="62" bgcolor="#cae4ff" class="T_black11"><div align="right">1773.0</div>
																						</td>
																						<td width="75" bgcolor="#cae4ff" class="T_black11"><div align="right">11028.0600</div>
																						</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="69" class="T_black11"><div align="center">1.78</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>3</sub>H<sub>8</sub></div>
																						</td>
																						<td width="44" class="T_black11"><div align="right">8.90</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">5.34</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">7.12</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">33.48</div>
																						</td>
																						<td width="55" class="T_black11"><div align="right">1.549795</div>
																						</td>
																						<td width="61" class="T_black11"><div align="right">2.7586</div>
																						</td>
																						<td width="62" class="T_black11"><div align="right">2523.3</div>
																						</td>
																						<td width="75" class="T_black11"><div align="right">4491.4740</div>
																						</td>
																					</tr>
																					<tr bgcolor="#a3c1e0">
																						<td width="69" bgcolor="#cae4ff" class="T_black11"><div align="center">0.41</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>4</sub>H<sub>10</sub></div>
																						</td>
																						<td width="44" bgcolor="#cae4ff" class="T_black11"><div align="right">2.67</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">1.64</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">2.05</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">10.03</div>
																						</td>
																						<td width="55" bgcolor="#cae4ff" class="T_black11"><div align="right">2.075184</div>
																						</td>
																						<td width="61" bgcolor="#cae4ff" class="T_black11"><div align="right">0.8508</div>
																						</td>
																						<td width="62" bgcolor="#cae4ff" class="T_black11"><div align="right">3269.8</div>
																						</td>
																						<td width="75" bgcolor="#cae4ff" class="T_black11"><div align="right">1340.6180</div>
																						</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="69" class="T_black11"><div align="center">0.40</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>4</sub>H<sub>10</sub></div>
																						</td>
																						<td width="44" class="T_black11"><div align="right">2.60</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">1.60</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">2.00</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">9.78</div>
																						</td>
																						<td width="55" class="T_black11"><div align="right">2.067467</div>
																						</td>
																						<td width="61" class="T_black11"><div align="right">0.8270</div>
																						</td>
																						<td width="62" class="T_black11"><div align="right">3260.7</div>
																						</td>
																						<td width="75" class="T_black11"><div align="right">1304.2800</div>
																						</td>
																					</tr>
																					<tr bgcolor="#a3c1e0">
																						<td width="69" bgcolor="#cae4ff" class="T_black11"><div align="center">0.10</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>5</sub>H<sub>12</sub></div>
																						</td>
																						<td width="44" bgcolor="#cae4ff" class="T_black11"><div align="right">0.80</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">0.50</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">0.60</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">3.01</div>
																						</td>
																						<td width="55" bgcolor="#cae4ff" class="T_black11"><div align="right">2.490018</div>
																						</td>
																						<td width="61" bgcolor="#cae4ff" class="T_black11"><div align="right">0.2490</div>
																						</td>
																						<td width="62" bgcolor="#cae4ff" class="T_black11"><div align="right">4018.9</div>
																						</td>
																						<td width="75" bgcolor="#cae4ff" class="T_black11"><div align="right">401.8900</div>
																						</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="69" class="T_black11"><div align="center">0.09</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>5</sub>H<sub>12</sub></div>
																						</td>
																						<td width="44" class="T_black11"><div align="right">0.72</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">0.45</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">0.54</div>
																						</td>
																						<td width="46" class="T_black11"><div align="right">2.71</div>
																						</td>
																						<td width="55" class="T_black11"><div align="right">2.490018</div>
																						</td>
																						<td width="61" class="T_black11"><div align="right">0.2241</div>
																						</td>
																						<td width="62" class="T_black11"><div align="right">4009.7</div>
																						</td>
																						<td width="75" class="T_black11"><div align="right">360.8730</div>
																						</td>
																					</tr>
																					<tr bgcolor="#a3c1e0">
																						<td width="69" bgcolor="#cae4ff" class="T_black11"><div align="center">0.06</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="left">C<sub>6</sub>H<sub>14</sub></div>
																						</td>
																						<td width="44" bgcolor="#cae4ff" class="T_black11"><div align="right">0.57</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">0.36</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">0.42</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="right">2.14</div>
																						</td>
																						<td width="55" bgcolor="#cae4ff" class="T_black11"><div align="right">2.974113</div>
																						</td>
																						<td width="61" bgcolor="#cae4ff" class="T_black11"><div align="right">0.1784</div>
																						</td>
																						<td width="62" bgcolor="#cae4ff" class="T_black11"><div align="right">4764.4</div>
																						</td>
																						<td width="75" bgcolor="#cae4ff" class="T_black11"><div align="right">285.8640</div>
																						</td>
																					</tr>
																					<tr bgcolor="#666666">
																						<td width="69" bgcolor="#6cb6ff" class="T_white12"><div align="center">100</div>
																						</td>
																						<td width="35" bgcolor="#99ccff" class="T_white12"><div align="center"></div>
																						</td>
																						<td width="44" bgcolor="#6cb6ff" class="T_white12"><div align="center">185.35</div>
																						</td>
																						<td width="46" bgcolor="#6cb6ff" class="T_white12"><div align="center">111.12</div>
																						</td>
																						<td width="46" bgcolor="#6cb6ff" class="T_white12"><div align="center">178.71</div>
																						</td>
																						<td width="46" bgcolor="#6cb6ff" class="T_white12"><div align="center">699.40</div>
																						</td>
																						<td width="55" bgcolor="#6cb6ff" class="T_white12"><div align="center"></div>
																						</td>
																						<td width="61" bgcolor="#6cb6ff" class="T_white12"><div align="center">0.7765</div>
																						</td>
																						<td width="62" bgcolor="#6cb6ff" class="T_white12"><div align="center"></div>
																						</td>
																						<td width="75" bgcolor="#6cb6ff" class="T_white12"><div align="center">937.6435</div>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="9" bgcolor="#f2f9ff">&nbsp;</td>
																						<td width="75" class="T_black11" bgcolor="#cae4ff"><div align="center">BTU/SCF</div>
																						</td>
																					</tr>
																					<tr>
																						<td width="69" bgcolor="#f2f9ff">&nbsp;</td>
																						<td colspan="2" bgcolor="#cae4ff" class="T_black11"><div align="right">VDFP=</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="center">8.1052</div>
																						</td>
																						<td colspan="2" bgcolor="#f2f9ff">&nbsp;</td>
																						<td width="55" bgcolor="#cae4ff" class="T_black11"><div align="center">Wobbe=</div>
																						</td>
																						<td width="61" bgcolor="#6cb6ff" class="T_white12"><div align="right">1064.0733</div>
																						</td>
																						<td width="62" bgcolor="#cae4ff" class="T_black11">&nbsp;&nbsp;&nbsp;BTU/SCF</td>
																						<td width="75" bgcolor="#f2f9ff">&nbsp;</td>
																					</tr>
																					<tr>
																						<td width="69" bgcolor="#f2f9ff">&nbsp;</td>
																						<td colspan="2" bgcolor="#cae4ff" class="T_black11"><div align="right">Air Reqd=</div>
																						</td>
																						<td width="46" bgcolor="#cae4ff" class="T_black11"><div align="center">8.8260</div>
																						</td>
																						<td colspan="6" bgcolor="#f2f9ff">&nbsp;</td>
																					</tr>
																					<tr>
																						<td width="69" bgcolor="#f2f9ff">&nbsp;</td>
																						<td colspan="2" bgcolor="#cae4ff" class="T_black11"><div align="right">Air/Gas Ratio=</div>
																						</td>
																						<td width="46" bgcolor="#6cb6ff" class="T_white12"><div align="center">8.8260</div>
																						</td>
																						<td colspan="6" bgcolor="#f2f9ff">&nbsp;</td>
																					</tr>
																					<tr>
																						<td height="2" colspan="10" bgcolor="#006699" class="T_blue13"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td><table width="500" align="center" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
																					<tr>
																						<td bordercolor="#666699" class="T_blue13">&nbsp;&nbsp;&nbsp;<u><strong>Note</strong></u>&nbsp;<strong>:</strong>&nbsp;<span class="T_gray13">(*1) from 
                                AGA-3, 1969 at 14.73 psia., 60&deg;F 
                                <DIV></DIV>
							</span></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="3" background="../images/information/l2.jpg"></td>
																		</tr>
																	</table>
																</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp; <strong><u>���ҧ��� 2</u></strong> �ʴ���������ѹ�������ҧ 
																				Air Factor �Ѻ % CO<sub>2</sub>, O<sub>2</sub> �����ҡ���������</td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<th>
																				<table width="550" border="0" cellspacing="1" cellpadding="0" align="center" height="18">
																					<tr class="T_green13">
																						<td height="2" colspan="5" align="center" bgcolor="#99ccff"></td>
																					</tr>
																					<tr bgcolor="#99ccff" class="T_white12">
																						<td width="110" height="30" align="center" bgcolor="#99ccff"><strong>
																								<div align="center">% CO<sub>2</sub></div>
																							</strong>
																						</td>
																						<td width="105" height="30" align="center" bgcolor="#99ccff"><strong>
																								<div align="center">VEA</div>
																							</strong>
																						</td>
																						<td width="117" height="30" align="center" bgcolor="#99ccff"><strong>
																								<div align="center">% EA.</div>
																							</strong>
																						</td>
																						<td width="116" height="30" align="center" bgcolor="#99ccff"><strong>
																								<div align="center">lamda</div>
																							</strong>
																						</td>
																						<td width="96" height="30" align="center" bgcolor="#99ccff"><strong>
																								<div align="center">O<sub>2</sub></div>
																							</strong>
																						</td>
																					</tr>
																					<tr>
																						<td height="2" colspan="5" bgcolor="#99ccff"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">13.7097132</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">0.0000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">0.00000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">1.00000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">0</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">12.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">0.1154800</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">0.13084</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">1.13084113</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">0</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">11.5000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">1.5574100</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">0.17646</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">1.17645759</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">3.38475184</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">11.0000000</div>
																							<DIV></DIV>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">1.9966200</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">0.22622</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">1.22622100</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">4.15063220</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">10.5000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">2.4776500</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">0.28072</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">1.28072379</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">4.91651255</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">10.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">3.0068000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">0.34067</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">1.34067685</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">5.68239291</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">9.5000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">3.5916400</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">0.40694</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">1.40694075</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">6.44827326</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">9.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">4.2414600</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">0.48057</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">1.48056732</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">7.21415362</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">8.5000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">4.9677400</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">0.56286</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">1.56285583</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">7.98003397</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">8.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">5.7848000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">0.65543</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">1.65543041</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">8.74591433</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">7.5000000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">6.7108000</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">0.76035</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12">
																							<div align="right">1.76034827</div>
																						</td>
																						<td bgcolor="#f0ffff" class="T_gray12"><div align="right">9.51179468</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">7.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">7.7690800</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">0.88025</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">1.88025439</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">10.27767500</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12">
																							<div align="right">6.5000000</div>
																						</td>
																						<td class="T_gray12"><div align="right">8.9901800</div>
																						</td>
																						<td class="T_gray12"><div align="right">1.01861</div>
																						</td>
																						<td class="T_gray12"><div align="right">2.01860761</div>
																						</td>
																						<td class="T_gray12"><div align="right">11.04355540</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">6.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">10.4148000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">1.18002</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">2.18001969</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">11.80943570</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12"><div align="right">5.5000000</div>
																						</td>
																						<td class="T_gray12">
																							<div align="right">12.0984300</div>
																						</td>
																						<td class="T_gray12"><div align="right">1.37078</div>
																						</td>
																						<td class="T_gray12"><div align="right">2.37077943</div>
																						</td>
																						<td class="T_gray12"><div align="right">12.57531610</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">5.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">14.1188000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">1.59969</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">2.59969112</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">13.34119650</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12"><div align="right">4.5000000</div>
																						</td>
																						<td class="T_gray12"><div align="right">16.5881300</div>
																						</td>
																						<td class="T_gray12"><div align="right">1.87947</div>
																						</td>
																						<td class="T_gray12"><div align="right">2.87947207</div>
																						</td>
																						<td class="T_gray12"><div align="right">14.10707680</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">4.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">19.6748000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">2.22920</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">3.22919825</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">14.87295720</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12">
																							<div align="right">3.5000000</div>
																						</td>
																						<td class="T_gray12">
																							<div align="right">23.6433700</div>
																						</td>
																						<td class="T_gray12"><div align="right">2.67885</div>
																						</td>
																						<td class="T_gray12"><div align="right">3.67884621</div>
																						</td>
																						<td class="T_gray12"><div align="right">15.63886750</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">3.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">28.9348000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">3.27838</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">4.27837381</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">16.40471790</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12">
																							<div align="right">2.5000000</div>
																						</td>
																						<td class="T_gray12"><div align="right">36.3428000</div>
																						</td>
																						<td class="T_gray12"><div align="right">4.11772</div>
																						</td>
																						<td class="T_gray12"><div align="right">5.11771966</div>
																						</td>
																						<td class="T_gray12"><div align="right">17.17059820</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">2.0000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">47.4548000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">5.37673</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">6.37673393</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">17.93647860</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12"><div align="right">1.0000000</div>
																						</td>
																						<td class="T_gray12"><div align="right">103.0148000</div>
																						</td>
																						<td class="T_gray12"><div align="right">11.67181</div>
																						</td>
																						<td class="T_gray12"><div align="right">12.67180530</div>
																						</td>
																						<td class="T_gray12"><div align="right">19.46823930</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">0.5000000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">214.1348000</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">24.26195</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12"><div align="right">25.26194800</div>
																						</td>
																						<td bgcolor="#e6f2ff" class="T_gray12">
																							<div align="right">20.23411960</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="5" bgcolor="#e6e6e6" class="T_gray13"></td>
																					</tr>
																					<tr bgcolor="#f0ffff">
																						<td class="T_gray12">
																							<div align="right">0.0001000</div>
																						</td>
																						<td class="T_gray12"><div align="right">1111191.8900000</div>
																						</td>
																						<td class="T_gray12"><div align="right">125900.51000</div>
																						</td>
																						<td class="T_gray12"><div align="right">125901.50900000</div>
																						</td>
																						<td class="T_gray12"><div align="right">21.00000000</div>
																						</td>
																					</tr>
																					<tr>
																						<td height="2" colspan="5" bgcolor="#99ccff" class="T_blue13"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp; <strong>% Flue Loss Calculation</strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<th>
																				<table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="T_gray13">
																					<tr>
																						<td width="357" class="T_gray13">Gross CV<br>
																						</td>
																						<td width="193" class="T_gray13">937.6435 BTU/SCF</td>
																					</tr>
																					<tr>
																						<td width="357" class="T_gray13">Heat released from condensation of H2O at 60&deg;F
																						</td>
																						<td width="193" class="T_gray13">90.1740 BTU/SCF</td>
																					</tr>
																					<tr>
																						<td width="357" class="T_gray13">Nett CV
																						</td>
																						<td width="193" class="T_gray13">847.4695 BTU/SCF</td>
																					</tr>
																					<tr>
																						<td width="357"></td>
																						<td width="193"></td>
																					</tr>
																					<tr>
																						<td width="357" class="T_gray13">Vol of DFP = Vol of CO<sub>2</sub> + N<sub>2</sub>
																						</td>
																						<td width="193" class="T_gray13">8.1052 ft3</td>
																					</tr>
																					<tr>
																						<td width="357" class="T_gray13">Vol of POC = Vol of CO2 + H2O + N2
																						</td>
																						<td width="193" class="T_gray13">9.8923 ft3</td>
																					</tr>
																					<tr>
																						<td width="357" class="T_gray13">Vol of EA = (%O2 x VDFP) / (21-%O2)
																						</td>
																						<td width="193" class="T_gray13"></td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="3" background="../images/information/l2.jpg"></td>
																		</tr>
																	</table>
																</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp; <strong><u>���ҧ��� 3</u></strong> ���ҧ�ʴ���� 
																				Heat in Product of Combustion ��� Heat in Excess Air ��� Stack Temperature 
																				��ҧ�</td>
																		</tr>
																		<tr>
																			<td height="10">&nbsp;</td>
																		</tr>
																		<tr>
																			<th>
																				<table width="550" border="1" cellspacing="0" cellpadding="0" height="25" align="center"
																					bordercolor="#66b3ff">
																					<tr bgcolor="#fff2e6">
																						<td colspan="2" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>Stack Temp.</strong></div>
																						</td>
																						<td width="93" rowspan="2" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>Heat 
																									in POC (BTU/SCF)</strong></div>
																						</td>
																						<td width="109" rowspan="2" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>Heat 
																									in Excess Air (BTU/SCF)</strong></div>
																						</td>
																						<td width="78" rowspan="2" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>Heat 
																									in POC (MJ/m3)</strong></div>
																						</td>
																						<td width="94" rowspan="2" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>Heat 
																									in Excess Air (MJ/m3)</strong></div>
																						</td>
																					</tr>
																					<tr bgcolor="#ffeedf">
																						<td width="84" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>(C)</strong></div>
																						</td>
																						<td width="82" bgcolor="#99ccff" class="T_white12"><div align="center"><strong>(K)</strong></div>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">150</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">423</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">4.6998</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">4.0280</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.175</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.150</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">200</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">473</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">6.714</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">6.0426</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.250</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.225</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">250</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">523</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">8.057</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">7.3850</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.300</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.275</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">300</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">573</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">10.742</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">10.7410</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.450</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.400</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">350</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">623</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">12.085</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">10.7420</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.450</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.400</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">400</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">673</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">14.099</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">12.7570</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.525</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.475</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">450</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">723</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">16.114</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">14.7710</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.600</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.550</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">500</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">773</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">17.456</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">16.1140</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.650</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.600</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">550</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">823</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">20.142</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">18.1280</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.750</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.675</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">600</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">873</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">21.485</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">20.1420</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.800</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.750</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">650</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">923</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">24.170</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">21.4850</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.900</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.800</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">700</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">973</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">26.185</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">24.1700</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">0.975</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.900</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">750</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">1023</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">27.527</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">26.1850</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">1.025</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">0.975</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">800</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">1073</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">29.542</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">27.5270</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">1.100</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">1.025</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">850</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">1123</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">32.227</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">29.5420</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">1.200</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">1.100</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">900</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">1173</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">34.241</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">31.5560</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">1.275</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">1.175</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="T_gray12">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">950</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">1223</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">36.256</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">33.5700</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">1.350</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">1.250</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="6"><table width="550" border="0" cellspacing="0" cellpadding="0" align="center" class="T_gray12">
																								<tr>
																									<td width="113" class="T_gray12"><div align="center">1000</div>
																									</td>
																									<td width="110" class="T_gray12"><div align="center">1273</div>
																									</td>
																									<td width="122" class="T_gray12"><div align="center">38.941</div>
																									</td>
																									<td width="143" class="T_gray12"><div align="center">36.2560</div>
																									</td>
																									<td width="100" class="T_gray12"><div align="center">1.450</div>
																									</td>
																									<td width="121" class="T_gray12"><div align="center">1.350</div>
																									</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</th>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td class="T_gray12">&nbsp;&nbsp;&nbsp;<strong>* from figure 4:15 , page 108 , 
																					Industrial Gas Utilization Book</strong></td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td class="T_gray12">&nbsp;&nbsp;&nbsp; <strong>** 1 MJ/m3 (AT 15C 1.01325 bar) = 
																					26.856 BTU/SCF (AT 14.73 PSIA , 60F) </strong>
																			</td>
																		</tr>
																		<tr>
																			<th>
																				&nbsp;</th>
																		</tr>
																		<tr>
																			<td height="3" background="../images/information/l2.jpg"></td>
																		</tr>
																	</table>
																</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong><u>���ҧ��� 4</u></strong> ���ҧ�ʴ���� 
																	% Flue Loss ��� Stack Temperature ��ҧ�</td>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
															<tr>
																<th>
																	<table width="550" border="1" cellspacing="0" cellpadding="0" align="center" bordercolor="#55aaff">
																		<tr bgcolor="#008c8c">
																			<td height="25" colspan="9" bgcolor="#6cb6ff" class="T_white12"><div align="center"><strong>%flue 
																						loss</strong></div>
																			</td>
																		</tr>
																		<tr class="T_white12" bgcolor="#006666">
																			<td width="79" bgcolor="#99ccff"><div align="center"><strong>150</strong></div>
																			</td>
																			<td width="80" bgcolor="#99ccff"><div align="center"><strong>200</strong></div>
																			</td>
																			<td width="77" bgcolor="#99ccff"><div align="center"><strong>250</strong></div>
																			</td>
																			<td width="76" bgcolor="#99ccff"><div align="center"><strong>300</strong></div>
																			</td>
																			<td width="75" bgcolor="#99ccff"><div align="center"><strong>400</strong></div>
																			</td>
																			<td width="78" bgcolor="#99ccff"><div align="center"><strong>500</strong></div>
																			</td>
																			<td width="75" bgcolor="#99ccff"><div align="center"><strong>600</strong></div>
																			</td>
																			<td width="79" bgcolor="#99ccff"><div align="center"><strong>700</strong></div>
																			</td>
																			<td width="84" bgcolor="#99ccff"><div align="center"><strong>800</strong></div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">14.57546</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">16.70047</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">18.11715</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">20.95054</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">24.49220</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">28.03389</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">32.28393</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">37.24230</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">40.78399</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">15.07159</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">17.44468</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">19.02673</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">22.10816</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">26.06330</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">30.01844</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">34.76461</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">40.21911</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">44.17425</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">15.24457</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">17.70414</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">19.34385</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">22.51176</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">26.61104</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">30.71033</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">35.62947</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">41.25395</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">45.35623</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">15.43326</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">17.98718</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">19.68980</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">22.95205</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">27.20859</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">31.46512</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">36.57296</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">42.38914</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">46.64567</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">15.63993</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">18.29719</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">20.06869</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">23.43428</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">27.86304</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">32.29180</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">37.60630</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">43.62915</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">48.05791</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">15.86727</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">18.63819</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">20.48547</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">23.96473</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">28.58294</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">33.20114</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">38.74298</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">44.99316</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">49.61137</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">16.11853</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">19.01509</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">20.94613</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">24.55102</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">29.37861</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">34.20620</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">39.99931</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">46.50076</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">51.32835</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">16.39772</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">19.43387</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">21.45796</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">25.20245</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">30.26269</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">35.32294</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">41.39523</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">48.17587</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">53.23611</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">16.70975</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">19.90191</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">22.03002</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">25.93052</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">31.25079</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">36.57106</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">42.95538</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">50.04804</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">55.36831</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">17.06078</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">20.42846</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">22.67358</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">26.74960</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">32.36239</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">37.97519</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">44.71055</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">52.15424</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">57.76704</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">17.45862</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">21.02522</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">23.40295</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">27.67788</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">33.62221</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">39.56654</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">46.69973</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">54.54127</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">60.48560</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">17.91329</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">21.70722</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">24.23651</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">28.73878</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">35.06201</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">41.38523</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">48.97309</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">57.26930</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">63.59252</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">18.43791</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">22.49416</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">25.19832</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">29.96290</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">36.72331</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">43.48371</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">51.59620</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">60.41702</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">67.17743</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">19.04997</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">23.41221</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">26.32042</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">31.39103</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">38.66149</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">45.93194</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">54.65649</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">64.08937</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">71.35982</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">19.77331</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">24.49725</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">27.64655</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">33.07883</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">40.95207</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">48.82531</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">58.27319</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">68.42942</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">76.30266</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">20.64132</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">25.79927</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">29.23790</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">35.10419</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">43.70076</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">52.29734</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">62.61324</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">73.63747</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">82.23405</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">24.73336</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">31.93733</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">36.73998</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">44.65229</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">56.6589</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">68.66552</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">83.07346</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">98.18974</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">110.19640</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">27.00672</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">35.34737</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">40.90780</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">49.95679</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">63.85787</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">77.75895</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">94.44025</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">111.8299</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">125.73100</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">30.18942</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">40.12142</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">46.74275</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">57.38309</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">73.93642</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">90.48976</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">110.3538</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">130.9261</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">147.47940</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">34.96347</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">47.28250</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">55.49518</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">68.52255</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">89.05425</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">109.5860</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">134.2240</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">159.5704</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">180.10210</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">42.92023</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">59.21763</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">70.08256</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">87.08830</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">114.2506</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">141.4130</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">174.0078</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">207.3109</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">234.47320</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">58.83373</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">83.08789</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">99.25732</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">124.2198</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">164.6434</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">205.0670</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">253.5753</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">302.7919</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">343.21550</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">106.5742</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">154.6987</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">186.7816</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">235.6143</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">315.8217</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">396.0290</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">492.2779</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">589.235</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">669.44240</div>
																			</td>
																		</tr>
																		<tr>
																			<td width="79" class="T_gray12"><div align="center">477416.2</div>
																			</td>
																			<td width="80" class="T_gray12"><div align="center">716119.2</div>
																			</td>
																			<td width="77" class="T_gray12"><div align="center">875254.5</div>
																			</td>
																			<td width="76" class="T_gray12"><div align="center">1113958</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">1511796</div>
																			</td>
																			<td width="78" class="T_gray12"><div align="center">1909635</div>
																			</td>
																			<td width="75" class="T_gray12"><div align="center">2387041</div>
																			</td>
																			<td width="79" class="T_gray12"><div align="center">2864447</div>
																			</td>
																			<td width="84" class="T_gray12"><div align="center">3262285</div>
																			</td>
																		</tr>
																	</table>
																</th>
															</tr>
															<tr>
																<th>
																	&nbsp;</th>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<%end select %></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/footer.aspx" --></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</HTML>