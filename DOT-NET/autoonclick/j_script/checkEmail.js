function check_email(e) {
	ok = "1234567890qwertyuiop[]asdfghjklzxcvbnm.@-_QWERTYUIOPASDFGHJKLZXCVBNM";

	for(i=0; i < e.length ;i++){
		if(ok.indexOf(e.charAt(i))<0){ 
		return (false);
		}	
	} 

	if (document.images) {
		re = /(@.*@)|(\.\.)|(^\.)|(^@)|(@$)|(\.$)|(@\.)/;
		re_two = /^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if (!e.match(re) && e.match(re_two)) {
			return (-1);		
		} 
	}
}

function doValidateEmail(em,varname){
				var objTXT = document.getElementById(varname);
				
				if(!check_email(em)){
					objTXT.style.borderColor = "#ff9966";
					objTXT.style.backgroundColor = "#ffff99";
					//alert('ระบุ Email ไม่ถูกต้อง');
				}else{
					objTXT.style.borderColor = "#ffffff";
					objTXT.style.backgroundColor = "#ffffff";
				}
			}