
//Scroll Animation for About
$(function() {
    //caches a jQuery object containing the header element
    var animate = $("#progress");
    $(window).scroll(function() {
        var scroll = $(window).scrollTop();

        if (scroll >= 2900) {
            animate.removeClass('display-none').addClass("display");
        } 
    });
});



//Scroll To
$(".scroll").click(function(event){		
	event.preventDefault();
	$("html,body").animate({scrollTop:$(this.hash).offset().top}, 400)
});


//Scroll Spy Refresh
$('#navbar').scrollspy()


//Scroll To Top
$(document).ready(function(){
	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 160) {
			$('.scrollToTop').fadeIn();
		} else {
			$('.scrollToTop').fadeOut();
		}
	});
	//Click event to scroll to top
	$('.scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});
});

