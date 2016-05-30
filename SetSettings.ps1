function SetSettings{
  [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
  [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

  $objForm = New-Object System.Windows.Forms.Form
  $objForm.Text = "Set Folder Path"
  $objForm.Size = New-Object System.Drawing.Size(300,200)
  $objForm.StartPosition = "CenterScreen"

  $objForm.KeyPreview = $True
  $objForm.Add_KeyDown({if ($_.KeyCode -eq "Enter")
      {
        $objTextBox.Text | out-file .\settings.txt
        $objForm.Close()
  }})
  $objForm.Add_KeyDown({if ($_.KeyCode -eq "Escape")
      {$objForm.Close()}})

  $OKButton = New-Object System.Windows.Forms.Button
  $OKButton.Location = New-Object System.Drawing.Size(75,120)
  $OKButton.Size = New-Object System.Drawing.Size(75,23)
  $OKButton.Text = "OK"
  $OKButton.Add_Click({
    if(test-path $objTextBox.Text){
      $objTextBox.Text | out-file .\settings.txt
      $objForm.Close()
    } else {
      showError
    }
  })
  $objForm.Controls.Add($OKButton)

  $CancelButton = New-Object System.Windows.Forms.Button
  $CancelButton.Location = New-Object System.Drawing.Size(150,120)
  $CancelButton.Size = New-Object System.Drawing.Size(75,23)
  $CancelButton.Text = "Cancel"
  $CancelButton.Add_Click({$objForm.Close()})
  $objForm.Controls.Add($CancelButton)

  $objLabel = New-Object System.Windows.Forms.Label
  $objLabel.Location = New-Object System.Drawing.Size(10,20)
  $objLabel.Size = New-Object System.Drawing.Size(280,20)
  $objLabel.Text = "Enter the folder path"
  $objForm.Controls.Add($objLabel)

  $objTextBox = New-Object System.Windows.Forms.TextBox
  $objTextBox.Location = New-Object System.Drawing.Size(10,40)
  $objTextBox.Size = New-Object System.Drawing.Size(260,20)
  $objForm.Controls.Add($objTextBox)

  $objForm.Topmost = $True

  $objForm.Add_Shown({$objForm.Activate()})
  [void] $objForm.ShowDialog()
}
function showError{
  [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
  [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")

  $objForm = New-Object System.Windows.Forms.Form
  $objForm.Text = "Invalid path"
  $objForm.Size = New-Object System.Drawing.Size(300,200)
  $objForm.StartPosition = "CenterScreen"

  $objForm.KeyPreview = $True

  $OKButton = New-Object System.Windows.Forms.Button
  $OKButton.Location = New-Object System.Drawing.Size(75,120)
  $OKButton.Size = New-Object System.Drawing.Size(75,23)
  $OKButton.Text = "OK"
  $OKButton.Add_Click({
      $objForm.Close()
  })

  $objForm.Controls.Add($OKButton)

  $objLabel = New-Object System.Windows.Forms.Label
  $objLabel.Location = New-Object System.Drawing.Size(10,20)
  $objLabel.Size = New-Object System.Drawing.Size(280,20)
  $objLabel.Text = "Invalid path"
  $objForm.Controls.Add($objLabel)

  $objForm.Topmost = $True

  $objForm.Add_Shown({$objForm.Activate()})
  [void] $objForm.ShowDialog()
}
