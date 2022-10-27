$body = "Hey Bryon, its Greg Thompson from HR. Our directors want everyone to complete this survey by the end of the day. Please navigate to the survey site and complete it at your earliest convenience. http://64.132.36.76/pointy"
$subject = "HR Survey"
$from = "greg.thompson@metech.com"
$mailto = "bryon.ball@meetech.com"
$server = "11.25.15.4"


Send-MailMessage -SmtpServer $server -Port 25 -To $mailto -From $from -Priority High -Subject $subject -Body $body