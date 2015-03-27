<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	<title>Escape Sequence</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="generator" content="Geany 0.21" />
<link rel="stylesheet" type="text/css" href="tohcalamity.css" />

</head>

<body>
	<?php
	require_once: 'login.php';
	// $db_hostname, $db_username, $db_password;
		$db_database = "writing";
		$db_table ="calamity";
	///$db_server = mysql_connect($db_hostname, $db_username, $db_password);
		$connection = new mysqli($db_hostname, $db_username, $db_password, $db_database);
		if ($connection->connect_error) die ($connection->connect_error);
		
		$place = get_sanit_post($connection, 'place');
		$structure = get_sanit_post($connection, 'structure');
		$tragedy = get_sanit_post($connection, 'tragedy');
		$temptation = get_sanit_post($connection, 'temptation');
		if ($place != null && $structure != null && $temptation != null && $temptation != null){
			{
				$query = "INSERT INTO $db_table (place, structure, tragedy, temptation) VALUES ('$place','$structure','$tragedy','$temptation');";
				$result = $connection->query($query);
				if (!$result) {
					echo "<p>INSERT FAILED</p>\n";
					echo "<p>Problem Query: $query</p>\n";
			
			} else {
				$query = "fill out all form fields";
			} // end if
		
	echo <<<_END
<div id="left">
		<form action="tohcalamity.php" method="post">
				<p><label>Place<input type="text" maxlength="80" name=""/></label></p>
				<p><label>Structure<input type="text" maxlength="80" name=""/></label></p>
				<p><label>Tragedy<input type="text" maxlength="80" name=""/></label></p>
				<p><label>Temptation<input type="text" maxlength="80" name=""/></label></p>
				<p><input type="submit"></p>
		</form>
	</div>
	<div id="right">
		<h3>MySQL output</h3>
		<p>Your query is: $query</p>
	</div>
_END;
		
	function get_sanit_post($connection, $var){
		return htmlentities($connection->real_escape_string($_POST[$var])); 
		}
		

?>	
</body>
</html>
