function get_radio_value()
{
		var rad_val= -1;
			if(document.form1.bankList.length=='undefined'){
				if(document.form1.bankList.checked){
					rad_val = document.form1.bankList.value;
				}
			}else{
				for (var i=0; i < document.form1.bankList.length; i++)
				{
				
				if (document.form1.bankList[i].checked)
					{
					rad_val = document.form1.bankList[i].value;
					}
				}
			}
			
		return rad_val;
}