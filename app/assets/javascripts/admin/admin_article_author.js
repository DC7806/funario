$(document).ready( function(){
	$('#admin_article_author').change(function(){
	  if ($(this).val() == 'other'){
	    $('#admin_article_custom_author').removeClass('invisible');
	  }
	  else if ($(this).val() !== 'other'){
	    $('#admin_article_custom_author').addClass('invisible');
	  }
	})
})