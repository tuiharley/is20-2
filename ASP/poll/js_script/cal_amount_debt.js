
//คำนวนรายการที่1
function sl_Description1_onchange()
    {
        with (document.f_Debt)
            {
                it_Price1.value = arr_index1[sl_Description1.selectedIndex];
		cal_amount1();
		it_Qty1.value=1;
		it_Qty1.focus();  
		it_Qty1.select();
	    } 
    }
function cal_amount1()
    {
        with (document.f_Debt)
            {
		if (it_Price1.value !="" && it_Qty1.value != "")
		    {
   			it_Amount1.value = it_Qty1.value * (it_Price1.value);
		    }
		else
		    {
			it_Amount1.value = "";
			it_Qty1.value = "";
		    }
	    }
    }


//คำนวนรายการที่2
function sl_Description2_onchange()
    {
        with (document.f_Debt)
            {
                it_Price2.value = arr_index[sl_Description2.selectedIndex]-arr_reduce[sl_Description2.selectedIndex];
		cal_amount2();
		it_Qty2.value=1;
		it_Qty2.focus();  
		it_Qty2.select();
	    } 
    }
function cal_amount2()
    {
        with (document.f_Debt)
            {
		if (it_Price2.value !="" && it_Qty2.value != "")
		    {
   			it_Amount2.value = it_Qty2.value * (it_Price2.value);
		    }
		else
		    {
			it_Amount2.value = "";
			it_Qty2.value = "";
		    }
	    }
    }


	