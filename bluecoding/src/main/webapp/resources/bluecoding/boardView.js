/**
 * 
 */

function fn_enable(obj) {
	document.getElementById("qnaContent").disabled = false;
	document.getElementById("i_title").disabled = false;
	document.getElementById("tr_btn_modify").style.display = "block";
	document.getElementById("tr_btn_one").style.display = "none";
	document.getElementById("tr_btn_two").style.display = "none";
	document.getElementById("tr_btn_three").style.display = "none";
}

function fn_modify_article(obj) {
	obj.action = "${contextPath}/board/modArticle.do";
	obj.submit();

}

function deleteConfirm(id) {
	var alter = confirm("Are you sure to delete " + id + "?");

	if (alter == true) {
		//삭제서블릿으로 이동
		location.href = url + '?articleNO=' + articleNO;

	} else {
		// 다시 리스트로
		location.href = 'list';
	}
}

function funbtn() {
	if (confirm("이전 페이지로 돌아가시겠습니까??")) {
		javascript: history.back();
	} else {
		return;
	}
}

function funok() {
	if (confirm("글을 정말 삭제하시겠습니까??")) {
		alert("정상적으로 삭제되었습니다.")
	} else {
		return;
	}
}