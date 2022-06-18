function id_search() { 
	 	var frm = document.idfindscreen;
			console.log(frm);
	 	if (frm.name.value.length < 1) {
		  alert("이름을 입력해주세요");
		  return;
		 }

		 if (frm.tel.value.length != 13) {
			  alert("휴대폰번호를 정확하게 입력해주세요");
			  return;
		 }

	 frm.method = "post";
	 frm.action = "findIdResult.do"; //넘어간화면
	 frm.submit();
	 }
	 
	 
function pw_search(){

  var frm=document.pwfindscreen;

  if(frm.id.value.length<3){
   alert("아이디를 올바르게 입력해주세요");
   return;
  }

   if (frm.tel.value.length != 13) {
			  alert("휴대폰번호를 정확하게 입력해주세요");
			  return;
		 }
	
  frm.method="post";
  frm.action="findPwResult.do"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
  }
  
  