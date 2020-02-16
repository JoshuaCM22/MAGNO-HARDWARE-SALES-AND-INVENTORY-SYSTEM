<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form_Purchasing
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form_Purchasing))
        Me.lblProductCategory = New System.Windows.Forms.Label()
        Me.txtProductCategory = New System.Windows.Forms.TextBox()
        Me.txtPrice = New System.Windows.Forms.TextBox()
        Me.txtProductName = New System.Windows.Forms.TextBox()
        Me.lblPrice = New System.Windows.Forms.Label()
        Me.lblProductName = New System.Windows.Forms.Label()
        Me.txtQuantity = New System.Windows.Forms.TextBox()
        Me.txtUnit = New System.Windows.Forms.TextBox()
        Me.txtNameOfSupplier = New System.Windows.Forms.TextBox()
        Me.lblUnit = New System.Windows.Forms.Label()
        Me.Label34 = New System.Windows.Forms.Label()
        Me.lblNameOfSupplier = New System.Windows.Forms.Label()
        Me.lblQuantity = New System.Windows.Forms.Label()
        Me.btnPurchase = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'lblProductCategory
        '
        Me.lblProductCategory.AutoSize = True
        Me.lblProductCategory.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblProductCategory.ForeColor = System.Drawing.Color.White
        Me.lblProductCategory.Location = New System.Drawing.Point(39, 140)
        Me.lblProductCategory.Name = "lblProductCategory"
        Me.lblProductCategory.Size = New System.Drawing.Size(163, 25)
        Me.lblProductCategory.TabIndex = 0
        Me.lblProductCategory.Text = "Product Category:"
        '
        'txtProductCategory
        '
        Me.txtProductCategory.BackColor = System.Drawing.Color.FromArgb(CType(CType(229, Byte), Integer), CType(CType(231, Byte), Integer), CType(CType(233, Byte), Integer))
        Me.txtProductCategory.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtProductCategory.ForeColor = System.Drawing.Color.Black
        Me.txtProductCategory.Location = New System.Drawing.Point(206, 141)
        Me.txtProductCategory.Name = "txtProductCategory"
        Me.txtProductCategory.Size = New System.Drawing.Size(438, 33)
        Me.txtProductCategory.TabIndex = 0
        Me.txtProductCategory.TabStop = False
        Me.txtProductCategory.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtPrice
        '
        Me.txtPrice.BackColor = System.Drawing.Color.FromArgb(CType(CType(229, Byte), Integer), CType(CType(231, Byte), Integer), CType(CType(233, Byte), Integer))
        Me.txtPrice.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtPrice.ForeColor = System.Drawing.Color.Black
        Me.txtPrice.Location = New System.Drawing.Point(206, 101)
        Me.txtPrice.Name = "txtPrice"
        Me.txtPrice.Size = New System.Drawing.Size(438, 33)
        Me.txtPrice.TabIndex = 0
        Me.txtPrice.TabStop = False
        Me.txtPrice.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtProductName
        '
        Me.txtProductName.BackColor = System.Drawing.Color.FromArgb(CType(CType(229, Byte), Integer), CType(CType(231, Byte), Integer), CType(CType(233, Byte), Integer))
        Me.txtProductName.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtProductName.ForeColor = System.Drawing.Color.Black
        Me.txtProductName.Location = New System.Drawing.Point(206, 61)
        Me.txtProductName.Name = "txtProductName"
        Me.txtProductName.Size = New System.Drawing.Size(438, 33)
        Me.txtProductName.TabIndex = 0
        Me.txtProductName.TabStop = False
        Me.txtProductName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'lblPrice
        '
        Me.lblPrice.AutoSize = True
        Me.lblPrice.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblPrice.ForeColor = System.Drawing.Color.White
        Me.lblPrice.Location = New System.Drawing.Point(144, 102)
        Me.lblPrice.Name = "lblPrice"
        Me.lblPrice.Size = New System.Drawing.Size(58, 25)
        Me.lblPrice.TabIndex = 0
        Me.lblPrice.Text = "Price:"
        '
        'lblProductName
        '
        Me.lblProductName.AutoSize = True
        Me.lblProductName.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblProductName.ForeColor = System.Drawing.Color.White
        Me.lblProductName.Location = New System.Drawing.Point(65, 63)
        Me.lblProductName.Name = "lblProductName"
        Me.lblProductName.Size = New System.Drawing.Size(137, 25)
        Me.lblProductName.TabIndex = 0
        Me.lblProductName.Text = "Product Name:"
        '
        'txtQuantity
        '
        Me.txtQuantity.BackColor = System.Drawing.Color.FromArgb(CType(CType(229, Byte), Integer), CType(CType(231, Byte), Integer), CType(CType(233, Byte), Integer))
        Me.txtQuantity.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtQuantity.ForeColor = System.Drawing.Color.Black
        Me.txtQuantity.Location = New System.Drawing.Point(206, 260)
        Me.txtQuantity.MaxLength = 6
        Me.txtQuantity.Name = "txtQuantity"
        Me.txtQuantity.Size = New System.Drawing.Size(438, 33)
        Me.txtQuantity.TabIndex = 1
        Me.txtQuantity.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtUnit
        '
        Me.txtUnit.BackColor = System.Drawing.Color.FromArgb(CType(CType(229, Byte), Integer), CType(CType(231, Byte), Integer), CType(CType(233, Byte), Integer))
        Me.txtUnit.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtUnit.ForeColor = System.Drawing.Color.Black
        Me.txtUnit.Location = New System.Drawing.Point(206, 220)
        Me.txtUnit.MaxLength = 0
        Me.txtUnit.Name = "txtUnit"
        Me.txtUnit.Size = New System.Drawing.Size(438, 33)
        Me.txtUnit.TabIndex = 0
        Me.txtUnit.TabStop = False
        Me.txtUnit.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'txtNameOfSupplier
        '
        Me.txtNameOfSupplier.BackColor = System.Drawing.Color.FromArgb(CType(CType(229, Byte), Integer), CType(CType(231, Byte), Integer), CType(CType(233, Byte), Integer))
        Me.txtNameOfSupplier.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtNameOfSupplier.ForeColor = System.Drawing.Color.Black
        Me.txtNameOfSupplier.Location = New System.Drawing.Point(206, 180)
        Me.txtNameOfSupplier.Name = "txtNameOfSupplier"
        Me.txtNameOfSupplier.Size = New System.Drawing.Size(438, 33)
        Me.txtNameOfSupplier.TabIndex = 0
        Me.txtNameOfSupplier.TabStop = False
        Me.txtNameOfSupplier.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        '
        'lblUnit
        '
        Me.lblUnit.AutoSize = True
        Me.lblUnit.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblUnit.Location = New System.Drawing.Point(151, 219)
        Me.lblUnit.Name = "lblUnit"
        Me.lblUnit.Size = New System.Drawing.Size(51, 25)
        Me.lblUnit.TabIndex = 0
        Me.lblUnit.Text = "Unit:"
        '
        'Label34
        '
        Me.Label34.AutoSize = True
        Me.Label34.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label34.ForeColor = System.Drawing.Color.White
        Me.Label34.Location = New System.Drawing.Point(65, 256)
        Me.Label34.Name = "Label34"
        Me.Label34.Size = New System.Drawing.Size(0, 25)
        Me.Label34.TabIndex = 54
        Me.Label34.Visible = False
        '
        'lblNameOfSupplier
        '
        Me.lblNameOfSupplier.AutoSize = True
        Me.lblNameOfSupplier.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblNameOfSupplier.ForeColor = System.Drawing.Color.White
        Me.lblNameOfSupplier.Location = New System.Drawing.Point(42, 179)
        Me.lblNameOfSupplier.Name = "lblNameOfSupplier"
        Me.lblNameOfSupplier.Size = New System.Drawing.Size(163, 25)
        Me.lblNameOfSupplier.TabIndex = 0
        Me.lblNameOfSupplier.Text = "Name of Supplier:"
        '
        'lblQuantity
        '
        Me.lblQuantity.AutoSize = True
        Me.lblQuantity.Font = New System.Drawing.Font("Segoe UI", 14.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lblQuantity.ForeColor = System.Drawing.Color.White
        Me.lblQuantity.Location = New System.Drawing.Point(114, 259)
        Me.lblQuantity.Name = "lblQuantity"
        Me.lblQuantity.Size = New System.Drawing.Size(88, 25)
        Me.lblQuantity.TabIndex = 0
        Me.lblQuantity.Text = "Quantity:"
        '
        'btnPurchase
        '
        Me.btnPurchase.BackColor = System.Drawing.Color.Green
        Me.btnPurchase.Cursor = System.Windows.Forms.Cursors.Hand
        Me.btnPurchase.FlatAppearance.BorderSize = 0
        Me.btnPurchase.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.btnPurchase.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnPurchase.ForeColor = System.Drawing.Color.White
        Me.btnPurchase.Location = New System.Drawing.Point(206, 310)
        Me.btnPurchase.Name = "btnPurchase"
        Me.btnPurchase.Size = New System.Drawing.Size(116, 38)
        Me.btnPurchase.TabIndex = 0
        Me.btnPurchase.TabStop = False
        Me.btnPurchase.Text = "PURCHASE"
        Me.btnPurchase.UseVisualStyleBackColor = False
        '
        'Frm_Purchasing
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.FromArgb(CType(CType(28, Byte), Integer), CType(CType(40, Byte), Integer), CType(CType(51, Byte), Integer))
        Me.ClientSize = New System.Drawing.Size(714, 382)
        Me.Controls.Add(Me.btnPurchase)
        Me.Controls.Add(Me.txtQuantity)
        Me.Controls.Add(Me.txtUnit)
        Me.Controls.Add(Me.txtNameOfSupplier)
        Me.Controls.Add(Me.lblUnit)
        Me.Controls.Add(Me.Label34)
        Me.Controls.Add(Me.lblNameOfSupplier)
        Me.Controls.Add(Me.lblQuantity)
        Me.Controls.Add(Me.lblProductCategory)
        Me.Controls.Add(Me.txtProductCategory)
        Me.Controls.Add(Me.txtPrice)
        Me.Controls.Add(Me.txtProductName)
        Me.Controls.Add(Me.lblPrice)
        Me.Controls.Add(Me.lblProductName)
        Me.ForeColor = System.Drawing.Color.White
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "Frm_Purchasing"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "PURCHASING"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents lblProductCategory As System.Windows.Forms.Label
    Friend WithEvents txtProductCategory As System.Windows.Forms.TextBox
    Friend WithEvents txtPrice As System.Windows.Forms.TextBox
    Friend WithEvents txtProductName As System.Windows.Forms.TextBox
    Friend WithEvents lblPrice As System.Windows.Forms.Label
    Friend WithEvents lblProductName As System.Windows.Forms.Label
    Friend WithEvents txtQuantity As System.Windows.Forms.TextBox
    Friend WithEvents txtUnit As System.Windows.Forms.TextBox
    Friend WithEvents txtNameOfSupplier As System.Windows.Forms.TextBox
    Friend WithEvents lblUnit As System.Windows.Forms.Label
    Friend WithEvents Label34 As System.Windows.Forms.Label
    Friend WithEvents lblNameOfSupplier As System.Windows.Forms.Label
    Friend WithEvents lblQuantity As System.Windows.Forms.Label
    Friend WithEvents btnPurchase As System.Windows.Forms.Button
End Class
