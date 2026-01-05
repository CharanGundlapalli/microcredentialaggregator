<?php
header("Content-Type: application/json");
session_start();
include "db.php";

/* ---------- ADMIN AUTH CHECK ---------- */
if (!isset($_SESSION['user_uid']) || $_SESSION['role'] !== 'admin') {
    echo json_encode([
        "status" => "error",
        "message" => "Unauthorized"
    ]);
    exit;
}

/* ---------- INPUT VALIDATION ---------- */
$user_uid = $_GET['user_uid'] ?? '';

if (empty($user_uid)) {
    echo json_encode([
        "status" => "error",
        "message" => "user_uid is required"
    ]);
    exit;
}

/* ---------- FETCH USER DETAILS ---------- */
$query = "
    SELECT
        user_uid,
        full_name,
        email,
        role,
        status,
        dob,
        gender,
        created_at
    FROM users
    WHERE user_uid = '$user_uid'
";

$result = mysqli_query($conn, $query);

if (!$result || mysqli_num_rows($result) === 0) {
    echo json_encode([
        "status" => "error",
        "message" => "User not found"
    ]);
    exit;
}

$user = mysqli_fetch_assoc($result);

/* ---------- RESPONSE ---------- */
echo json_encode([
    "status" => "success",
    "user" => $user
]);
