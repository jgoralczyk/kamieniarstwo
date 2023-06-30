<?php
include './laczenie.php';
header("Location: ./kontakt.php");
if (isset($_POST['sendme'])) {
    $imie = $_POST['imie'];
    $wiadomosc = $_POST['text'];
    if (strlen($imie) < 3  || strlen($wiadomosc) < 3 ||  strlen($wiadomosc) > 100) exit();
    $laczenie->query("INSERT INTO wiadomosci (imię, wiadomosc) VALUES ('$imie','$wiadomosc');");
} 
exit();
?>