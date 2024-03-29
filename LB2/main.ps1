#Generated Form Function
function GenerateForm {
	########################################################################
	# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
	# Generated On: 19.12.2023 10:02
	# Generated By: Diego Straub
	# Choose between the two options USBBackUP/ Read out Domain Data
	########################################################################

	#region Import the Assemblies
	[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
	[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
	#endregion

	#region Generated Form Objects
	$frm_actions = New-Object System.Windows.Forms.Form
	$btn_backup = New-Object System.Windows.Forms.Button
	$btn_data = New-Object System.Windows.Forms.Button
	$txt_lbl = New-Object System.Windows.Forms.Label
	$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
	$FileToOpenBackUp = Join-Path -Path $PSScriptRoot -ChildPath ".\AutoBackUp.ps1"
	$FileToOpendomainoptions = Join-Path -Path $PSScriptRoot -ChildPath ".\domainoptions.ps1"
	#endregion Generated Form Objects

	#----------------------------------------------
	#Generated Event Script Blocks
	#----------------------------------------------
	#Provide Custom Code for events specified in PrimalForms.
	# $handler_button1_Click = 
	# {
	# 	#TODO: Place custom script here

	# }


# Opens the domainoptions.ps1 File

	$btn_data_OnClick = 
	{
		 #TODO: Place custom script here
		 
		 $frm_actions.Hide()
		 &$FileToOpendomainoptions
		 $frm_actions.show()
	}
# Opens my previous Project 
	$btn_backup_OnClick = 
	{
		#TODO: Place custom script here
		$frm_actions.Hide()
		&$FileToOpenBackUp
		$frm_actions.show()
	}

	$OnLoadForm_StateCorrection =
	{ #Correct the initial state of the form to prevent the .Net maximized form issue
		$frm_actions.WindowState = $InitialFormWindowState
	}

	#----------------------------------------------
	#region Generated Form Code
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 108
	$System_Drawing_Size.Width = 220
	$frm_actions.ClientSize = $System_Drawing_Size
	$frm_actions.DataBindings.DefaultDataSourceUpdateMode = 0
	$frm_actions.Name = "frm_actions"
	$frm_actions.Text = "Actions"


	$btn_backup.DataBindings.DefaultDataSourceUpdateMode = 0

	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 115
	$System_Drawing_Point.Y = 47
	$btn_backup.Location = $System_Drawing_Point
	$btn_backup.Name = "btn_backup"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 40
	$System_Drawing_Size.Width = 100
	$btn_backup.Size = $System_Drawing_Size
	$btn_backup.TabIndex = 2
	$btn_backup.Text = "USB BackUp"
	$btn_backup.UseVisualStyleBackColor = $True
	$btn_backup.add_MouseCaptureChanged($btn_backup_OnClick)
	# $btn_backup.add_Click($btn_backup_OnClick)

	$frm_actions.Controls.Add($btn_backup)


	$btn_data.DataBindings.DefaultDataSourceUpdateMode = 0

	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 12
	$System_Drawing_Point.Y = 47
	$btn_data.Location = $System_Drawing_Point
	$btn_data.Name = "btn_data"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 40
	$System_Drawing_Size.Width = 100
	$btn_data.Size = $System_Drawing_Size
	$btn_data.TabIndex = 1
	$btn_data.Text = "Read out Domain Data"
	$btn_data.UseVisualStyleBackColor = $True
	$btn_data.add_MouseCaptureChanged($btn_data_OnClick)
	

	$frm_actions.Controls.Add($btn_data)

	$txt_lbl.DataBindings.DefaultDataSourceUpdateMode = 0

	$System_Drawing_Point = New-Object System.Drawing.Point
	$System_Drawing_Point.X = 12
	$System_Drawing_Point.Y = 9
	$txt_lbl.Location = $System_Drawing_Point
	$txt_lbl.Name = "txt_lbl"
	$System_Drawing_Size = New-Object System.Drawing.Size
	$System_Drawing_Size.Height = 23
	$System_Drawing_Size.Width = 120
	$txt_lbl.Size = $System_Drawing_Size
	$txt_lbl.TabIndex = 0
	$txt_lbl.Text = "Choose your action"

	$frm_actions.Controls.Add($txt_lbl)

	#endregion Generated Form Code

	#Save the initial state of the form
	$InitialFormWindowState = $frm_actions.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$frm_actions.add_Load($OnLoadForm_StateCorrection)
	#Show the Form
	$frm_actions.ShowDialog() | Out-Null

} #End Function

#Call the Function
GenerateForm
