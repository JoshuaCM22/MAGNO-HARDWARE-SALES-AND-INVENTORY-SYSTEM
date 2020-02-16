<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_ForgotPassword
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form_ForgotPassword))
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.lblTitle = New System.Windows.Forms.Label()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.btnSubmit = New System.Windows.Forms.Button()
        Me.txtSecretAnswer = New System.Windows.Forms.TextBox()
        Me.cmbboxSecretQuestion = New System.Windows.Forms.ComboBox()
        Me.chckboxSecretAnswer = New System.Windows.Forms.CheckBox()
        Me.txtUsername = New System.Windows.Forms.TextBox()
        Me.lblSecretAnswer = New System.Windows.Forms.Label()
        Me.lblSecretQuestion = New System.Windows.Forms.Label()
        Me.lblUsername = New System.Windows.Forms.Label()
        Me.btnBack = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.SystemColors.HotTrack
        Me.Panel1.Controls.Add(Me.lblTitle)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Top
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(548, 77)
        Me.Panel1.TabIndex = 0
        '
        'lblTitle
        '
        Me.lblTitle.AutoSize = True
        Me.lblTitle.Font = New System.Drawing.Font("Segoe UI", 15.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblTitle.ForeColor = System.Drawing.Color.White
        Me.lblTitle.Location = New System.Drawing.Point(166, 25)
        Me.lblTitle.Name = "lblTitle"
        Me.lblTitle.Size = New System.Drawing.Size(224, 30)
        Me.lblTitle.TabIndex = 0
        Me.lblTitle.Text = "FORGOT PASSWORD ?"
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.btnSubmit)
        Me.GroupBox1.Controls.Add(Me.txtSecretAnswer)
        Me.GroupBox1.Controls.Add(Me.cmbboxSecretQuestion)
        Me.GroupBox1.Controls.Add(Me.chckboxSecretAnswer)
        Me.GroupBox1.Controls.Add(Me.txtUsername)
        Me.GroupBox1.Controls.Add(Me.lblSecretAnswer)
        Me.GroupBox1.Controls.Add(Me.lblSecretQuestion)
        Me.GroupBox1.Controls.Add(Me.lblUsername)
        Me.GroupBox1.Dock = System.Windows.Forms.DockStyle.Top
        Me.GroupBox1.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.GroupBox1.Location = New System.Drawing.Point(0, 77)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(548, 295)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "DETAILS"
        '
        'btnSubmit
        '
        Me.btnSubmit.BackColor = System.Drawing.SystemColors.ButtonFace
        Me.btnSubmit.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnSubmit.FlatAppearance.BorderColor = System.Drawing.Color.Black
        Me.btnSubmit.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnSubmit.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnSubmit.ForeColor = System.Drawing.Color.Black
        Me.btnSubmit.Location = New System.Drawing.Point(210, 229)
        Me.btnSubmit.Name = "btnSubmit"
        Me.btnSubmit.Size = New System.Drawing.Size(144, 27)
        Me.btnSubmit.TabIndex = 0
        Me.btnSubmit.TabStop = False
        Me.btnSubmit.Text = "SUBMIT"
        Me.btnSubmit.UseVisualStyleBackColor = False
        '
        'txtSecretAnswer
        '
        Me.txtSecretAnswer.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtSecretAnswer.Location = New System.Drawing.Point(184, 144)
        Me.txtSecretAnswer.MaxLength = 40
        Me.txtSecretAnswer.Name = "txtSecretAnswer"
        Me.txtSecretAnswer.PasswordChar = Global.Microsoft.VisualBasic.ChrW(42)
        Me.txtSecretAnswer.Size = New System.Drawing.Size(307, 29)
        Me.txtSecretAnswer.TabIndex = 3
        '
        'cmbboxSecretQuestion
        '
        Me.cmbboxSecretQuestion.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cmbboxSecretQuestion.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.cmbboxSecretQuestion.FormattingEnabled = True
        Me.cmbboxSecretQuestion.Items.AddRange(New Object() {"", "What is your favorite color?", "What is your contact number?", "When is your birthday?", "What is love for you?", "Where were you born ?", "What is the meaning of life?", "What is your gender?", "What is your civil status in life?", "What is your dream in life?", "What things that makes you happy?", "What things that makes you sad?", "What things that makes you mad?", "What is your job?", "What is your favorite song?", "What is your favorite band?", "What is your favorite singer?"})
        Me.cmbboxSecretQuestion.Location = New System.Drawing.Point(184, 101)
        Me.cmbboxSecretQuestion.MaxLength = 40
        Me.cmbboxSecretQuestion.Name = "cmbboxSecretQuestion"
        Me.cmbboxSecretQuestion.Size = New System.Drawing.Size(307, 29)
        Me.cmbboxSecretQuestion.TabIndex = 2
        '
        'chckboxSecretAnswer
        '
        Me.chckboxSecretAnswer.AutoSize = True
        Me.chckboxSecretAnswer.BackColor = System.Drawing.Color.Transparent
        Me.chckboxSecretAnswer.Font = New System.Drawing.Font("Segoe UI", 9.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.chckboxSecretAnswer.ForeColor = System.Drawing.Color.Black
        Me.chckboxSecretAnswer.Location = New System.Drawing.Point(184, 180)
        Me.chckboxSecretAnswer.Name = "chckboxSecretAnswer"
        Me.chckboxSecretAnswer.Size = New System.Drawing.Size(144, 21)
        Me.chckboxSecretAnswer.TabIndex = 0
        Me.chckboxSecretAnswer.TabStop = False
        Me.chckboxSecretAnswer.Text = "Show Secret Answer"
        Me.chckboxSecretAnswer.UseVisualStyleBackColor = False
        '
        'txtUsername
        '
        Me.txtUsername.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtUsername.Location = New System.Drawing.Point(184, 59)
        Me.txtUsername.MaxLength = 12
        Me.txtUsername.Name = "txtUsername"
        Me.txtUsername.Size = New System.Drawing.Size(307, 29)
        Me.txtUsername.TabIndex = 1
        '
        'lblSecretAnswer
        '
        Me.lblSecretAnswer.AutoSize = True
        Me.lblSecretAnswer.BackColor = System.Drawing.Color.Transparent
        Me.lblSecretAnswer.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.lblSecretAnswer.Font = New System.Drawing.Font("Segoe UI", 12.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblSecretAnswer.ForeColor = System.Drawing.Color.Black
        Me.lblSecretAnswer.Location = New System.Drawing.Point(57, 144)
        Me.lblSecretAnswer.Name = "lblSecretAnswer"
        Me.lblSecretAnswer.Size = New System.Drawing.Size(117, 23)
        Me.lblSecretAnswer.TabIndex = 0
        Me.lblSecretAnswer.Text = "Secret Answer"
        '
        'lblSecretQuestion
        '
        Me.lblSecretQuestion.AutoSize = True
        Me.lblSecretQuestion.BackColor = System.Drawing.Color.Transparent
        Me.lblSecretQuestion.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.lblSecretQuestion.Font = New System.Drawing.Font("Segoe UI", 12.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblSecretQuestion.ForeColor = System.Drawing.Color.Black
        Me.lblSecretQuestion.Location = New System.Drawing.Point(46, 104)
        Me.lblSecretQuestion.Name = "lblSecretQuestion"
        Me.lblSecretQuestion.Size = New System.Drawing.Size(131, 23)
        Me.lblSecretQuestion.TabIndex = 0
        Me.lblSecretQuestion.Text = "Secret Question"
        '
        'lblUsername
        '
        Me.lblUsername.AutoSize = True
        Me.lblUsername.BackColor = System.Drawing.Color.Transparent
        Me.lblUsername.Font = New System.Drawing.Font("Segoe UI", 12.75!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblUsername.ForeColor = System.Drawing.Color.Black
        Me.lblUsername.Location = New System.Drawing.Point(81, 59)
        Me.lblUsername.Name = "lblUsername"
        Me.lblUsername.Size = New System.Drawing.Size(87, 23)
        Me.lblUsername.TabIndex = 0
        Me.lblUsername.Text = "Username"
        '
        'btnBack
        '
        Me.btnBack.BackColor = System.Drawing.SystemColors.HotTrack
        Me.btnBack.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnBack.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnBack.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnBack.ForeColor = System.Drawing.Color.White
        Me.btnBack.Location = New System.Drawing.Point(414, 422)
        Me.btnBack.Name = "btnBack"
        Me.btnBack.Size = New System.Drawing.Size(109, 33)
        Me.btnBack.TabIndex = 0
        Me.btnBack.TabStop = False
        Me.btnBack.Text = "BACK"
        Me.btnBack.UseVisualStyleBackColor = False
        '
        'Form_ForgotPassword
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(548, 473)
        Me.Controls.Add(Me.btnBack)
        Me.Controls.Add(Me.GroupBox1)
        Me.Controls.Add(Me.Panel1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Form_ForgotPassword"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents cmbboxSecretQuestion As System.Windows.Forms.ComboBox
    Friend WithEvents chckboxSecretAnswer As System.Windows.Forms.CheckBox
    Friend WithEvents txtUsername As System.Windows.Forms.TextBox
    Friend WithEvents lblSecretAnswer As System.Windows.Forms.Label
    Friend WithEvents lblSecretQuestion As System.Windows.Forms.Label
    Friend WithEvents lblUsername As System.Windows.Forms.Label
    Friend WithEvents btnBack As System.Windows.Forms.Button
    Friend WithEvents txtSecretAnswer As System.Windows.Forms.TextBox
    Friend WithEvents btnSubmit As System.Windows.Forms.Button
    Friend WithEvents lblTitle As System.Windows.Forms.Label
End Class
