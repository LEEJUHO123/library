<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>마이 페이지</h2>
                        <p>
                        <p>회원정보를 수정하고 내 대여기록을 확인할 수 있습니다.</p>
                    </div>
                </div>
            </div>
            <div class="mypage__icons">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item" id="info_icon" href="myInfo.do">
                        <div class="blog__item__pic">
                            <img src="img/mypage/myinfo.png" alt="">
                        </div>
                        <div class="blog__item__text">
                            <h5><a href="myInfo.do">회원 정보 확인</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item" id="info_icon">
                        <div class="blog__item__pic">
                            <img src="img/mypage/book-1.png" alt="">
                        </div>
                        <div class="blog__item__text">
                            <h5><a href="nowRentalList.do">현재 대출중인 도서</a></h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item" id="info_icon">
                        <div class="blog__item__pic">
                            <img src="img/mypage/book-2.png" alt="">
                        </div>
                        <div class="blog__item__text">
                            <h5><a href="myRentalList.do">나의 대출 이력</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>