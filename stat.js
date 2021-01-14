


/* 스크롤탑 버튼 시작 */
$(window).on('scroll',function(){
    if($(window).scrollTop() >= 25){
        $(".scrolltop-button").fadeIn(400);
    }else{
        $(".scrolltop-button").fadeOut(400);
    }
    });
    /* 스크롤탑 버튼 끝 */
    
   
    
    /* 사이드바 메뉴 효과 시작 */
    $(".menu-button").click(function () {   
            $(".side-bar").css("transform", "translateX(-100%)");
           $(".scrolltop-button").css("transform", "translateX(-303px)");
          
    });
    
    $(".side-bar__menu-button").click(function () {
        $("div.side-bar").css("transform", "translateX(0%)");
        $(".scrolltop-button").css("transform", "translateX(0%)");
    
    });
    /* 사이드바 메뉴 효과 끝 */
    
    
    /* 사이드바 2차메뉴 기능 시작 */
    var side_box_height = $(".side-bar__menu-box1>ul>li>div.side-bar__menu-box2").css("height");
    
    $(".side-bar__menu-box1 > ul > li:nth-child(2)").hover(function () {
        $(".side-bar__menu-box1 > ul > li:nth-child(2) ~ li").css("transform", "translateY(" + side_box_height + ")");
    });
    
    $(".side-bar__menu-box1 > ul > li:nth-child(2)").mouseleave(function () {
        $(".side-bar__menu-box1 > ul > li:nth-child(2) ~ li").css("transform", "translateY(0%)");
    });
    /* 사이드바 2차메뉴 기능 끝 */
    
    
    
    
    
    /* chart.js api 시작 */
    var articleHit1 = document.getElementById('articleHitChart1');var chart1 = new Chart(articleHit1, {type: 'doughnut',data: {labels: ['공지사항입니다. 😀','게시판 이용 수칙'],datasets: [{data: [2,1],backgroundColor:['#F8E88B','#F69069','#8482ff','#ff8293','#E4B660','#ff82ff','#66d4f5']}]},options: {}});var articleHit2 = document.getElementById('articleHitChart2');var chart2 = new Chart(articleHit2, {type: 'doughnut',data: {labels: ['자바) Switch 구문','자바) 배열 정렬하는 식','Vue) Array.prototype.filter()','MySQL) 문자열 합치기 CONCAT','자바) 폴더와 하위파일 삭제하는 메소드'],datasets: [{data: [5,5,5,3,3],backgroundColor:['#F8E88B','#F69069','#8482ff','#ff8293','#E4B660','#ff82ff','#66d4f5']}]},options: {}});
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
        options: {
            tooltips: {
                intersect: false
            }
        }
    });
    */
    /* chart.js api 끝 */
    
   