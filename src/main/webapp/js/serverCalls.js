
$("a.createProduct").click(function() {
	var name = $("form.createProduct input.productName").val();
	var description = $("form.createProduct input.productDescription").val();
	var price = $("form.createProduct input.productPrice").val();

	if (name == '' || description == '' || price == '') {
		alert("Please fill creatingProduct form!");
	} else {

		var product = {
			name: name,
			description: description,
			price: price
		};
//add validation
		$.post("product", product,
			function(data) {
				if (data == 'Nice') {
					alert('you have created a new product in a hurry');
				}
			});
	}
});