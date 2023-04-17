function joinCheck()
{
	if(frm.id.value.length==0)
	{
		alert("참가자 번호가 입력되지 않았습니다.");
		frm.id.focus();
		return false;
	}
	if(frm.name.value.length==0)
	{
		alert("참가자명이 입력되지 않았습니다.");
		frm.name.focus();
		return false;
	}
	if(frm.ybirth.value.length==0)
	{
		alert("생년월일이 입력되지 않았습니다.");
		frm.ybirth.focus();
		return false;
	}
	if(frm.mbirth.value.length==0)
	{
		alert("생년월일이 입력되지 않았습니다.");
		frm.mbirth.focus();
		return false;
	}
	if(frm.dbirth.value.length==0)
	{
		alert("생년월일이 입력되지 않았습니다.");
		frm.dbirth.focus();
		return false;
	}
	if(frm.gender[0].checked==false && frm.gender[1].checked==false)
	{
		alert("성별이 선택되지 않았습니다.");
		frm.gender.focus();
		return false;
	}
	if(frm.talent.value=="")
	{
		alert("특기가 선택되지 않았습니다.");
		frm.talent.focus();
		return false;
	}
	if(frm.agency.value.length==0)
	{
		alert("소속사가 입력되지 않았습니다.");
		frm.agency.focus();
		return false;
	}
	alert("참가신청이 완료되었습니다");
	document.frm.submit();
	return true;
}
function Reset()
{
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
	