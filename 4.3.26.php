<?php 
$dblocation = "192.168.0.0.1";
$dbname = "igadb";
$dbuser = "igauser@localhost";
$dbpasswd = "123456";

$id = $_POST['id'];
$fio = $_POST['fio'];
$money = $_POST['money'];
$gender = $_POST['gender'];
$birthday = $_POST['birthday'];

$result = mysql_query("INSERT INTO igatable (id, fio, money, gender, birthday) VALUES ('$id', '$fio', '$money', '$gender', '$birthday')");
if($result == 'true')
{echo "Ваши данные успешно добавлены";}
else {echo "Ваши данные не добавлены";}
?>

