$body = "Hey Bryon. It's Greg from the HR department. We are gathering a list of HR complaints from the company and need everyone to enter their info on this spreadsheet. Ive already automated the process, so all you have to do is open the document and enable the macros, then your info will populate and you can close the file. This needs to be done today, so please complete it at your earliest convenience."
$subject = "HR Report for the month"
$from = "greg.thompson@metech.com"
$mailto = "bryon.ball@meetech.com"
$server = "11.25.15.4"
$file = "C:\Users\Administrator\Desktop\hr_reports.xlsm"


Send-MailMessage -SmtpServer $server -Port 25 -To $mailto -From $sender -Priority High -Subject $subject -Body $body -Attachments $file