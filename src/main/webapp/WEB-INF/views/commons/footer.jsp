<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        .driver:before {
            display: block;
            position: absolute;
            top: 1px;
            left: 0;
            width: 1px;
            height: 10px;
            background: #FFFFFF;
        }

        .col-xs-6 col-sm-3 > span, .col-xs-6 col-sm-3 > i {
            margin-bottom: 3px;
            color: #FFFFFF;
        }

        .col-xs6 col-sm-3 {
            padding: 16px 0 25px;
            font-size: 11px;
            color: #111;
            max-width: 100%;
            line-height: 18px;
            margin: 0 auto 0 auto;
        }

        .footer-info {
            color: #353535;
            font-size: 11px;
            padding: 16px 0 25px;
            max-width: 100%;
            line-height: 18px;
            margin: 0 auto 0 auto;
        }

        .col-xs-6 col-sm-3 .insurance .insurance_info {
            display: inline-block;
            margin-right: 16px;
            margin-bottom: 20px;
        }

        .escrow-icon-img {
            width: 24px;
            height: 24px;
            cursor: pointer;
            display: inline-block;
            vertical-align: top;
        }

        .footer_content{
          color: #353535;
          font-size: 13px;
          padding: 16px 0 25px;
          max-width: 100%;
          line-height: 18px;
          margin: 0 0 8px;
        }

        .footer_content a{
          color: #353535;
          font-size: 11px;
        }

        .footer_content p{
          margin : 0 0 8px;
        }

       /* .footer_facebook{
          color: #353535;
        }*/

        .row a{
          text-decoration: none;
        }

        .row a:hover {
          color : #9e9b95;
        }
        
        .footer_subtitle, 
        .footer_subtitle a {
        	margin: auto;
        	color: #75644a;
        	font-weight: bold;
        	font-size: 13px;
        	text-align: left;
        }
        .footer_subtitle a:hover {
        	color: #bfbbb4;
        }
        .text-align-center {
        	text-align: center;
        }
    </style>
</head>

<footer style="width: 100%">
    <div class="row" style="background-color: #DCD9D4; padding: 16px 0px 16px 100px; margin-right: 0px; margin-left: 0px; border-bottom: solid 0.1rem #fff; ">
		<div class="col"></div>
        <div class="col">
          <div class="footer_subtitle">
            	  <p><a href="" style="font-size: 13px">위치안내</a></p><br>
              <c:if test="${empty login}">
                  <p><a onclick="modalOn()" style="cursor: pointer;">로그인</a></p><br>
                  <p><a href="/regi/normal.do">회원가입</a></p><br>
              </c:if>
              <c:if test="${login.auth == 0}">
                  <p><a href="/account/main.do">마이페이지</a></p><br>
                  <p><a href="/login/logout.do">로그아웃</a></p><br>
              </c:if>
              <c:if test="${login.auth == 1}">
                  <p><a href="/admin/main.do">관리자페이지</a></p>
              </c:if>
          </div>
        </div>
        <div class="col">
          <span class="footer_content">
            <p><span  class="footer_subtitle">고객센터</span></p>
            <p><a href="/cs/notice.do">공지사항</a></p>
            <p><a href="/agreement.do">이용약관</a></p>
            <p><a href="/personalInfo.do">개인정보취급방침</a></p>
            <p><a href="tel:010-3258-0508">광고 및 제휴문의</a></p>
          </span>
        </div>
        <div class="col">
          <span class="footer_content">
            <span  class="footer_subtitle">ABOUT BITCAMPING</span><br>
            <p><a href="tel:010-3258-0508">비트캠핑 소개</a></p>
          </span>
        </div>
        <div class="col">
          <span class="footer_content">
            <span class="footer_subtitle">SOCIAL</span><br>
              <span class="footer_sns" style="cursor:pointer; font-size: 20px; color: #827e78;" >
                  <span class="footer_facebook">
                <i class="fab fa-facebook fa-fw"></i>&nbsp;
                  </span>
                <i class="fab fa-twitter fa-fw"></i>&nbsp;
                <i class="fab fa-google-plus-g fa-fw"></i>
              </span>
          </span>
        </div>
        <div class="col"></div>
    </div>
    <div class="row" style="background-color: #DCD9D4; padding: 16px 0 25px; margin-right: 0px; margin-left: 0px">
        <div class="col-xs-6 col-sm-3"></div>
        <div class="col-xs-6 col-sm-3">
          <span class="footer-info">
            <span>(주)비트캠핑</span>
            <span>대표 <i style="color: #353535">이동준</i> |</span>
            <span>개인정보보호책임자 <i style="color: #353535">엄영신</i></span><br>
            <span class="driver">서울 마포구 백범로 23 지하1층, 3층  </span>
            <br><span>통신판매업 신고번호 제2021-서울마포-00029 | </span>
            <span class="driver">사업자등록번호 220-88-90629 </span> <br>
            <span>고객센터 전화문의 <a href="tel:010-3258-0508" style="color: #9e9b95"><i>080-022-0182</i></a></span>
            <br>
            <span class="driver">FAX <i>02-622-3214</i> |</span>
            <span class="driver">E-mail <a href="mailto:ddongjunn@gmail.com" style="color: #9e9b95;"><i>service@bitcamping.co.kr</i></a></span>
          </span>
        </div>
        <!-- 필요한 뷰포트에만 clearfix 를 추가하세요 -->
        <div class="clearfix visible-xs-block"></div>

        <div class="col-xs-6 col-sm-3">
          <span class="footer-info">
            <span class="insurance_info">
                안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 <br>
                KG 이니시스의 구매안전 서비스 (채무지급보증)를 이용하실 수 있습니다.
            </span><br><br>
            <span style="#9e9b95-space:nowrap;">
            <span class="insurance_info">
                온라인디지털콘텐츠사업발전법에 의한
                <a href="javascript:;" data-uk-modal="{target:'#privacy-personal'}" class="underline"
                   style="color: #FFFFFF; font-size: 11px">콘텐츠보호안내 자세히보기</a>
                &nbsp;&nbsp;&nbsp;
            </span>
            <span class="escrow-icon-img">
						<img src="//image.inicis.com/mkt/certmark/escrow/escrow_43x43_gray.png" border="0"
                             alt="클릭하시면 이니시스 결제시스템의 유효성을 확인하실 수 있습니다." style="max-width: 100%; filter: brightness(60%)">
					</span>
            </span>
            </span>
        </div>
        <div class="col-xs-6 col-sm-3"></div>
    </div>
</footer>

</html>