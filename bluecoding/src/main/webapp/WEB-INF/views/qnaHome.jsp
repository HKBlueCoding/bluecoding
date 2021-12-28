<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>문의 목록</title>
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= ClassiGrids CSS HERE ========================= -->
      <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/main.css" />
      <!-- SBAdmin2 CSS START -->
      <!-- Custom fonts for this template -->
      <link
         href="../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css"
         rel="stylesheet" type="text/css">
      <link
         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
         rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="../resources/sbadmin2/css/sb-admin-2.min.css"
         rel="stylesheet">
      <!-- Custom styles for this page -->
      <link
         href="../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css"
         rel="stylesheet">
      <!-- SBAdmin2 CSS END -->
      <!--     Fonts and icons     -->
      <link rel="stylesheet" type="text/css"
         href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
      <!-- Nucleo Icons -->
      <link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
      <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
      <!-- Font Awesome Icons -->
      <script src="https://kit.fontawesome.com/42d5adcbca.js"
         crossorigin="anonymous"></script>
      <!-- Material Icons -->
      <link
         href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
         rel="stylesheet">
      <!-- CSS Files -->
      <link id="pagestyle"
         href="../resources/assets/css/material-dashboard.css?v=3.0.0"
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
         background-image: url(../resources/assets/images/here/noticeBG.jpg);
         }
         #tbPadd {
         padding-left: 1.5rem;
         padding-right: 1.5rem;
         }
         .txt_line {
         width: 300px;
         overflow: hidden;
         text-overflow: ellipsis;
         white-space: nowrap;
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
      <br>
      <div class="container-fluid py-4" style="height: auto; width: 80%;">
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div
                        class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">내 문의</h6>
                     </div>
                  </div>
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7" style="width: 10%">&nbsp;&nbsp;번호</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작성한 글</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">상담내용</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">답변완료 여부</th>
                              </tr>
                           </thead>
                           <tbody>
                              <c:choose>
                                 <c:when test="${empty qnaList }">
                                    <tr>
                                       <td>null입니다.</td>
                                    </tr>
                                 </c:when>
                                 <c:when test="${!empty qnaList }">
                                    <c:forEach var="qna" items="${qnaList }">
                                       <tr>
                                          <td class="align-middle text-center">
                                             <span class="text-secondary text-xs font-weight-bold">${qna.qnaNO }</span>
                                          </td>
                                          <td class="align-middle text-center">
                                             <div>
                                                <div class="d-flex flex-column justify-content-center">
                                                   <a href="view?qnaNO=${qna.qnaNO }" class="mb-0 text-sm" style="color: black">${qna.qnaTitle }</a>
                                                   <p class="text-xs text-secondary mb-0">${qna.qnaList }</p>
                                                </div>
                                             </div>
                                          </td>
                                          <td class="align-middle text-center">
                                             <span class="text-secondary text-xs font-weight-bold txt_line">${qna.qnaText }</span>
                                          </td>
                                          <td class="align-middle text-center">
                                             <span class="text-secondary text-xs font-weight-bold">${qna.qnaDate }</span>
                                          </td>
                                         <c:if test="${qna.isProcess eq 'Y' }">
                                          <td class="align-middle text-center text-sm">
                                             <span class="text-secondary text-xs font-weight-bold">답변 완료</span>
                                          </td>
                                         </c:if>
                                         <c:if test="${qna.isProcess ne 'Y' }">
                                          <td class="align-middle text-center text-sm">
                                             <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg, #419cef 10%, #106ec3 100%);">답변 대기중</span>
                                          </td>
                                         </c:if>                                           
                                       </tr>
                                    </c:forEach>
                                 </c:when>
                              </c:choose>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- Start Search Form -->
         <div class="search-form wow fadeInUp"
            style="margin: 1px; padding: 1px;">
            <div class="row">
               <div class="button header-button" style="width: 100%; padding: 1px; text-align: center;">
                  <a href="/qna/add" class="btn">작성</a>
                  <a onClick="funbtn()" class="btn">돌아가기</a>
               </div>
            </div>
         </div>
         <!-- End Search Form -->
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <jsp:include page="/WEB-INF/views/include/footer.jsp" />
      <!-- ========================= ClassiGrids JS HERE ========================= -->
      <script src="../resources/assets/js/bootstrap.min.js"></script>
      <script src="../resources/assets/js/wow.min.js"></script>
      <script src="../resources/assets/js/tiny-slider.js"></script>
      <script src="../resources/assets/js/glightbox.min.js"></script>
      <script src="../resources/assets/js/main.js"></script>
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
      <script src="../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
      <script
         src="../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script
         src="../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="../resources/sbadmin2/js/sb-admin-2.min.js"></script>
      <!-- Page level plugins -->
      <script
         src="../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
      <script
         src="../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>
      <!-- Page level custom scripts -->
      <script src="../resources/sbadmin2/js/demo/datatables-demo.js"></script>
      <!-- SBAdmin2 JS END -->
      <!--   Core JS Files   -->
      <script src="../resources/assets/js/core/popper.min.js"></script>
      <script src="../resources/assets/js/core/bootstrap.min.js"></script>
      <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
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
      <script src="../resources/assets/js/material-dashboard.min.js?v=3.0.0"></script>
      <script>
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
           } else {
           	return;
           }
         }
      </script>
      <c:if test="${empty login.id || login.id ne id }">
         <script>
            javascript:history.back();
         </script>
      </c:if>
      <script src="../../resources/bluecoding/header.js"></script> 
   </body>
</html>