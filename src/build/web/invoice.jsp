v<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Invoice</title>
</head>

<body>

  <!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Invoice</title>
		<link rel="stylesheet" href="css/style1234.css">
		<link rel="license" href="https://www.opensource.org/licenses/mit-license/">
		<script src="script.js"></script>
                <%@page import="java.sql.*" %>
                <%@page import="javax.sql.*" %>
	</head>
	<body>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("SELECT * FROM user_book ORDER BY user_book.Invoice_id DESC");
                rs.next();
            %>
		<header>
			<h1>Invoice</h1>
			<address>
                            <p><%out.println(rs.getString(2));%></p>
				<p><%out.println(rs.getString(3));%></p>
				<p>(+91)<%out.println(rs.getString(4));%></p>
			</address>
			<span><img alt="" src="images/DoctoApp.jpg"></span>
		</header>
		<article>
			<table class="meta">
				<tr>
					<th><span>Invoice #</span></th>
					<td><span><%out.println(rs.getString(1));%></span></td>
				</tr>
				<tr>
					<th><span>Date</span></th>
					<td><span><%out.println(rs.getString(12));%></span></td>
				</tr>
				<tr>
					<th><span>Amount Due</span></th>
					<td><%out.println(rs.getString(11));%></td>
				</tr>
			</table>
			<table>
				<thead>
					<tr>
						<th><span>Patient's Name</span></th>
						<th><span>Hospital/Clinic's Name</span></th>
						<th><span>Medical Problem</span></th>
						<th><span>Booking Time</span></th>
						<th><span>Fees Due</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><span><%out.println(rs.getString(7));%></span></td>
						<td><span><%out.println(rs.getString(3));%></span></td>
                                                <td><span><%out.println(rs.getString(13));%></span></td>
						<td><span><%out.println(rs.getString(14));%></span></td>
						<td><span><%out.println(rs.getString(11));%></span></td>
					</tr>
				</tbody>
			</table>
			
			
		</article>
                                        <aside>
			<h1><span>Additional Notes</span></h1>
			<div>
				<p>A finance charge of 1.5% will be made on unpaid balances after 30 days.</p>
			</div>
		</aside>
	</body>
</html>
  
  

    <script  src="js/index12.js"></script>




</body>

</html>
