$(function() {

	$("#io_dcode").keypress(function(e) {
		if (e.keyCode == 13) {

			// 현재까지 거래처코드 input box에 입력된 값을 추출
			let strText = $(this).val()
			let query = rootPath
			query += "/dept/search?strText=" + strText

			let status = "toolbar=no,"
			status += "scrollbars=yes,"
			status += "resizable=no,"
			status += "top=200,"
			status += "left=200,"
			status += "width=400,"
			status += "height=400,"

			window.open(query, "_blank",status)
		}
	})

	/*
	 * 입력 box에 키보드로 뭔가를 입력할때마바 발생하는 이벤트 키보드 이벤트 keydown 키보드를 누르는 순간 발생 keypress
	 * 글자가 입력이 되어서 컴퓨터로 입력되는 순간 어떤 글자가 입력되었는가를 확인하기 위한 이벤트 keyup 키보드에서 손을 떼는 순간
	 */

	$("#io_pcode").keypress(function(event) {
		// 키보드에서 어떤 문자를 입력하면 event의 keyCode라는 속성에 문자 ASCII 코드값이 저장되어 전달된다
		if (event.keyCode == 13) {
			let str = $(this).val()
			let query = rootPath
			query += "/product/search?strText=" + str

			let status = "toolbar=no,"
			status += "scrollbars=yes,"
			status += "resizable=no,"
			status += "top=300,"
			status += "left=500,"
			status += "width=700,"
			status += "height=500"

			window.open(query, "_blank", status)

		}
	})
})