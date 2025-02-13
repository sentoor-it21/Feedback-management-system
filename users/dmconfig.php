<?php
require_once 'vendor/autoload.php';

session_start();
// init configuration
$clientID = '78886489022-dlgjealb3h77ouv0olld21e5tsg3mumi.apps.googleusercontent.com';
$clientSecret = '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';
$redirectUri = 'http://localhost/cms/users/dmwelcome.php';

// create Client Request to access Google API
$client = new Google_Client();
$client->setClientId($clientID);
$client->setClientSecret($clientSecret);
$client->setRedirectUri($redirectUri);
$client->addScope("email");
$client->addScope("profile");

// Connect to database
$hostname = "localhost";
$username = "root";
$password = "";
$database = "cms";

$conn = mysqli_connect($hostname, $username, $password, $database);

