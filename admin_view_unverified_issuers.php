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

/* ---------- FETCH UNVERIFIED ISSUERS (MINIMAL FIELDS) ---------- */
$query = "
    SELECT
        issuer_id,
        user_uid,
        issuer_name,
        created_at
    FROM issuers
    WHERE verified = 0
    ORDER BY created_at DESC
";

$result = mysqli_query($conn, $query);

if (!$result) {
    echo json_encode([
        "status" => "error",
        "message" => "Database error"
    ]);
    exit;
}

$issuers = [];

while ($row = mysqli_fetch_assoc($result)) {
    $issuers[] = [
        "issuer_id"   => $row['issuer_id'],
        "user_uid"    => $row['user_uid'],
        "issuer_name" => $row['issuer_name'],
        "created_at"  => $row['created_at']
    ];
}

/* ---------- RESPONSE ---------- */
echo json_encode([
    "status" => "success",
    "count" => count($issuers),
    "issuers" => $issuers
]);
