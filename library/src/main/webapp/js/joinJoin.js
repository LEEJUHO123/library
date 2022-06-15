function checkValue() { 
	 	var form = document.userInfo;
			
	 	if (!form.id.value){
		  alert("아이디를 입력해주세요");
		  return false;
		 }

		 if (form.idDuplication.value != "idCheck"){
			  alert("아이디 중복체크를 해주세요");
			  return false;
		 }

	 	if(!form.password.value){
		alert("비밀번호를 입력하세요");
		return false;
	}
	
	if(form.password.value != form.passwordcheck.value){
		alert("비밀번호를 동일하게 입력하세요")
		return false;
	}
	
	if(!form.name.value){}
	alert("이름을 입력하세요");
	return false;
	
	}
	
	if(!form.tel.value){
		alert("휴대폰번호를 입력하세요")
		return false;
	}
	
	if(!form.address.value){
		alert("주소를 입력하세요")
		return false;
	}
	
	  function openIdChk(){                    
	window.name = "parentForm";            
	window.open("member/IdCheckForm.jsp",                   
				"chkForm", "width=500, height=300, resizable = no, scrollbars = no");   
				         
				}
				
 function inputIdChk(){     
 document.userInfo.idDuplication.value ="idUncheck";        
}
