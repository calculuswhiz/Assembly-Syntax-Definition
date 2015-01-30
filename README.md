Sublime Text: x86 Assembly Syntax Definition (AT&T/GAS)
==========================

**This is the greatest x86 Assembly (AT&amp;T/GAS) syntax definition for Sublime Text of All Time**

Sublime Text syntax defn. for x86 assembly (GAS)

Covers a lot of instructions for a lot of different cpuid flags, even if it you don't have them.

Purpose:  I couldn't find any (good ones) online, so I made one myself for my ECE391 class at UIUC.  Everything I found was some variation of Intel syntax, or just plain no good. This is not to say that this definition is perfect, but for the purposes of your college level systems programming class, it will do just fine. I believe a good test for efficacy would be testing it on a gdb disas.

I have included some test files in the 'test/' directory of this package. Please give it a look. I even included a gdb disas.

**Installation (Any platform):**
- Get sublime_text.
- Install "Package Control" : https://sublime.wbond.net/installation#st2
    - Pay ye mind to the 2 or 3. Follow the directions closely! `` ` `` is a backtick, not an apostrophe.
- In your sublime window menu, go to Preferences>Package Control and type "Install".
- Type "gasx86" to find the package.
- This has the advantage of automatic updates if a bug is caught.

Masochistic method (manual install):
- Download the contents of this repo.
- Extract/copy/Whatever-I-Don't-Care all files into your 'Packages' directory.
    - This is easily accessible from Preferences>Browse Packages...
    - You *could* always just `git pull` in the 'Packages' directory.
- This method is not for people new to ST2. Trust me. I know from experience. The reason there are so many words here is because people can't figure out how to install Package Control.
- If all this has failed, you're on your own. Good luck.

Sublime should automatically take care of the syntax highlighting, so there's no need to restart.

If you feel the directions are unclear, please tell me. Or tell Dennis, so we can make fun of you later.

Pull requests and/or bug reports are always welcome.

Description of Files:
- blahblah.JSON-tmLanguage : the syntax definition in JSON form. More convenient to edit, but must be converted first. See above for instructions.
- blahblah.tmLanguage : the syntax definition in tmLanguage form (a form of xml). Can be edited directly without compiling.
- blahblah.tmPreferences : enables the commenting shortcut of sublime text.
- blahblah.sublime-snippet : shortcuts for tab completion. e.g. Type "disp" on your .s file to get a completion for displacement addressing mode.
- README.md : read this file from the top for more information.
