var Area0Array =  new Array(
"('-')",
"('กรุงเทพฯ')");
var Area1Array =  new Array(
"('ตราด')",
"('ตราด')",
"('ปราจีนบุรี')",
"('นครนายก')",
"('สระแก้ว')",
"('ชลบุรี')",
"('ฉะเชิงเทรา')",
"('ระยอง')",
"('จันทบุรี')");
var Area2Array =  new Array(
"('นครราชสีมา')",
"('ชัยภูมิ')",
"('บุรีรัมย์')",
"('อุบลราชธานี')",
"('อำนาจเจริญ')",
"('ศรีษะเกษ')",
"('สุรินทร์')",
"('ยโสธร')");
var Area3Array =  new Array(
"('ขอนแก่น')",
"('มหาสารคาม')",
"('ร้อยเอ็ด')",
"('กาฬสินธุ์')",
"('อุดรธานี')",
"('หนองบัวลำภู')",
"('หนองคาย')",
"('เลย')",
"('สกลนคร')",
"('นครพนม')",
"('มุกดารหาร')");
var Area4Array =  new Array(
"('พิษณุโลก')",
"('สุโขทัย')",
"('อุตรดิตถ์')",
"('กำแพงเพชร')",
"('ตาก')",
"('นครสวรรค์')",
"('พิจิตร')",
"('เพชรบูรณ์')",
"('อุทัยธานี')",
"('ชัยนาท')");
var Area5Array =  new Array(
"('เชียงใหม่')",
"('ลำพูน')",
"('แม่ฮ่องสอน')",
"('เชียงราย')",
"('ลำปาง')",
"('พะเยา')",
"('แพร่')",
"('น่าน')");
var Area6Array =  new Array(
"('นครปฐม')",
"('สมุทรสาคร')",
"('สมุทรสงคราม')",
"('กาญจนบุรี')",
"('เพชรบุรี')",
"('ราชบุรี')",
"('ประจวบคีรีขันธ์')");
var Area7Array =  new Array(
"('สุราษฎร์ธานี')",
"('ชุมพร')",
"('ระนอง')",
"('ภูเก็ต')",
"('พังงา')",
"('นครศรีธรรมราช')",
"('ตรัง')",
"('กระบี่')");
var Area8Array =  new Array(
"('สงขลา')",
"('สตูล')",
"('พัทลุง')",
"('ยะลา')",
"('ปัตตานี')",
"('นราธิวาส')");
var Area9Array =  new Array(
"('อยุธยา')",
"('สระบุรี')",
"('ลพบุรี')",
"('สิงห์บุรี')",
"('อ่างทอง')",
"('สุพรรณบุรี')");
function populateProvince(inForm,selected) 
{
     var selectedArray = eval(selected + "Array");
	 while (selectedArray.length < inForm.sl_Province.options.length) 
	 {
	      inForm.sl_Province.options[(inForm.sl_Province.options.length - 1)] = null;
	 }
	 for (var i=0; i < selectedArray.length; i++) 
	 {
	      eval("inForm.sl_Province.options[i]=" + "new Option" + selectedArray[i]);
	 }
	 if (inForm.sl_Area.options[0].value == '') 
	 {
	      inForm.sl_Area.options[0]= null;
	 	  if ( navigator.appName == 'Netscape') 
		  {
	 	       if (parseInt(navigator.appVersion) < 4) 
			   {
	 	  	        window.history.go(0);
	 		   }
	 		   else 
			   {   	
	 		        if (navigator.platform == 'Win32' || navigator.platform == 'Win16') 
					{
	 				     window.history.go(0);
            		}
         	   }
          }
     }
}
function populateThailand(inForm,selected) {  
var stateArray =  new Array("('Select State','',true,true)",
     "('กรุงเทพฯ')",
	 "('ตราด')",
	 "('ตราด')",
	 "('ปราจีนบุรี')",
	 "('นครนายก')",
	 "('สระแก้ว')",
	 "('ชลบุรี')",
	 "('ฉะเชิงเทรา')",
	 "('ระยอง')",
	 "('จันทบุรี')",
	 "('นครราชสีมา')",
	 "('ชัยภูมิ')",
	 "('บุรีรัมย์')",
	 "('อุบลราชธานี')",
	 "('อำนาจเจริญ')",
	 "('ศรีษะเกษ')",
	 "('สุรินทร์')",
	 "('ยโสธร')",
	 "('ขอนแก่น')",
	 "('มหาสารคาม')",
	 "('ร้อยเอ็ด')",
	 "('กาฬสินธุ์')",
	 "('อุดรธานี')",
	 "('หนองบัวลำภู')",
	 "('หนองคาย')",
	 "('เลย')",
	 "('สกลนคร')",
	 "('นครพนม')",
	 "('มุกดารหาร')",
	 "('พิษณุโลก')",
	 "('สุโขทัย')",
	 "('อุตรดิตถ์')",
	 "('กำแพงเพชร')",
	 "('ตาก')",
	 "('นครสวรรค์')",
	 "('พิจิตร')",
	 "('เพชรบูรณ์')",
	 "('อุทัยธานี')",
	 "('ชัยนาท')",
	 "('เชียงใหม่')",
	 "('ลำพูน')",
	 "('แม่ฮ่องสอน')",
	 "('เชียงราย')",
	 "('ลำปาง')",
	 "('พะเยา')",
	 "('แพร่')",
	 "('น่าน')",
	 "('นครปฐม')",
	 "('สมุทรสาคร')",
	 "('สมุทรสงคราม')",
	 "('กาญจนบุรี')",
	 "('เพชรบุรี')",
	 "('ราชบุรี')",
	 "('ประจวบคีรีขันธ์')",
	 "('สุราษฎร์ธานี')",
	 "('ชุมพร')",
	 "('ระนอง')",
	 "('ภูเก็ต')",
	 "('พังงา')",
	 "('นครศรีธรรมราช')",
	 "('ตรัง')",
	 "('กระบี่')",
	 "('สงขลา')",
	 "('สตูล')",
	 "('พัทลุง')",
	 "('ยะลา')",
	 "('ปัตตานี')",
	 "('นราธิวาส')",
	 "('อยุธยา')",
	 "('สระบุรี')",
	 "('ลพบุรี')",
	 "('สิงห์บุรี')",
	 "('อ่างทอง')",
	 "('สุพรรณบุรี')");
	  if (selected == 'USA') 
     {
	      for (var i=0; i < stateArray.length; i++)
		   {
	 	       eval("inForm.sl_Province.options[i]=" + "new Option" + stateArray[i]);
	 	  }
	 	  if ( navigator.appName == 'Netscape') 
	 	  {
	           if (parseInt(navigator.appVersion) < 4)
		  	   {
	 	            window.history.go(0)
	 	  	   }
	 	  	   else 
		  	   {    	
   		            if (navigator.platform == 'Win32' || navigator.platform == 'Win16') 
		  	   		{
		                 window.history.go(0)
          	   		}
      	       }
      	  }
     }
	 else 
	 {
     }  
     if (selected == 'Other') 
	 {
          newProvince = "";
		  while (newProvince == "")
		  {
		       newProvince=prompt ("Please enter the name of your country.", "");
		  }
		  if (newProvince != null) 
		  {
		       inForm.sl_Province.options[(inForm.sl_Province.options.length-1)]=new Option(newProvince,newProvince,true,true);
			   inForm.sl_Province.options[inForm.sl_Province.options.length]=new Option('Other, not listed','Other');
   		  }
     }
     if(inForm.sl_Province.options[0].text == 'Select Province') 
	 {
	      inForm.sl_Province.options[0]= null;
     }
}

