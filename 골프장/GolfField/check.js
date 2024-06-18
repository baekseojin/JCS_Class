function joinCheck()
{
	if(frm.month.value.length==0)
	{
		alert("수강월이 입력되지 않았습니다.");
		frm.month.focus();
		return false;
	}
	if(frm.cno.value.length==0)
	{
		alert("회원명이 입력되지 않았습니다.");
		frm.cno.focus();
		return false;
	}
	if(frm.number.value.length==0)
	{
		alert("회원번호가 입력되지 않았습니다.");
		frm.number.focus();
		return false;
	}
	if(frm.place.value.length==0)
	{
		alert("강의장소가 입력되지 않았습니다.");
		frm.place.focus();
		return false;
	}
	if(frm.lecturer.value.length==0)
	{
		alert("강의명이 입력되지 않았습니다.");
		frm.lecturer.focus();
		return false;
	}
	if(frm.money.value.length==0)
	{
		alert("수강료가 입력되지 않았습니다.");
		frm.money.focus();
		return false;
	}
	
	alert("수강신청이 정상적으로 완료되었습니다!");
	document.frm.submit();
	return true;
}
function get(cno)
{
	frm.number.value=cno;
	ccno=cno;
}
function make(lecturer)
{
		if(ccno>=20000)
		{
			frm.money.value=lecturer*1000/2;
		}
		else
		{
			frm.money.value=lecturer*1000;
		}
}
function res()
{
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
	frm.month.focus();
}
