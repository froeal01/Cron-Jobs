$(function(){

	$('.review_create').on('click', function(e){
		// e.preventDefault()
		var itemId = ($(this).attr("html"));
		getReviewForm(itemId);
	}); 	

});


function getReviewForm(id) {
	$.get('/items/'+ id + '/reviews/new', function(data){
			
		});
}
