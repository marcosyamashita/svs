<?php

// send text/plain and text/html multiple e-mail messages (multipart/alternative)
// send to multiple e-mail addresses (Cc and Bcc)
// attach an embed HTML image (inline) and file (attachment)
// using a relay smtp server with authentication and TLS (SSL) connection
// notice: make sure you have OpenSSL module (extension) enable on your PHP configuration in order to use TLS/SSL connection

// E_ALL -> debugging
// false -> public
error_reporting(E_ALL);
// 0 -> no time limit
set_time_limit(0);

// path to smtp.php from XPM2 package
require_once '../../smtp.php';

$mail = new SMTP;
$mail->Delivery('relay');
$mail->Relay('smtp.sicoobdf.coop.br', 'informativo@sicoobdf.coop.br', 'noel', 25, 'informativo@sicoobdf.coop.br', false);
$mail->TimeOut(10);
$mail->Priority('high');
$mail->From('informativo@sicoobdf.coop.br', 'Informativo Sicoob DF');
$mail->AddTo('victor.avoc@gmail.com', 'Victor Cova - gmail');
$mail->AddCc('victor.avoc@gmail.com', 'Victor AVOC');
//$mail->AddBcc('hidden@host.com');
$mail->Text("CORPO DO EMAIL");
//$mail->Html("$body");
//$mail->AttachFile('mundo.JPG');
//$mail->AttachFile('image.gif', 'photo.gif', 'autodetect', 'inline');
//$mail->AttachFile('file.zip');
$sent = $mail->Send("assunto");

echo $sent ? 'Success' : 'Error';

// for debugging
echo '<br>Result: '.$mail->result;

?>
