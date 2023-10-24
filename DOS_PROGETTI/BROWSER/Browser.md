Browser.md
	
	Note
		 VB6 VISUALIZZARE IL BROWSER DELLE CARTELLE DI UNA RETE

		 	
		 	Procedura da studiare e concludere.

			Per visualizzare una finestra che riporta le varie cartelle di una rete, tipo esplora risorse di rete, di windows, 
			dobbiamo utilizzare delle api, inserire in una form, un pulsante, una casella di testo. 
			Questo codice si può utilizzare anche per il linguaggio VBA.

			nell'evento click del pulsante inserite il seguente codice

				CODICE_01

					Private Sub cmdbrowser_Click()
					txtpercorso.Text = GetBrowseNetworkShare(Me.hWnd, False, False)
					End Sub


				CODICE_02
				Private Const BIF_STATUSTEXT As Long = &H4
				Private Declare Function lstrlenW Lib "kernel32" _
				(ByVal lpString As Long) As Long
				Private Const BIF_RETURNFSANCESTORS As Long = &H8
				Private Const NOERROR As Long = 0
				Private Const MAX_PATH As Long = 260
				Private Const CSIDL_NETWORK As Long = &H12
				Private Const CSIDL_PRINTERS As Long = &H4

				'For finding a folder to start document searching
				Private Const BIF_RETURNONLYFSDIRS As Long = &H1

				'For starting the Find Computer
				Private Const BIF_DONTGOBELOWDOMAIN As Long = &H2

				'Add an editbox to the dialog: SHELL 5.0 or later only!
				Private Const BIF_EDITBOX As Long = &H10

				'insist on valid result (or CANCEL)
				Private Const BIF_VALIDATE As Long = &H20

				'Use the new dialog layout with the ability
				'to resize: SHELL 5.0 or later only!
				Private Const BIF_NEWDIALOGSTYLE As Long = &H40
				Private Const BIF_USENEWUI As Long = (BIF_NEWDIALOGSTYLE Or BIF_EDITBOX)

				'Allow URLs to be displayed or entered
				'(Requires BIF_USENEWUI): SHELL 5.0 or later only!
				Private Const BIF_BROWSEINCLUDEURLS As Long = &H80

				'Add a UA hint to the dialog, in place of the
				'edit box. May not be combined with BIF_EDITBOX: SHELL 6.0 or later only!
				Private Const BIF_UAHINT As Long = &H100

				'Do not add the "New Folder" button to the dialog.
				'Only applicable with BIF_NEWDIALOGSTYLE: SHELL 5.0 or later only!
				Private Const BIF_NONEWFOLDERBUTTON As Long = &H200

				'Browsing for Computers
				Private Const BIF_BROWSEFORCOMPUTER As Long = &H1000

				'Browsing for Printers
				Private Const BIF_BROWSEFORPRINTER As Long = &H2000

				'Browsing for Everything
				Private Const BIF_BROWSEINCLUDEFILES As Long = &H4000

				'sharable resources displayed (remote shares,
				'requires BIF_USENEWUI): SHELL 5.0 or later only!
				Private Const BIF_SHAREABLE As Long = &H8000&

				Private Type BROWSEINFO 'bi
				hOwner As Long
				pidlRoot As Long
				pszDisplayName As String 'return display name of item selected
				lpszTitle As String 'text to go in the banner over the tree
				ulFlags As Long 'flags that control the return stuff
				lpfn As Long
				lParam As Long 'extra info passed back in callbacks
				iImage As Long 'output var: where to return the Image index
				End Type

				Private Declare Function SHGetPathFromIDList Lib "shell32.dll" _
				Alias "SHGetPathFromIDListA" _
				(ByVal pidl As Long, _
				ByVal pszPath As String) As Long

				Private Declare Function SHBrowseForFolder Lib "shell32.dll" _
				Alias "SHBrowseForFolderA" _
				(lpBrowseInfo As BROWSEINFO) As Long

				Private Declare Function SHGetSpecialFolderLocation Lib "shell32.dll" _
				(ByVal hwndOwner As Long, _
				ByVal nFolder As Long, _
				pidl As Long) As Long

				Private Declare Sub CoTaskMemFree Lib "ole32.dll" (ByVal pv As Long)

				'Public Declare Function lstrlenW Lib "kernel32" _
				' (ByVal lpString As Long) As Long


				public Function GetBrowseNetworkShare(hwndOwner As Long, _
				bNewDialog As Boolean, _
				bNoNewFolder As Boolean) As String

				'returns only a valid share on a
				'network server or workstation
				Dim bi As BROWSEINFO
				Dim pidl As Long
				Dim spath As String

				'obtain the pidl to the special folder 'network'
				If SHGetSpecialFolderLocation(hwndOwner, _
				CSIDL_NETWORK, _
				pidl) = NOERROR Then

				'fill in the required members, limiting the
				'Browse to the network by specifying the
				'returned pidl as pidlRoot
				With bi
				.hOwner = hwndOwner
				.pidlRoot = pidl
				.pszDisplayName = Space$(MAX_PATH)
				.lpszTitle = "Select a network computer or share."
				.ulFlags = BIF_RETURNONLYFSDIRS
				If bNewDialog Then .ulFlags = .ulFlags Or BIF_NEWDIALOGSTYLE
				If bNoNewFolder Then .ulFlags = .ulFlags Or BIF_NONEWFOLDERBUTTON

				End With

				'show the browse dialog and return
				'the PIDL for the selected folder
				pidl = SHBrowseForFolder(bi)

				If pidl <> 0 Then

				'got a PIDL .. is it valid?
				spath = Space$(MAX_PATH)
				If SHGetPathFromIDList(ByVal pidl, ByVal spath) Then

				'valid, so get the share path
				GetBrowseNetworkShare = TrimNull(spath)

				Else

				'a server selected...follow same principle
				'as in GetBrowseNetworkWorkstation
				GetBrowseNetworkShare = "\\" & bi.pszDisplayName

				End If 'If SHGetPathFromIDList
				End If 'If pidl

				Call CoTaskMemFree(pidl)

				End If 'If SHGetSpecialFolderLocation

				End Function

				Public Function TrimNull(startstr As String) As String

				TrimNull = Left$(startstr, lstrlenW(StrPtr(startstr)))

				End Funct


				PROGETTO
					TUTTO IL PROGETTO SI TROVA QUI:
