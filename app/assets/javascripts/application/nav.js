$(document).ready(function(){
    $('#nav-check').on("click", function(){
    	$(this).parent().siblings('div').toggleClass("toggle-display")
	    $(this).parent().toggleClass("nav-backround-color");
	    $('.nav-title').toggleClass("toggle-color");
	    $('.nav > .nav-btn > label > span').toggleClass("toggle-border");
    });
})