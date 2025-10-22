Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
$form=New-Object System.Windows.Forms.Form
$form.Text='Data'
$form.Size=New-Object System.Drawing.Size(300, 200)
$form.StartPosition='CenterScreen'
$OkButton=New-Object System.Windows.Forms.Button
$OkButton.Location=New-Object System.Drawing.Point(75, 100)
$OkButton.Size=New-Object System.Drawing.Size(75,23)
$OkButton.Text='Ok'
$OkButton.DialogResult=[System.Windows.Forms.DialogResult]::OK
$Form.AcceptButton=$OkButton
$Form.Controls.Add($OkButton)
$CancelButton=New-Object System.Windows.Forms.Button
$CancelButton.Location=New-Object System.Drawing.Point(150, 120)
$CancelButton.Size=New-Object System.Drawing.Size(75, 23)
$CancelButton.Text='Cancel'
$CancelButton.DialogResult=[System.Windows.Forms.DialogResult]::Cancel
$Form.CancelButton=$CancelButton
$Form.Controls.Add($CancelButton)
$label=New-Object System.Windows.Forms.Label
$label.Location=New-Object System.Drawing.Point(10,20)
$label.Size=New-Object System.Drawing.Size(280,20)
$label.Text='Please enter the information in the space below:'
$form.Controls.Add($label)
$textBox=New-Object System.Windows.Forms.TextBox
$textBox.Location=New-Object System.Drawing.Point(10,40)
$textBox.Size=New-Object System.Drawing.Size(260,20)
$form.Controls.Add($textBox)
$form.Topmost=$true
$form.Add_Shown({$textBox.Select()})
$result = $form.ShowDialog()
if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $x=$textBox.Text
    $x
}