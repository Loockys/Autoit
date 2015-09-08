#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.1
 Author:         Loockys

 Script Function:
	Lire un fichier txt

#ce ----------------------------------------------------------------------------
#include <Array.au3>

ConsoleWrite(_LireTxt("Test.txt") & @CRLF)

Func _LireTxt($Fichier)
	Global $Tableau[1], $Cpt1 = 0
	$file = FileOpen($Fichier, 0)
    While 1
        $line = FileReadLine($file)
        If @error = -1 Then ExitLoop
		_ArrayInsert($Tableau, $Cpt1, $line)
		$Cpt1 += 1
    Wend
	Return _ArrayToString($Tableau)
    FileClose($file)
EndFunc
