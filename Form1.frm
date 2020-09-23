VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   5475
   ClientLeft      =   1650
   ClientTop       =   1755
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   2  'Cross
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   365
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   439
   Begin VB.PictureBox src1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   1620
      Picture         =   "Form1.frx":19C52
      ScaleHeight     =   73
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   142
      TabIndex        =   1
      Top             =   3120
      Visible         =   0   'False
      Width           =   2130
   End
   Begin VB.PictureBox msk1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1095
      Left            =   1620
      Picture         =   "Form1.frx":216A0
      ScaleHeight     =   73
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   142
      TabIndex        =   0
      Top             =   2040
      Visible         =   0   'False
      Width           =   2130
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Form_Load()
'setup for alphablitting
Setup src1.hdc, msk1.hdc 'Source, Mask

End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
'alphablt to the current X,Y of the moust
BLTIT X, Y
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'delete all memory consumers
Cleanup
End Sub
