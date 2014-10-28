Sublime Text: x86 Assembly Syntax Definition (AT&T/GAS)
==========================

**This is the greatest x86 Assembly (AT&amp;T/GAS) syntax definition for Sublime Text of All Time**

Sublime Text syntax defn. for x86 assembly (GAS)

Purpose:  I couldn't find any (good ones?) online, so I made one myself for ECE391.  Everything I found was NASM, FASM, Intel, or just garbage. This is not to say that this definition is perfect, but for the purposes of ECE391, it will do just fine.

Installation (Windows):
- Get sublime_text (get the 32 bit if you want to crack it).
- Install "Package Control" : https://sublime.wbond.net/installation#st2
- Extract/copy/Whatever-I-Don't-Care "Assembly x86 AT&T.tmLanguage" and "Comments (ASM x86).tmPreferences" into [sublime directory]\Data\Packages\User\

If you wish to make edits to the definition yourself:
- Install package AAAPackageDev via Preferences>Package Control.
- To edit, you can open "Assembly x86 AT&T.JSON-tmLanguage," or edit the "Assembly x86 AT&T.tmLanguage" file directly. The JSON is probably easier to look at.
- If you chose to edit the JSON, press F7 after saving and generate as Property List.
- Move the generated file to the ...\User\ directory, if you haven't already.  You can even keep both files in the directory, if you wish.

Sublime should automatically take care of the syntax highlighting, so there's no need to restart.


Description of Files:
- blahblah.JSON-tmLanguage : the syntax definition in JSON form. More convenient to edit, but must be converted first. See above for instructions.
- blahblah.tmLanguage : the syntax definition in tmLanguage form (a form of xml). Can be edited directly without compiling.
- blahblah.tmPreferences : enables the commenting shortcut of sublime text.
- README.md : read this file from the top for more information.
