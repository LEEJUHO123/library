
function pwCheckToMemberExit() {
	let pswd = $("#pswd").val();

	if (pswd == "") {
		alert("비밀번호를 입력해주세요.");
	} else {
		$.ajax({
			url: "checkMemberExit.do",
			type: "get",
			data: {
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
			url: "checkPw.do",
			type: "get",
			data: {
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

function changePwCheck() {
	let pswd = $("#pswd").val();
	let pswdCheck = $("#pswdCheck").val();

	if (pswd == "") {
		alert("비밀번호를 입력해주세요.")
	} else if (pswdCheck == "") {
		alert("비밀번호 확인을 입력해주세요.")
	} else {
		if (pswd == pswdCheck) {
			$.ajax({
				url: "changePw.do",
				type: "get",
				data: {
					"pswd": pswd
				},
				success: function(data) {
					if (data == "1") {
						alert("비밀번호 수정 완료");
						window.location.href = 'myInfo.do';
					} else {
						alert("알 수 없는 오류로 인해 수정에 실패했습니다.")
					}
				}
			})
		} else {
			alert("비밀번호가 같지 않습니다.");
		}
	}

}

function checkPwForMyInfo() {
	let pswd = $("#pswd").val();
	if (pswd == "") {
		alert("비밀번호를 입력해주세요.");
	} else {
		$.ajax({
			url: "checkPwForMyInfo.do",
			type: "get",
			data: {
				"pswd": pswd
			},
			success: function(data) {
				if (data == "1") {
					alert("확인 성공");
					window.location.href = 'changeMyInfoForm.do';
				} else if (data == "2") {
					alert("비밀번호가 틀렸습니다. 다시 입력해주세요.")
				}
			}
		})
	}
}

function execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			var roadAddr = data.roadAddress;
			var extraRoadAddr = '';

			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			}
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}

			document.getElementById("postCode").value = data.zonecode;
			document.getElementById("roadAddress").value = roadAddr;
			document.getElementById("jibunAddress").value = data.jibunAddress;
			return close();

			if (roadAddr !== '') {
				document.getElementById("sample4_extraAddress").value = extraRoadAddr;
			} else {
				document.getElementById("sample4_extraAddress").value = '';
			}

			var guideTextBox = document.getElementById("guide");
			if (data.autoRoadAddress) {
				var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
				guideTextBox.style.display = 'block';

			} else if (data.autoJibunAddress) {
				var expJibunAddr = data.autoJibunAddress;
				guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				guideTextBox.style.display = 'block';
			} else {
				guideTextBox.innerHTML = '';
				guideTextBox.style.display = 'none';
			}
		}
	}).open();
}


function modifyMyInfo() {
	let tel = $("#tel").val();
	let postCode = $("#postCode").val();
	let roadAddress = $("#roadAddress").val();
	let jibunAddress = $("#jibunAddress").val();
	let detailAddress = $("#detailAddress").val();
	console.log(tel);
	console.log(postCode);
	console.log(roadAddress);
	
	if (tel == "") {
		alert("전화번호를 입력해주세요");
	} else {
		if (postCode == "") {
			alert("주소찾기를 이용해 우편번호를 등록해주세요.")
		} else {
			if (roadAddress == "") {
				alert("주소를 입력해주세요.")
			} else {
				$.ajax({
					url: "changeMyInfo.do",
					type: "get",
					data: {
						"tel": tel,
						"postCode": postCode,
						"roadAddress": roadAddress,
						"jibunAddress": jibunAddress,
						"detailAddress": detailAddress
					},
					success: function(data) {
						if (data == "1") {
							alert("회원 정보를 성공적으로 변경했습니다.");
							window.location.href = 'myInfo.do';
						} else if (data == "2") {
							alert("알 수 없는 오류로 인해 수정에 실패했습니다.")
						}
					}
				})

			}
		}

	}

}
