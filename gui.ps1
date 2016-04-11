function GenerateForm {

[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null

$form1 = New-Object System.Windows.Forms.Form
$button4 = New-Object System.Windows.Forms.Button
$button3 = New-Object System.Windows.Forms.Button
$button2 = New-Object System.Windows.Forms.Button
$button1 = New-Object System.Windows.Forms.Button
$panel1 = New-Object System.Windows.Forms.Panel
$Title = New-Object System.Windows.Forms.Label
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState

$button3_OnClick = {

}

$button1_OnClick = {

}

$button2_OnClick= 
{
#TODO: Place custom script here

}

$handler_label1_Click = {

}

$button4_OnClick = {

}

$OnLoadForm_StateCorrection = {
	$form1.WindowState = $InitialFormWindowState
}

$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 308
$System_Drawing_Size.Width = 670
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.MaximizeBox = $False
$form1.Name = "form1"
$form1.ShowIcon = $False
$form1.Text = "Media GmbH"

$button4.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 553
$System_Drawing_Point.Y = 6
$button4.Location = $System_Drawing_Point
$button4.Name = "button4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 100
$button4.Size = $System_Drawing_Size
$button4.TabIndex = 5
$button4.Text = "button4"
$button4.UseVisualStyleBackColor = $True
$button4.add_Click($button4_OnClick)

$form1.Controls.Add($button4)


$button3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 442
$System_Drawing_Point.Y = 6
$button3.Location = $System_Drawing_Point
$button3.Name = "button3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 100
$button3.Size = $System_Drawing_Size
$button3.TabIndex = 4
$button3.Text = "button3"
$button3.UseVisualStyleBackColor = $True
$button3.add_Click($button3_OnClick)

$form1.Controls.Add($button3)


$button2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 130
$System_Drawing_Point.Y = 6
$button2.Location = $System_Drawing_Point
$button2.Name = "button2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 100
$button2.Size = $System_Drawing_Size
$button2.TabIndex = 3
$button2.Text = "button2"
$button2.UseVisualStyleBackColor = $True
$button2.add_Click($button2_OnClick)

$form1.Controls.Add($button2)


$button1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 18
$System_Drawing_Point.Y = 6
$button1.Location = $System_Drawing_Point
$button1.Name = "button1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 35
$System_Drawing_Size.Width = 100
$button1.Size = $System_Drawing_Size
$button1.TabIndex = 2
$button1.Text = "button1"
$button1.UseVisualStyleBackColor = $True
$button1.add_Click($button1_OnClick)

$form1.Controls.Add($button1)

$panel1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 19
$System_Drawing_Point.Y = 46
$panel1.Location = $System_Drawing_Point
$panel1.Name = "panel1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 247
$System_Drawing_Size.Width = 633
$panel1.Size = $System_Drawing_Size
$panel1.TabIndex = 1

$form1.Controls.Add($panel1)

$Title.DataBindings.DefaultDataSourceUpdateMode = 0
$Title.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",20,0,3,0)

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 250
$System_Drawing_Point.Y = 6
$Title.Location = $System_Drawing_Point
$Title.Name = "Title"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 32
$System_Drawing_Size.Width = 173
$Title.Size = $System_Drawing_Size
$Title.TabIndex = 0
$Title.Text = "Media GmbH"
$Title.add_Click($handler_label1_Click)

$form1.Controls.Add($Title)

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

}

GenerateForm