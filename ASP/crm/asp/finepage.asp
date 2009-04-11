<% 
	if pageno="" then
		pageno=1
	end if

	totalpage=total\pagesize
	if total mod pagesize <> "0" then
		totalpage=totalpage+1
	end if

	if int(pageno)=int(totalpage) and (total mod pagesize)<>0 then
		endrow = (total mod pagesize)
	else
		endrow = pagesize
	end if
%>
