Add-Type -AssemblyName System.Windows.Forms
$ShowMsgDelegate={ param($message, $title, $buttons, $icon)
[System.Windows.Forms.MessageBox]::Show($message, $title, $buttons, $icon)}
$Delegate=[System.Management.Automation.ScriptBlock]::Create($ShowMsgDelegate)
$message="Hello, from Micky!"
$title="MessageBox"
$buttons=[System.Windows.Forms.MessageBoxButtons]::OK
$icon=[System.Windows.Forms.MessageBoxIcon]::Information
$delegate.Invoke($message, $title, $buttons, $icon)