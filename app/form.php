<?php
// Require database handler
// require_once 'dbh.php';

// Fetch form data from index.php
if (isset($_POST['submit'])) {
    // Save values in new variables:
    $name       = $_POST['name'];
    $email      = $_POST['email'];
    $age        = $_POST['age'];
    $occupation = $_POST['occupation'];
    $recommend  = $_POST['recommend'];
    $fcc        = $_POST['FCC'];
    $improve    = $_POST['improve'];
    $suggestion = $_POST['suggestion'];
}

?>

<html lang=en>
	<head>
		<link href="main.css" rel="stylesheet" type="text/css">
		<meta charset="UTF-8">
	</head>
<body>
    <h1>Thank you for your feedback, <?= $name ?> </h1>
</body>
</html>
