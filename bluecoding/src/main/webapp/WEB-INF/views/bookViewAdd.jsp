<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>회차 글쓰기</title>
      <meta name="description" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="shortcut icon" type="image/x-icon"
         href="../assets/images/favicon.svg" />
      <!-- Place favicon.ico in the root directory -->
      <!-- 1  -->
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= CSS here ========================= -->
      <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/main.css" />
      <!-- ============================== 글쓰기(startbootstrap-clean-blog-gh-pages) ============================== -->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Font Awesome icons (free version)-->
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
         integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
         crossorigin="anonymous"></script>    
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br>
      <!-- =================== 글쓰기 폼 ===================== -->
      <!-- Main Content-->
      <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="add" method="post">
         <main class="mb-4" style="background-color: #ccc; padding: 15px;">
            <div class="container px-4 px-lg-5">
               <div class="form-control" style="padding-top: 50px; height: auto;">
                  <div class="row gx-4 gx-lg-5 justify-content-center">
                     <div class="col-md-10 col-lg-8 col-xl-7" style="width: 80%">
                        <p id="title">회차 글쓰기</p>
                        <hr class="my-4">
                        <br>
                        <div class="my-5">
                           <!-- * * * * * * * * * * * * * * *-->
                           <!-- * * SB Forms Contact Form * *-->
                           <!-- * * * * * * * * * * * * * * *-->
                           <!-- This form is pre-integrated with SB Forms.-->
                           <!-- To make this form functional, sign up at-->
                           <!-- https://startbootstrap.com/solution/contact-forms-->
                           <!-- to get an API token!-->
                           <div class="form-floating">
                              <input class="form-control text_input" id="name" name="pageTitle" type="text" maxlength="50" title="제목를 입력하세요(1자부터 50자까지)" required />
                              <label for="name">제목</label>
                              <input type="hidden" value="${bookVO.bookNO }" name="bookNO" >
                              <div class="invalid-feedback" data-sb-feedback="name:required">제목을 입력하세요.</div>
                           </div>
                           <br>
                           <div class="form-floating" id="formMag" style="width: 100%">
                              <textarea class="form-control text_input" id="message" name="pageText" style="height: 35rem" maxlength="10000" title="내용을 입력하세요(1자부터 10000자까지)" required></textarea>
                              <label for="message">본문</label>
                              <div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
                              <br><br>
                              <div id="Writer">
                                 &nbsp;작가의 말
                              </div>
                              <textarea name="comment" class="form-control text_input" style="height: 15rem" maxlength="300" title="작가의 말을 입력하세요(1자부터 300자까지)" required></textarea>
                           </div>
                           <br />
                           <!-- Submit success message-->
                           <!---->
                           <!-- This is what your users will see when the form-->
                           <!-- has successfully submitted-->
                           <div class="d-none" id="submitSuccessMessage">
                              <div class="text-center mb-3">
                                 <div class="fw-bolder">Form submission successful!</div>
                                 To activate this form, sign up at
                                 <br />
                                 <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                              </div>
                           </div>
                           <!-- Submit error message-->
                           <!---->
                           <!-- This is what your users will see when there is-->
                           <!-- an error submitting the form-->
                           <div class="d-none" id="submitErrorMessage">
                              <div class="text-center text-danger mb-3">Error sending message!</div>
                           </div>
                           <!-- ======================= 버튼 ========================== -->
                           <div class="button header-button">
                              <p>
                                 유료화 여부:
                                 <select name="charge" id="charge">
                                    <option value="">무료</option>
                                    <option value="Y">유료화</option>
                                 </select>
                              </p>
                           </div>
                           &nbsp;&nbsp;&nbsp;&nbsp;
                           <div class="button header-button">
                              <input type="submit" class="btn" value="등록">
                           </div>
                           <div class="button header-button">
                              <a onClick="funbtn()" class="btn">돌아가기</a>
                           </div>
                           <!-- ======================= 버튼 끝 ========================== -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </main>
      </form>
      <!-- =================== 글쓰기 폼 끝===================== -->
      <!-- ==================== footer ====================== -->      
      <!-- footer -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- ========================= JS here ========================= -->
      <script src="../resources/assets/js/bootstrap.min.js"></script>
      <script src="../resources/assets/js/wow.min.js"></script>
      <script src="../resources/assets/js/tiny-slider.js"></script>
      <script src="../resources/assets/js/glightbox.min.js"></script>
      <script src="../resources/assets/js/main.js"></script>
      <script type="text/javascript">
         //========= Category Slider 
         tns({
             container: '.category-slider',
             items: 3,
             slideBy: 'page',
             autoplay: false,
             mouseDrag: true,
             gutter: 0,
             nav: false,
             controls: true,
             controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
             responsive: {
                 0: {
                     items: 1,
                 },
                 540: {
                     items: 2,
                 },
                 768: {
                     items: 4,
                 },
                 992: {
                     items: 5,
                 },
                 1170: {
                     items: 6,
                 }
             }
         });
      </script>
      <script src="../../resources/bluecoding/header.js"></script>
      <script>
         $(document).ready(function() {
         
         // 제목
           $('.text_input:eq(0)').change(function() {	
            if($.trim($('.text_input:eq(0)').val())==''){
                   alert("제목을 입력해주세요.");
                   $('.text_input:eq(0)').val('');
                   return;
            }     	
           }); //end change
           
         // 내용
           $('.text_input:eq(1)').change(function() {       	
            if($.trim($('.text_input:eq(1)').val())==''){
                   alert("내용을 입력해주세요.");
                   $('.text_input:eq(1)').val('');
                   return;
            }       	
           }); //end change  
         
         // 작가의 말
           $('.text_input:eq(2)').change(function() {       	  	        	
            if($.trim($('.text_input:eq(2)').val())==''){
                   alert("작가의 말을 입력해주세요.");
                   $('.text_input:eq(2)').val('');
                   return;
            }  	        	
           }); //end change
           
         }); // end ready 
         
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
           } else {
           	return;
           }
         }
      </script>
      <c:if test="${empty login.id || login.id ne bookVO.id}">
         <script>
            javascript:history.back();
         </script>
      </c:if>
   </body>
</html>