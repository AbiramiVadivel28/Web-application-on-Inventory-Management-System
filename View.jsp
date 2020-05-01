<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<!-- JQuery -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- MDBootstrap Datatables  -->
<script type="text/javascript" src="js/addons/datatables2.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/js/mdb.min.js"></script>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css"
	rel="stylesheet">
<!-- MDBootstrap Datatables  -->
<link href="css/addons/datatables2.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<script>
		$(document).ready(function() {
			$('#dtBasicExample').DataTable();
			$('.dataTables_length').addClass('bs-select');
		});
	</script>
	<div class="w3-sidebar w3-bar-block w3-light-grey" style="width: 10%">
		<div class="w3-container w3-dark-grey">
			<h4>Menu</h4>
		</div>

		<img src="https://www.w3schools.com/w3css/img_snowtops.jpg" alt="Snow"
			style="width: 100%"> <a href="AccessPage.html"
			class="w3-bar-item w3-button">Home</a> <a 
			href="Add_Screen.jsp"  class="w3-bar-item w3-button"> <img src="https://img.icons8.com/ios/50/000000/add.png" style="height: 30px"/> Add </a>

		<a href="./view" class="w3-bar-item w3-button w3-red"><img
			style="height: 30px"
			src="https://img.icons8.com/dotty/80/000000/list.png " /> View </a> <a
			href="Search.jsp" class="w3-bar-item w3-button"><img
			style="height: 30px"
			src="https://img.icons8.com/pastel-glyph/64/000000/search--v2.png" />
			Search </a>
			<a
			href="RemovePage.html" class="w3-bar-item w3-button "><img
			style="height: 30px"
			src="https://img.icons8.com/material-rounded/24/000000/filled-trash.png" />
			Delete </a>
			<a
			href="index.html" class="w3-bar-item w3-button ">
			<img src="https://img.icons8.com/ios-glyphs/30/000000/logout-rounded-up--v1.png"/>
			
			Log-Out </a>
			<img />
			
	</div>
<div style="margin-left:10%;padding:20px">
	<table id="dtBasicExample"
		class="table table-striped table-bordered table-sm" cellspacing="0"
		width="100%">
		<thead>
			<tr>
				<th class="th-sm">Product Id</th>
				<th class="th-sm">Product Name</th>
				<th class="th-sm">Model</th>
				<th class="th-sm">Manufacturer</th>
				<th class="th-sm">Type Code</th>
				<th class="th-sm">Location Code</th>
				<th class="th-sm">MSRP</th>
				<th class="th-sm">Unit Cost</th>
				<th class="th-sm">Discount Price</th>
				<th class="th-sm">Stock Quantity</th>
				
			</tr>
		</thead>
		<tbody>
			<%
				List<Map<String, Object>> alist = (List<Map<String, Object>>) request.getAttribute("list");
			for (int i = 0; i < alist.size(); i++) {
			System.out.println("JSP PAge---" + i);
%>
			<tr>
				<%	
				Map<String, Object> product = (Map<String, Object>) alist.get(i);
				for (Map.Entry<String, Object> entry : product.entrySet()) {
				    String key = entry.getKey();
				   %>
				   
				<td><%= entry.getValue() %></td> 
			<%	}

			%>

				</tr>
					<%
				}
			%>

			
		</tbody>
		<tfoot>
			<tr>
				
				<th> Product_Id</th>
				<th> Product_Name</th>
				<th> Model</th>
				<th> Manufacturer</th>
				<th> Type_Code</th>
				<th> Location_Code</th>
				<th>MSRP</th>
				<th>Unit_Cost</th>
				<th>Discount_Price</th>
				<th>Stock_Quantity</th>
			</tr>
		</tfoot>
	</table>
</div>
</body>
</html>