
function pwCheckToMemberExit() {
	let pswd = $("#pswd").val();

	if (pswd == "") {
		alert("비밀번호를 입력해주세요.");
	} else {
		$.ajax({
			url : "checkMemberExit.do",
			type : "get",
			data : {
				"pswd": pswd
			},
			success: function(data) {
				if (data == "1") {
					alert("정상적으로 탈퇴되었습니다.");
					window.location.href = 'home.do';
				} else if (data == "2") {
					alert("알 수 없는 오류로 인해 탈퇴에 실패했습니다.")
				} else if (data == "3") {
					alert("비밀번호가 틀립니다.");
				}
			}
		})
	}
}

function checkPw() {
	let pswd = $("#pswd").val();
	if (pswd == "") {
		alert("비밀번호를 입력해주세요.");
	} else {
		$.ajax({
			url : "checkPw.do",
			type : "get",
			data : {
				"pswd": pswd
			},
			success: function(data) {
				if (data == "1") {
					alert("확인 성공");
					window.location.href = 'changePwForm.do';
				} else if (data == "2") {
					alert("비밀번호가 틀렸습니다. 다시 입력해주세요.")
				}
			}
		})
	}
}

function changePwCheck(){
	let pswd = $("#pswd").val();
	let pswdCheck = $("#pswdCheck").val();
	
	if (pswd == ""){
		alert("비밀번호를 입력해주세요.")
	}else if(pswdCheck == ""){
		alert("비밀번호 확인을 입력해주세요.")
	}else{
		if(pswd == pswdCheck){
			$.ajax({
				url : "changePw.do",
				type : "get",
				data : {
					"pswd" : pswd
				},
				success : function(data){
					if (data == "1"){
						alert("비밀번호 수정 완료");
						window.location.href = 'myInfo.do';
					}else{
						alert("알 수 없는 오류로 인해 수정에 실패했습니다.")
					}
				}
			})
		}else{
			alert("비밀번호가 같지 않습니다.");
		}
	}
	
}