function callFunction() {

}

function bookSearch() {
	let key = $("#select").val();
	let val = $("#keyword").val();

	$.ajax({
		url: "bookSearch.do",
		type: "POST",
		datatype: "json",
		data: {
			"key": key,
			"keyword": val
		},
		success: function(data) {
			window.location.href = 'books.do';
			$.each(data, function(index, item) {
				console.log(item.writer);
			});
		}, error: function() {
			alert("시스템 에러로 불러오지 못했습니다.");
		}
	})
}

/*function htmlConvert(data) {
	$("#productitem").remove();
	let div = $("<div/>");
	$.each(data, function(index, item) {
		let app = $("<div/>").append(

		);
		div.append(app);
	});
	$("#row").append(div);
}*/