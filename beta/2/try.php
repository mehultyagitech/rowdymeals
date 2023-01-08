<?php
$timezone = date_default_timezone_get();
echo "The current server timezone is: " . $timezone;
$date = date('Y-m-d H:i:s');
echo "The current server time is: " . $date;
 
 // 24-hour format of an hour without leading zeros (0 through 23)
$Hour = date('G');

if ( $Hour >= 22 && $Hour <= 9) {
    echo "OUT OF SERVICE ";
} 
?>