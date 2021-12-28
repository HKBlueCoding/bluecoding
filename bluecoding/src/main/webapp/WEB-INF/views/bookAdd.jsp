<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>작품 글쓰기</title>
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
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
      <style>
         @media all and (max-width: 1500px){
	         .book_text {
	         	width:100%;
	         }
	         
	         .book_image_button {
	         	width:100%;
	         }
	         
	         .book_button {
	         	margin-top: 1em;
	         	margin-left: 0;
	         }
         }
         
         @media all and (max-width: 300px){
	         .book_button2 {
	         	margin-top: 1em;
	         	margin-left: 0;
	         }
         }
         
         @media all and (max-width: 800px){
	         .book_div_size{
	         	width:50%;
	         }
	         
	         .book_div2_size{
	         	padding: 0;
	         }
         }
      </style>
      <!-- Font Awesome icons (free version)-->
      <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
         integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
         crossorigin="anonymous"></script>
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br><br><br>
      <!-- =================== 글쓰기 폼 ===================== -->
      <!-- Main Content-->
      <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="add" method="post" encType="multipart/form-data">
         <main class="mb-4">
            <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
               <div class="col-md-10 col-lg-8 col-xl-7">
                  <p id="title">작품 글쓰기</p>
                  <hr class="my-4">
                  <!-- ================== 카테고리 ======================= -->
                  <div class="categorise search-form wow fadeInUp book_div2_size">
                     <div class="row">
                        <div class="col-lg-3 col-md-3 col-12 p-0">
                           <div class="search-input book_div_size">
                              <label for="category"></label>
                              <select name="theme" id="category" title="테마를 선택하세요" required>
                                 <option value="" selected disabled>테마 선택</option>
                                 <option value="판타지">판타지</option>
                                 <option value="청소년">청소년</option>
                                 <option value="고전">고전</option>
                                 <option value="공포/호러">공포/호러</option>
                                 <option value="미스터리/스릴러">미스터리/스릴러</option>
                                 <option value="로맨스">로맨스</option>
                                 <option value="SF/과학">SF/과학</option>
                                 <option value="드라마/영화">드라마/영화</option>
                              </select>
                           </div>
                        </div>
                     </div>
                     <!-- ================== 카테고리 끝 ======================= -->
                     <div class="my-5">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <div class="form-floating">
                           <input type="hidden" name="id" value="${login.id }">
                           <input type="hidden" name="name" value="${login.name }">
                           <input class="form-control book_text_title" id="bookTitle" name="bookTitle" type="text" maxlength="50" required/>
                           <label for="bookTitle">제목</label>                   
                        </div>
                        <br>
                        <div class="form-floating" id="formMag">
                           <textarea class="form-control book_text" style="border: 1px solid #ced4da; border-radius: 0.25rem; height: 400px;" name="intro" rows="15" cols="90" minlength="10" maxlength="240" title="줄거리를 입력하세요(10자부터 240자까지)" required></textarea>
                           <input type="hidden" name="bookImage">
                           <label for="message">줄거리</label>
                        </div>
                        <br />
                        <!-- 사진 입력하기 -->
                        이미지 선택: &nbsp;<input class="book_image_button" id="uploadFile" name="uploadFile" type="file">
                        <!-- ======================= 버튼 ========================== -->                     
                        <div class="button header-button book_button">
                           <input type="submit" class="btn" value="등록">
                        </div>
                        <div class="button header-button book_button2">
                           <a onClick="funbtn()" class="btn">돌아가기</a>
                        </div>
                        <!-- ======================= 버튼 끝 ========================== -->                     
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
      <!-- Bootstrap core JS-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      <!-- Core theme JS-->
      <script src="../resources/assets/js/scripts.js"></script>
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <!-- * *                               SB Forms JS                               * *-->
      <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
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
      <script>
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
           } else {
           	return;
           }
         }
      </script>
      <script src="../../resources/bluecoding/header.js"></script>
      <script>
         $(document).ready(function() {
          $('.book_text_title').change(function() {
          	if($.trim($('.book_text_title').val())==''){
                  alert("공백 없이 제목을 입력해주세요.");
                  $('.book_text_title').val('')
          	}
          }); //end on
         });
      </script>
      <script>
         $(document).ready(function() {
            $('.book_text').change(function() {
            	if($.trim($('.book_text').val())==''){
                    alert("공백 없이 내용을 입력해주세요.");
                    $('.book_text').val('')
            	}
            }); //end on 
         });
      </script>
   </body>
</html>