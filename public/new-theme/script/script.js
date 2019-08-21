
	function add_to_cart(event)  {
	// alert("i am here ");

	event.preventDefault();
		var quantity=$("#p_quantity").val();
		var product=$("#p_id").val();
		var token=$('input[name=_token]').val();

		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});

		$.ajax({
			url: "/cart",
			type: "POST",
			data: { _token:token,product:product,quantity:quantity},
			success:function(result){
				// return false;
				if(result.problem =='')  {
					if(result.status == "send")  {
						jQuery( "div.success" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
						jQuery('div.success').html(result.message);
						jQuery('#from_id').val(result.fid);
						setTimeout(function(){// wait for 5 secs(2)
							location.reload(); // then reload the page.(3)
						}, 5000);
						return false;
					}
					else  {
						jQuery('#return_message').addClass('alert-danger show');
						jQuery$( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
						jQuery('#return_message').html(result.message);
						jQuery('#from_id').val(result.fid);
						return false;
					}
				}
				else  {
					//alert(result);
					$('input[type=text], textarea').val('');
					jQuery( "div.failure" ).fadeIn( 300 ).delay( 1500 ).fadeOut( 400 );
					jQuery('div.failure').html(result.message);
					jQuery('#from_id').val(result.fid);
					return false;
				}
			},
			error:function(xhr,status,error){
				return false;
				alert(status);
			}
		});
	}
