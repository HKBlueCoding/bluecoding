<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>커뮤니티 상세 보기</title>
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <meta name="description" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />      
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= ClassiGrids CSS HERE ========================= -->
      <link rel="stylesheet"
         href="../../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet"
         href="../../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet"
         href="../../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../../resources/assets/css/main.css" />
      <!-- SBAdmin2 CSS START -->
      <!-- Custom fonts for this template -->
      <link
         href="../../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css"
         rel="stylesheet" type="text/css">
      <link
         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
         rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="../../resources/sbadmin2/css/sb-admin-2.min.css"
         rel="stylesheet">
      <!-- Custom styles for this page -->
      <link
         href="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css"
         rel="stylesheet">
      <!-- SBAdmin2 CSS END -->
      <!--     Fonts and icons     -->
      <link rel="stylesheet" type="text/css"
         href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
      <!-- Nucleo Icons -->
      <link href="../../resources/assets/css/nucleo-icons.css"
         rel="stylesheet" />
      <link href="../../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
      <!-- Font Awesome Icons -->
      <script src="https://kit.fontawesome.com/42d5adcbca.js"
         crossorigin="anonymous"></script>
      <!-- Material Icons -->
      <link
         href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
         rel="stylesheet">
      <!-- CSS Files -->
      <link id="pagestyle"
         href="../../resources/assets/css/material-dashboard.css?v=3.0.0"
         rel="stylesheet" />
      <!-- marerial CSS END -->
      <!-- ====================== 페이징 ====================== -->
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <!-- ====================== 페이징 끝 ====================== -->
      <link
         href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
         rel="stylesheet" />
      <style>
         body {
         	background-image: url(../../resources/assets/images/here/noticeBG.jpg);
         }
         
         #tbPadd {
         	padding-left: 1.5rem;
         	padding-right: 1.5rem;
         }
         
         .mod {
         	display: none;
         }
         
         .replyRe {
         	display: none;
         }
         
         .text_div {
         	margin-right: 50px;
			word-wrap: break-word; 
		 }
		 
		 #info_span_01{
		 	margin-left: 300px;
		 }
		 
		 #info_span_02{
		 	margin-left: 50px;
		 }
         
         @media all and (max-width: 350px){
         	.board_button2 {
         		margin-top: 1em;
         	}
         }
         
         @media all and (max-width: 450px){
		     .board_button3 {
		     	margin-top: 1em;
		     }
         }         
      </style>
      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
              integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
              crossorigin="anonymous"></script>
   </head>
   <body>
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <input type="hidden" name="articleNO" value="${boardVO.articleNO }"
         id="articleNO">
      <c:choose>
         <c:when test="${empty boardVO }">
            <tr>
               <td>null입니다.</td>
            </tr>
         </c:when>
         <c:when test="${!empty boardVO }">
            <div class="container-fluid py-4" style="height: auto; width: 60%;">
               <div class="row">
                  <div class="col-12">
                     <!-- Main Content-->
                     <main class="mb-4" style="width: 100%; padding: 1px;">
                        <div style="width: 100%; padding: 1px;">
                           <div style="width: 100%; padding: 1px;">
                              <div style="width: 100%; padding: 1px;">
                                 <p id="title" style="font-size: 40px;">커뮤니티 상세 보기</p>
                                 <hr class="my-4" style="width: 70%;">
                                 <p id="title2" style="font-size: 30px;">[제목]<br>&nbsp;${boardVO.boardTitle }</p>
                              </div>
                           </div>
                        </div>
                     </main>
                     <div class="card my-4">
                        <div id="tbPadd" class="card-body px-0 pb-2">
                           <div class="table-responsive p-0">
                              <table class="table align-items-center mb-0">
                                 <thead>
                                    <tr>
                                       <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                          작성자: ${boardVO.nick } <span id="info_span_01">작성일: ${boardVO.boardDate }</span><span id="info_span_02">조회수: ${boardVO.bdViewCnt }</span>
                                       </th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>
                                          <div class="d-flex px-2 py-1 text_div" >
                                             <div class="text_div">
                                                <c:if test="${empty boardVO.boardImage }">
                                                   <img
                                                      src="../../resources/assets/images/mainPage/board1.png"
                                                      width="400" height="200"
                                                      class="avatar avatar-sm me-3 border-radius-lg"
                                                      alt="user1" style="float: left">${boardVO.boardText }
                                                </c:if>
                                                <c:if test="${!empty boardVO.boardImage }">
                                                   <img
                                                      src="../../download?uploadFile=${boardVO.boardImage }&inFolder=board&pk=${boardVO.articleNO}"
                                                      width="400" height="200"
                                                      class="avatar avatar-sm me-3 border-radius-lg"
                                                      alt="user1" style="float: left">${boardVO.boardText }
                                                </c:if>
                                             </div>
                                          </div>
                                       </td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- ======================= 버튼 ========================== -->
               <div align="right" style="width: 100%;">
                  <c:if test="${login.admin eq 'A' || boardVO.id eq login.id}">
                     <div class="button header-button board_button">
                        <a href="../board/update?articleNO=${boardVO.articleNO }"
                           class="btn">수정</a>
                     </div>
                     <div class="button header-button board_button2">
                        <a onclick="del('${boardVO.articleNO }')" class="btn">삭제</a>
                     </div>
                  </c:if>
               </div>
               <!-- ======================= 버튼 끝 ========================== -->
            </div>
            <!-- =========================== 댓글 =========================== -->
            <div class="container-fluid py-4" style="height: auto; width: 60%;">
               <hr class="my-4" style="width: 100%;">
               <div class="row">
                  <div class="col-12">
                     <div class="card my-4">
                        <div
                           class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                           <div
                              class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                              <h6 class="text-white text-capitalize ps-3">댓글</h6>
                           </div>
                        </div>
                        <c:forEach var="boardReply" items="${boardReplyVO }"
                           varStatus="replyCnt">
                           <div id="tbPadd" class="card-body px-0 pb-2">
                              <div class="table-responsive p-0">
                                 <table class="table align-items-center mb-0">
                                    <tbody>
                                       <tr>
                                          <td>
                                             <c:if test='${boardReply.level > 1 }'>
                                                <div class="d-flex px-2 py-1">
                                                   <div class="d-flex flex-column justify-content-center">
                                                   		<c:if test="${boardReply.boardReDelete eq 'Y'}">
                                                         <strike>&nbsp;&nbsp;[삭제된 게시글입니다]</strike>
                                                         </c:if>
                                                         <c:if test="${boardReply.boardReDelete ne 'Y'}">
                                                      <p class="text-xs text-secondary mb-0"
                                                         style="font-size: 15px;">
                                                         <c:forEach begin="1" end="${boardReply.level }"
                                                            step="1">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                                         </c:forEach>
                                                         ⤷작성자명 : ${boardReply.nick }(${boardReply.id }),&nbsp;&nbsp;&nbsp;&nbsp;${boardReply.boardReDate }
                                                      </p>
                                                      <p class="text-xs text-secondary mb-0">
                                                      <p>   
                                                         <c:forEach begin="1" end="${boardReply.level }"
                                                            step="1">
                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                         </c:forEach>  
                                                      &nbsp;&nbsp;${boardReply.boardReText}</p>
                                                      </c:if>
                                                   </div>
                                                </div>
                                             </c:if>
                                             <c:if test="${boardReply.level == 1 }">
                                                <div class="d-flex px-2 py-1">
                                                   <div class="d-flex flex-column justify-content-center">
                                                      <c:if test="${boardReply.boardReDelete eq 'Y'}">
                                                         <strike>[삭제된 게시글입니다]</strike>
                                                      </c:if>
                                                      <c:if test="${boardReply.boardReDelete ne 'Y'}">
                                                      <p class="text-xs text-secondary mb-0"
                                                         style="font-size: 15px;">작성자명 : ${boardReply.nick }(${boardReply.id }),&nbsp;&nbsp;&nbsp;&nbsp;${boardReply.boardReDate }
                                                      </p>            
                                                         <p>${boardReply.boardReText }</p>
                                                      </c:if>
                                                   </div>
                                                </div>
                                             </c:if>
                                          </td>
                                          <!-- ======================= 버튼 ========================== -->
                                          <td>
                                             <div align="right" style="width: 100%;">
                                                <!-- [로그인 시] -->
                                                <c:if
                                                   test="${ !empty login.id && login.id ne '' && boardReply.boardReDelete ne 'Y'}">
                                                   <div class="button header-button">
                                                     <c:if test="${boardReply.level ne '4' }">
                                                      <button onClick="replyReClick('${replyCnt.count}')"
                                                         id="modify" class="btn"
                                                         style="background-color: #30d8e0;">답글</button>
                                                      </c:if>
                                                   	 <c:if test="${boardReply.level eq '4' }">
                                                      <button onClick="alert('답글은 최대 3개 까지입니다.');"
                                                         class="btn"
                                                         style="background-color: #30d8e0;">답글</button>                                                   	  
                                                     </c:if>
                                                   </div>
                                                </c:if>
                                                <!-- [비로그인 시] -->
                                                <c:if test="${empty login.id && login.id ne '' && boardReply.boardReDelete ne 'Y'}">
                                                   <div class="button header-button">
                                                      <a data-bs-toggle="modal" data-bs-target="#login"
                                                         class="btn" style="background-color: #30d8e0;">답글</a>
                                                   </div>
                                                </c:if>
                                                <c:if test="${login.admin eq 'A' || login.admin eq 'C' || !empty login.id && login.id ne '' }">
                                                   <c:choose>
                                                      <c:when test="${boardReply.boardReDelete ne 'Y' }">
                                                         <div class="button header-button">
                                                            <button onClick="replyClick('${replyCnt.count}')"
                                                               id="modify" class="btn"
                                                               style="background-color: #30d8e0;">수정</button>
                                                         </div>
                                                         <div class="button header-button">
                                                            <a onClick="delReply('${boardReply.replyNO}')"
                                                               class="btn" style="background-color: #30d8e0;">삭제</a>
                                                         </div>
                                                      </c:when>
                                                      <c:otherwise>
                                                         <div></div>
                                                      </c:otherwise>
                                                   </c:choose>
                                                </c:if>
                                             </div>
                                             <!-- ======================= 버튼 끝 ========================== -->
                                          </td>
                                       </tr>
                                       <!-- =========================== 댓글 끝 =========================== -->
                                       <!-- =========================== 댓글 수정 =========================== -->
                                       <tr class="mod">
                                          <c:if test='${boardReply.level == 1 }'>
                                             <td>
                                                <div class="form-floating" id="formMag"
                                                   style="width: 607%;">
                                                   <textarea name="boardReText" class="form-control"
                                                      id="ReText${replyCnt.count }" style="height: 7rem;"
                                                      data-sb-validations="required">${boardReply.boardReText }</textarea>
                                                   <br> <label for="message">댓글 수정</label> <input
                                                      type="hidden" value="${boardReply.replyNO }"
                                                      id="replyNO${replyCnt.count }"> <input
                                                      type="hidden" value="${login.id }" name="id" id="id">
                                                   <input type="hidden" value="${login.nick }" name="nick"
                                                      id="nick">
                                                   <!-- ======================= 버튼 ========================== -->
                                                   <div align="center">
                                                      <!-- [로그인시] -->
                                                      <c:if test="${!empty login.id && login.id ne '' }">
                                                         <div class="button header-button">
                                                            <a id="modBtn"
                                                               onClick="replyDone('${boardReply.replyNO}','${replyCnt.count }')"
                                                               class="btn">확인</a>
                                                         </div>
                                                      </c:if>
                                                      <!-- [비 로그인시]] -->
                                                      <c:if test="${empty login.id || login.id  eq '' }">
                                                         <div class="button header-button">
                                                            <a data-bs-toggle="modal" data-bs-target="#login"
                                                               class="btn">확인</a>
                                                         </div>
                                                      </c:if>
                                                   </div>
                                                </div>
                                             </td>
                                          </c:if>
                                          <c:if test='${boardReply.level > 1 }'>
                                             <td>
                                                <div class="form-floating" id="formMag"
                                                   style="width: 607%;">
                                                   <textarea name="boardReText" class="form-control"
                                                      id="ReText${replyCnt.count }" style="height: 7rem;"
                                                      data-sb-validations="required">${boardReply.boardReText }</textarea>
                                                   <br> <label for="message">답글 수정</label> <input
                                                      type="hidden" value="${boardReply.replyNO }"
                                                      id="replyNO${replyCnt.count }"> <input
                                                      type="hidden" value="${login.id }" name="id" id="id">
                                                   <input type="hidden" value="${login.nick }" name="nick"
                                                      id="nick">
                                                   <!-- ======================= 버튼 ========================== -->
                                                   <div align="center">
                                                      <!-- [로그인시] -->
                                                      <c:if test="${!empty login.id && login.id ne '' }">
                                                         <div class="button header-button">
                                                            <a id="modBtn"
                                                               onClick="replyReDone('${boardReply.reParentNO}','${replyCnt.count }')"
                                                               class="btn">확인</a>
                                                         </div>
                                                      </c:if>
                                                      <!-- [비 로그인시]] -->
                                                      <c:if test="${empty login.id || login.id  eq '' }">
                                                         <div class="button header-button">
                                                            <a data-bs-toggle="modal" data-bs-target="#login"
                                                               class="btn">확인</a>
                                                         </div>
                                                      </c:if>
                                                   </div>
                                                </div>
                                             </td>
                                          </c:if>
                                       </tr>
                                       <!-- =========================== 댓글 수정 끝 =========================== -->
                                       <!-- ========================== 답글 ========================== -->
                                       <tr class="replyRe">
                                          <td>
                                             <div class="form-floating" id="formMag"
                                                style="width: 607%;">
                                                <textarea name="boardReText" class="form-control"
                                                   id="RepReText${replyCnt.count }" style="height: 7rem;"
                                                   data-sb-validations="required"></textarea>
                                                <br> <label for="message">답글 쓰기</label> <input
                                                   type="hidden" value="${login.id }" name="id" id="id">
                                                <input type="hidden" value="${login.nick }" name="nick"
                                                   id="nick">
                                                <!-- ======================= 버튼 ========================== -->
                                                <div align="center">
                                                   <!-- [로그인시] -->
                                                   <c:if test="${!empty login.id && login.id ne '' }">
                                                      <div class="button header-button">
                                                         <a id="repReBtn"
                                                            onClick="replyInsert('${boardReply.replyNO}','${replyCnt.count }')"
                                                            class="btn">확인</a>
                                                      </div>
                                                   </c:if>
                                                   <!-- [비 로그인시]] -->
                                                   <c:if test="${empty login.id || login.id  eq '' }">
                                                      <div class="button header-button">
                                                         <a data-bs-toggle="modal" data-bs-target="#login"
                                                            class="btn">확인</a>
                                                      </div>
                                                   </c:if>
                                                </div>
                                             </div>
                                          </td>
                                       </tr>
                                       <!-- ========================== 답글 끝 ========================== -->
                                    </tbody>
                                 </table>
                              </div>
                           </div>
                        </c:forEach>
                     </div>
                  </div>
               </div>
               <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                  <br>
                  <div class="form-floating" id="formMag">
                     <textarea name="boardReText" class="form-control" id="boardReText"
                        style="height: 15rem" data-sb-validations="required"></textarea>
                     <div class="invalid-feedback" data-sb-feedback="message:required">내용을
                        입력하세요.
                     </div>
                     <br> <br> <label for="message">댓글 쓰기</label> <input
                        type="hidden" name="articleNO" value="${boardVO.articleNO }"
                        id="articleNO"> <input type="hidden" value="${login.id }"
                        name="id" id="id"> <input type="hidden"
                        value="${login.nick }" name="nick" id="nick">
                  </div>
                  <!-- Submit success message-->
                  <!---->
                  <!-- This is what your users will see when the form-->
                  <!-- has successfully submitted-->
                  <div class="d-none" id="submitSuccessMessage">
                     <div class="text-center mb-3">
                        <div class="fw-bolder">Form submission successful!</div>
                        To activate this form, sign up at <br /> <a
                           href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                     </div>
                  </div>
                  <!-- Submit error message-->
                  <!---->
                  <!-- This is what your users will see when there is-->
                  <!-- an error submitting the form-->
                  <div class="d-none" id="submitErrorMessage">
                     <div class="text-center text-danger mb-3">Error sending
                        message!
                     </div>
                  </div>
                  <!-- ======================= 버튼 ========================== -->
                  <div align="center">
                     <!-- [로그인시] -->
                     <c:if test="${!empty login.id && login.id ne '' }">
                        <div class="button header-button">
                           <a id="repBtn" onClick="" class="btn">댓글 등록</a>
                        </div>
                     </c:if>
                     <!-- [비 로그인시]] -->
                     <c:if test="${empty login.id || login.id  eq '' }">
                        <div class="button header-button">
                           <a data-bs-toggle="modal" data-bs-target="#login" class="btn">댓글
                           등록</a>
                        </div>
                     </c:if>
                     <div class="button header-button board_button3">
                        <a onClick="funbtn()" class="btn">돌아가기</a>
                     </div>
                  </div>
                  <!-- ======================= 버튼 끝 ========================== -->
               </form>
            </div>
         </c:when>
      </c:choose>
      <!-- ====================== 페이징 ====================== -->
      <!--       <div class="w3-center">
         <div class="w3-bar">
            <a href="#" class="w3-button">«</a>
            <a href="#" class="w3-button w3-blue">1</a>
            <a href="#" class="w3-button">2</a>
            <a href="#" class="w3-button">3</a>
            <a href="#" class="w3-button">4</a>
            <a href="#" class="w3-button">5</a>
         <a href="#" class="w3-button">»</a>
         </div>
         </div> -->
      <!-- ====================== 페이징 끝 ====================== -->
      <br>
      <br>
      <jsp:include page="/WEB-INF/views/include/footer.jsp" />
      <!-- ========================= ClassiGrids JS HERE ========================= -->
      <script src="../../resources/assets/js/bootstrap.min.js"></script>
      <script src="../../resources/assets/js/wow.min.js"></script>
      <script src="../../resources/assets/js/tiny-slider.js"></script>
      <script src="../../resources/assets/js/glightbox.min.js"></script>
      <script src="../../resources/assets/js/main.js"></script>
      <script type="text/javascript">
         //========= Category Slider 
         tns({
         	container : '.category-slider',
         	items : 3,
         	slideBy : 'page',
         	autoplay : false,
         	mouseDrag : true,
         	gutter : 0,
         	nav : false,
         	controls : true,
         	controlsText : [ '<i class="lni lni-chevron-left"></i>',
         			'<i class="lni lni-chevron-right"></i>' ],
         	responsive : {
         		0 : {
         			items : 1,
         		},
         		540 : {
         			items : 2,
         		},
         		768 : {
         			items : 4,
         		},
         		992 : {
         			items : 5,
         		},
         		1170 : {
         			items : 6,
         		}
         	}
         });
         </div>
         
         
         <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
         <br>
         <br>
         <jsp:include page="/WEB-INF/views/include/footer.jsp" />
         <!-- ========================= ClassiGrids JS HERE ========================= -->
         <script src="../../resources/assets/js/bootstrap.min.js">
      </script>
      <script src="../../resources/assets/js/wow.min.js"></script>
      <script src="../../resources/assets/js/tiny-slider.js"></script>
      <script src="../../resources/assets/js/glightbox.min.js"></script>
      <script src="../../resources/assets/js/main.js"></script>
      <script type="text/javascript">
         //========= Category Slider 
         tns({
         	container : '.category-slider',
         	items : 3,
         	slideBy : 'page',
         	autoplay : false,
         	mouseDrag : true,
         	gutter : 0,
         	nav : false,
         	controls : true,
         	controlsText : [ '<i class="lni lni-chevron-left"></i>',
         			'<i class="lni lni-chevron-right"></i>' ],
         	responsive : {
         		0 : {
         			items : 1,
         		},
         		540 : {
         			items : 2,
         		},
         		768 : {
         			items : 4,
         		},
         		992 : {
         			items : 5,
         		},
         		1170 : {
         			items : 6,
         		}
         	}
         });
      </script>
      <!-- SBAdmin2 JS START -->
      <!-- Bootstrap core JavaScript-->
      <script src="../../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
      <script
         src="../../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script
         src="../../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="../../resources/sbadmin2/js/sb-admin-2.min.js"></script>
      <!-- Page level plugins -->
      <script
         src="../../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
      <script
         src="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>
      <!-- Page level custom scripts -->
      <script src="../../resources/sbadmin2/js/demo/datatables-demo.js"></script>
      <!-- SBAdmin2 JS END -->
      <!--   Core JS Files   -->
      <script src="../../resources/assets/js/core/popper.min.js"></script>
      <script src="../../resources/assets/js/core/bootstrap.min.js"></script>
      <script
         src="../../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="../../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
      <script>
         var win = navigator.platform.indexOf('Win') > -1;
         if (win && document.querySelector('#sidenav-scrollbar')) {
           var options = {
             damping: '0.5'
           }
           Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
         }
      </script>
      <!-- Github buttons -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
      <script
         src="../../resources/assets/js/material-dashboard.min.js?v=3.0.0"></script>
      <script src="../resources/bluecoding/boardView.js"></script>
      <script src="../../resources/bluecoding/header.js"></script>
   </body>
</html>