	$('a').on('click', function() {
//		console.log('clicked');
//		console.log($(this).parent());
//		console.log($(this).parent().next());
		var element = $(this).parent().next();
		var visible = $(this).parent().next().css('visibility');
//		console.log(visible);
		if (visible == 'visible')
		{
			element.css('visibility', 'hidden'); 
			console.log(visible);
		} else {
			element.css('visibility', 'visible');
			console.log(visible);
		} // end if
		console.log(element);
	});
	
	$(':checkbox').on('change', function () {
//		console.log('changed');
//		console.log($(this));
//		console.log($(this).next());
		console.log($(this).next().css('visibility'));
		var element = ($(this).next());
		var visible = ($(this).next().css('visibility')); 
		if (visible == 'visible')
		{
			element.css('visibility', 'hidden'); 
			console.log(visible);
		} else if (visible == 'hidden'){ 
			element.css('visibility', 'visible');
			console.log(visible);
		} else {
			console.log('else');
			console.log(visible);	
		} 
		
		
		// end if
		
		console.log(element);
$(this).next().show();
	});
