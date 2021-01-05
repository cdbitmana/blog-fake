/* 홈 화면 게시물 내용 토스트UI 적용 시작 */
function home_main__Body__init() {
    
    const body = document.querySelectorAll('.home-main__article-box__body');
    for (var i = 0; i < body.length; i++) {
        const initialValue = body[i].innerHTML.trim();
        initialValue = initialValue.replace(/&gt;/gi, ">");
        initialValue = initialValue.replace(/&lt;/gi, "<");
        const viewer = new toastui.Editor.factory({

            el: body[i],
            initialValue: initialValue,
            viewer: true,
            plugins: [toastui.Editor.plugin.codeSyntaxHighlight]

        });
    }
}
home_main__Body__init();
/* 홈 화면 게시물 내용 토스트UI 적용 끝 */

/* 게시물 내용 토스트UI 적용 시작 */
function ArticleDetail__Body__init() {

    const body = document.querySelector('.article_body');
    if(body == null){
        return;
    }
    const initialValue = body.innerHTML.trim();
    initialValue = initialValue.replace(/&gt;/gi, ">");
    initialValue = initialValue.replace(/&lt;/gi, "<");

    const viewer = new toastui.Editor.factory({

        el: body,
        initialValue: initialValue,
        viewer: true,
        plugins: [toastui.Editor.plugin.codeSyntaxHighlight]

    });
}
ArticleDetail__Body__init();
/* 게시물 내용 토스트UI 적용 끝 */

/* 스크롤탑 버튼 시작 */
$(window).on('scroll',function(){
if($(window).scrollTop() >= 25){
    $(".scrolltop-button").fadeIn(400);
}else{
    $(".scrolltop-button").fadeOut(400);
}
});
/* 스크롤탑 버튼 끝 */

/* 프로필 페이지 탑바 색전환 시작 */
function changeTopbar(){
    var pageName = ""; 
    var tempPageName = window.location.href;
    var strPageName = tempPageName.split("/");
    pageName = strPageName[strPageName.length-1].split("?")[0];
    if(pageName == "profile.html"){
        $(".top-bar").css("background-color","#F8E88B");
    }
    return pageName;
}
changeTopbar();
/* 프로필 페이지 탑바 색전환 끝 */

/* 프로필 페이지 펼치기 시작 */

$(".profile_arrow_extend > i").click(function(){               
        $(".profile_detail").css("width", "900px");
        $(".profile_detail").css("left", "290px");
        $(".profile_arrow_extend").css("display","none");
        $(".profile_arrow_shorten").css("display","flex");
     
});

$(".profile_arrow_shorten > i").click(function(){
    $(".profile_detail").css("width", "0");
    $(".profile_detail").css("left", "0");
    $(".profile_arrow_shorten").css("display","none");
    $(".profile_arrow_extend").css("display","flex");
  });
/* 프로필 페이지 펼치기 끝 */



$(".menu-button").click(function () {   
        $(".side-bar").css("transform", "translateX(-100%)");
       $(".scrolltop-button").css("transform", "translateX(-303px)");
      
});

$(".side-bar__menu-button").click(function () {
    $("div.side-bar").css("transform", "translateX(0%)");
    $(".scrolltop-button").css("transform", "translateX(0%)");

});



var side_box_height = $(".side-bar__menu-box1>ul>li>div.side-bar__menu-box2").css("height");

$(".side-bar__menu-box1 > ul > li:nth-child(2)").hover(function () {
    $(".side-bar__menu-box1 > ul > li:nth-child(2) ~ li").css("transform", "translateY(" + side_box_height + ")");
});

$(".side-bar__menu-box1 > ul > li:nth-child(2)").mouseleave(function () {
    $(".side-bar__menu-box1 > ul > li:nth-child(2) ~ li").css("transform", "translateY(0%)");
});




 const container = document.querySelector('.img-box'),
    slides = document.querySelectorAll('.img-cell'),
    slidecounter = slides.length;
let currentIndex = 0;


var lele = 0;
var i = 0;
function moveleft() {
    if(container == null || slides == null){
        return;
    }

    if (i < slidecounter - 1) {
        lele += 100;
        i++;
        container.style.transition = '1s'
        setTimeout('moveleft()', 6000);
    } else {
        container.style.transition = '0s'
        lele = 0;
        i = 0;
        setTimeout('moveleft()', 0);
    }

    container.style.left = "-" + lele + "%";
    
}

moveleft();


/* chart.js api 시작 */
var articleHit1 = document.getElementById('articleHitChart1');var chart1 = new Chart(articleHit1, {type: 'doughnut',data: {labels: ['게시판 이용 수칙','공지사항입니다. 😄'],datasets: [{data: [3,2],backgroundColor:['#F8E88B','#F69069','#8482ff','#ff8293','#E4B660','#ff82ff','#66d4f5']}]},options: {}});var articleHit2 = document.getElementById('articleHitChart2');var chart2 = new Chart(articleHit2, {type: 'doughnut',data: {labels: ['자바) Switch 구문','자바) 배열 정렬하는 식','MySQL) 문자열 합치기 CONCAT','MySQL) INNER JOIN','자바) 폴더와 하위파일 삭제하는 메소드'],datasets: [{data: [2,2,2,2,2],backgroundColor:['#F8E88B','#F69069','#8482ff','#ff8293','#E4B660','#ff82ff','#66d4f5']}]},options: {}});
/*
var articleHit = document.getElementById('articleHitChart').getContext('2d');
var chart = new Chart(articleHit, {
    // The type of chart we want to create
    type: 'doughnut',

    // The data for our dataset
    data: {
        labels: ['a','b','c','d','e','f','g'],
        datasets: [{            
            data: [1,2,3,4,5,6,7],
            backgroundColor:['red','orange','yellow']
        }]
    },
    // Configuration options go here
    options: {}
});
*/
/* chart.js api 끝 */