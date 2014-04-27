$(function(){

	$("#sub_order_quantity").change(function(event){
		 var newValue = event.currentTarget.value
		 var itemCost = $('.item-cost').data("cost")
		 var totalCost = (newValue * itemCost).toString()
		 $(".item-cost").html("Cost: <span class='cost'>  $"+ totalCost + "</span>")
	});



});