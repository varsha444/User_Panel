<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Vue Invoice</title>
  <style>
  .invoice-box {
  max-width: 800px;
  margin: auto;
  padding: 30px;
  border: 1px solid #eee;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
  font-size: 16px;
  line-height: 24px;
  font-family: "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
  color: #555;
}

.invoice-box table {
  width: 100%;
  line-height: inherit;
  text-align: left;
}

.invoice-box table td {
  padding: 5px;
  vertical-align: top;
}

.invoice-box table tr td:nth-child(n + 2) {
  text-align: right;
}

.invoice-box table tr.top table td {
  padding-bottom: 20px;
}

.invoice-box table tr.top table td.title {
  font-size: 45px;
  line-height: 45px;
  color: #333;
}

.invoice-box table tr.information table td {
  padding-bottom: 40px;
}

.invoice-box table tr.heading td {
  background: #eee;
  border-bottom: 1px solid #ddd;
  font-weight: bold;
}

.invoice-box table tr.details td {
  padding-bottom: 20px;
}

.invoice-box table tr.item td {
  border-bottom: 1px solid #eee;
}

.invoice-box table tr.item.last td {
  border-bottom: none;
}

.invoice-box table tr.item input {
  padding-left: 5px;
}

.invoice-box table tr.item td:first-child input {
  margin-left: -5px;
  width: 100%;
}

.invoice-box table tr.total td:nth-child(2) {
  border-top: 2px solid #eee;
  font-weight: bold;
}

.invoice-box input[type="number"] {
  width: 60px;
}

@media only screen and (max-width: 600px) {
  .invoice-box table tr.top table td {
    width: 100%;
    display: block;
    text-align: center;
  }

  .invoice-box table tr.information table td {
    width: 100%;
    display: block;
    text-align: center;
  }
}

/** RTL **/
.rtl {
  direction: rtl;
  font-family: Tahoma, "Helvetica Neue", "Helvetica", Helvetica, Arial,
    sans-serif;
}

.rtl table {
  text-align: right;
}

.rtl table tr td:nth-child(2) {
  text-align: left;
}

  
  </style>
  <javascript type="javascript/text">
      <style>
     const app =new Vue({
  el: "table",
  data: {
    items: [
      { description: "Website design", quantity: 1, price: 300 },
      { description: "Website design", quantity: 1, price: 75 },
      { description: "Website design", quantity: 1, price: 10 }
    
  }
  computed: {
    total() {
      return this.items.reduce(
        (acc, item) => acc + item.price * item.quantity,
        0
      );
    }
  },
  methods: {
    addRow() {
      this.items.push({ description: "", quantity: 1, price: 0 });
    }
  },
  filters: {
    currency(value) {
      return value.toFixed(2);
    }
  }
});
</style>
  </javascript>
      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

  <div class="invoice-box">
  <table cellpadding="0" cellspacing="0">
    <tr class="top">
      <td colspan="4">
        <table>
          <tr>
            <td class="title">
              <img src="images/" style="width:100%; max-width:300px;">
            </td>

            <td>
              Invoice #: 123<br> Created: January 1, 2015<br> Due: February 1, 2015
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>

    <tr class="information">
        <tr class="right">
      <td colspan="4">
        <table>
           

            
          <tr>
              
            <td>
                 <% 
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from bookappointment ORDER BY id DESC");
rs.next();
        String id=rs.getString(9).toString();
    %>
    
          <tr>      
            <td> <br>  <% out.println(rs.getString(1));%><br>
                  <% out.println(rs.getString(2));%><br>
                      <% out.println(rs.getString(3));%><br>
                      <% out.println(rs.getString(4));%><br>
                      
                                     
                      <% out.println(rs.getString(5));%><br>
                      <% out.println(rs.getString(6));%><br>
                      <% out.println(rs.getString(7));%><br>
                      <% out.println(rs.getString(8));
                      String i=rs.getString(1).toString();

                      %><br>
                      
                      
                     
          </tr>
           
          
           <% 
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
Statement stmt1=con.createStatement();
ResultSet rs1=stmt.executeQuery("select * from doctor where docid='"+id+"'");
rs1.next();
        %>
                    
              <div class="icon-list">
						
              <td>  <br>  <%  out.println(rs1.getString(2)); %></br>     
		   <%  out.println(rs1.getString(3)); %></br>     
					   <%  out.println(rs1.getString(4)); %></br> 
					 <%  out.println(rs1.getString(5)); %> </br>    
					 <%  out.println(rs1.getString(6)); %> </br>    
					 <%  out.println(rs1.getString(11)); %> </br>    
					 <%  out.println(rs1.getString(12)); %></br>     
					 <%  out.println(rs1.getString(13)); %> </br> 
              <%  out.println(rs1.getString(15)); %> </br> </td>   
					
               
               			
                
                
            </td>

           
          </tr>
        </table>
      </td>
    </tr

   
    
   

    

    <tr class="total">
      <td colspan="3"></td>
      
    </tr>
   
  </table>
</div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.13/vue.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
