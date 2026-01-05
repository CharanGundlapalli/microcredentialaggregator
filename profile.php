<?php
header("Content-Type: application/json");
session_start();
include "db.php";

// check session
if (!isset($_SESSION['user_uid'])) {
    echo json_encode(["status" => "error", "message" => "Unauthorized"]);
    exit;
}

$user_uid = $_SESSION['user_uid'];

// fetch user
$query = mysqli_query($conn, "
    SELECT u.full_name, u.email, u.role, u.created_at, i.verified, i.issuer_name 
    FROM users u 
    LEFT JOIN issuers i ON u.user_uid = i.user_uid 
    WHERE u.user_uid='$user_uid'
");
$user = mysqli_fetch_assoc($query);

if (!$user) {
    echo json_encode(["status" => "error", "message" => "User not found"]);
    exit;
}

$response = [
    "status" => "success",
    "data" => $user
];

$json = json_encode($response);
if ($json === false) {
    echo json_encode(["status" => "error", "message" => "JSON Encode Error: " . json_last_error_msg()]);
} else {
    echo $json;
}
?>
