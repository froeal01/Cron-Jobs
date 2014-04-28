

$(function(){
	Stripe.setPublishableKey($('meta[name = "stripe-key"]').attr('content'));

	setUpForm();

		function setUpForm(){ $('#new_checkout').submit(function(){
			$('input[type= submit]').attr('disabled',true);
			processCard();
			return false
	});
}

 function processCard() {
		var card = {
			number : $("#card_number").val().replace(/\s/g, '').toString(),
			cvc: $('#card_code').val(),
			expMonth: $('#card_month').val(),
			expYear : $('#card_year').val()
		};
		console.log(card);
		Stripe.createToken(card, handleStripeResponse); 
	}

   var handleStripeResponse = function(status, response){
 		if (response.error)
 			{
 				var originalColor = $('#stripe_error').css('background')
 				$('#stripe_error').text(response.error.message);
 				$('#card_number').addClass("uk-form-danger");
  			$('input[type=submit]').attr('disabled', false);
 		// alert(response.error.message);

  	}
  else
  {
 		// alert(response.id);
  	$('#order_stripe_customer_token').val(response.id)
 		$('#new_checkout')[0].submit()
  }
 }
	
 });
