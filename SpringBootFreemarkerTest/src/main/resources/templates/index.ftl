<html>
<head><title>SpringBoot-FreeMarker Test</title>
	
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css"/> 
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css"/> 
	<link rel="stylesheet" type="text/css" href="resources/css/jquery-ui.min.css"/> 
	<link rel="stylesheet" type="text/css" href="resources/css/jquery.dataTables.min.css"/> 
	
	<script src="resources/js/jquery.js" type="text/javascript"></script>
	<script src="resources/js/jquery-ui.min.js" type="text/javascript"></script>
	<script src="resources/js/jquery.hoverIntent.js" type="text/javascript"></script>
	<script src="resources/js/jquery.dataTables.js" type="text/javascript"></script>
	
	<script>
		$(document).ready(function() {
		
		    $('#UserTable').DataTable();
		
		} );
	</script>

</head>
<body>
<div id="header">
<H2>
	SpringBoot FreeMarker Test
</H2>
</div>

<div id="content">
  
  
  <fieldset>
  	<legend>Add User</legend>
  <form name="user" action="add.html" method="post">
  	Firstname: <input type="text" name="firstname" />	<br/>
  	Lastname: <input type="text" name="lastname" />	<br/>
  	<input type="submit" value="   Save   " />
  </form>
  </fieldset>
  <br/>
  
  <table class="display hover order-column stripe" id="UserTable">
  <thead>
  	<tr>
  		<th class="thead-text">Firstname</th>  
  		<th class="thead-text">Lastname</th>
  	</tr>
  </thead>
  <tbody>
    <#list model["userList"] as user>
  	<tr>
  		<td class="tbody-text">${user.firstname}</td> 
  		<td class="tbody-text">${user.lastname}</td>
  	</tr>
    </#list>
   </tbody>
  </table>

</div>  
</body>
</html>  