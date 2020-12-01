<?php

header('Access-Control-Allow-Origin:*');
header('Content-Type: application/json; charset=UTF-8');
$results = [];
$visitor_name = '';
$visitor_email = '';
$visitor_message = '';

if (isset($_POST['firstname'])) {
    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
}

if (isset($_POST['lastname'])) {
    $visitor_name .= ' ' . filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
}

if (isset($_POST['email'])) {
    $visitor_email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
}

if (isset($_POST['message'])) {
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
}

$results['name'] = $visitor_name;
$results['message'] = $visitor_message;

$email_subject = 'Inquiry from Portfolio Site';
$email_recipient = 'info@icando.design'; // Your Email, or AKA, "To" email
$email_message = sprintf('Name: %s, Email: %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);

$email_headers = [
    'From' => $visitor_email
];

$email_result = mail($email_recipient, $email_subject, $email_message, $email_headers);
if ($email_result) {
    $results['message'] = sprintf('Thank you for contacting us, %s. You will get a reply within 24 hours.', $visitor_name);
} else {
    $results['message'] = sprintf('We are sorry but the email did not go through.');
}

echo json_encode($results);
