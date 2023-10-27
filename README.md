# Compiler-Design-Labs
## Installing Softwares for windows
- **[Flex 2.5.4a](http://gnuwin32.sourceforge.net/downlinks/flex.php)**
- [**Bison 2.4.1**](http://downloads.sourceforge.net/gnuwin32/bison-2.4.1-setup.exe)
- [**DevC++**](http://sourceforge.net/projects/dev-cpp/files/Binaries/Dev-C%2B%2B%204.9.9.2/devcpp-4.9.9.2_setup.exe/download?use_mirror=switch "DevC++")
- Add `C:\GnuWin32\bin;C:\Dev-Cpp\bin;` to path.

## Run using following command:-
1. For Compiling Lex file only:
   ```bash
      flex filename.l
      gcc lex.yy.c
   ```
3. For Compiling Lex & Yacc file both:
   ```bash
      flex filename.l
      bison -dy filename.y
      gcc lex.yy.c y.tab.c
   ```
5. For Executing the Program:
    ```bash
      ./a.exe
    ```
