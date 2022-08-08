![icebox Icon](resources/iconfile.png)

# cl-icebox
Cross-Platform GUI framework written in Common Lisp

![platform support](https://img.shields.io/badge/platform-Linux%20%7C%20macOS%20%7C%20Windows-blue.svg) [![Build Status](https://travis-ci.com/VitoVan/cl-icebox.svg?token=zGyrVcujB9VafCKBLXZc&branch=master)](https://travis-ci.com/VitoVan/cl-icebox)

### Abilities:

- Write Cross-Platform GUI application easily in Common Lisp
- Compiles to Linux / macOS / Windows
- Deploy your application in One Single File

### Useful Links:

- The Common Lisp Cookbook

    https://lispcookbook.github.io/cl-cookbook/

- LTK: LTK - The Lisp Toolkit

    http://www.peter-herth.de/ltk/

### Working Examples:

- [cl-pkr](https://github.com/VitoVan/cl-pkr)
    Cross-Platform Color Picker Written in Common Lisp
----

### Hacking:

1. Make sure you have SBCL with Quicklisp installed

    - Install a proper SBCL, you can download [here](http://www.sbcl.org/platform-table.html)
    - Install Quicklisp, you can follow the tutorial [here](https://www.quicklisp.org/beta/#installation)

2. Make sure you have a bin folder and have a proper tclkit inside

    - `mkdir -p bin` or just right click to create a folder name `bin`
    - Download yourself a proper tclkit and rename it to `tclkit-gui` [here](https://github.com/VitoVan/kitgen/releases/latest)

3. build your application

    ```bash
    sbcl --disable-debugger --load cl-icebox.asd --eval "(ql:quickload 'cl-icebox)" --eval "(asdf:make :cl-icebox)"
    ```

Voilà! Check your `bin` folder for the magic!

> What? You use [Emacs](https://www.gnu.org/software/emacs/) and [SLIME](https://common-lisp.net/project/slime/)? Great!

> Eval `(progn (load "cl-icebox.asd") (ql:quickload 'cl-icebox) (setf cl-icebox::*hacking* t))` in your REPL, then you can call `(cl-icebox:icebox)`, have fun!

### Deploy:

There's two options:

1. Use [Travis CI](https://travis-ci.com/) for the good of your health

    you need to add `GITHUB_TOKEN` according to [uploadtool](https://github.com/probonopd/uploadtool)

2. Use `deploy.sh` in the root folder

    Run `deploy.sh` and then check your `out` folder.

    - Linux and macOS should work out of the box (unless you don't have [wget](https://www.gnu.org/software/wget/) or internet connection).
    - on Windows, you need to have
        - A decent BASH, [Git BASH](https://git-scm.com/download/win) or [MSYS2](https://www.msys2.org/) both should work fine
        - Make sure you have [unzip](http://infozip.sourceforge.net/UnZip.html) and [wget](https://www.gnu.org/software/wget/) in your BASH.
        - [EDITBIN](https://docs.microsoft.com/en-us/cpp/build/reference/editbin-reference) which is part of [Build Tools for Visual Studio](https://visualstudio.microsoft.com/downloads/#build-tools-for-visual-studio-2019)
            - Find the location of your `vcvarsall.bat`, then open `cmd`, and call `vcvarsall.bat x64`
            - Then, type `where editbin`, you'll get the absolute path of `editbin.exe`
            - `export EB='C:\long path with space\editbin.exe'` in your BASH
            - Now you are blessed to run `deploy.sh`

### Credits

- Icon made by [Freepik](https://www.freepik.com) from www.flaticon.com
- [Tcl/Tk](https://www.tcl.tk/)
- Tclkit build system http://tclkit.googlecode.com/, [forked here](https://github.com/VitoVan/kitgen)
- [Resource Hacker](http://www.angusj.com/resourcehacker/)
- [Warp](https://github.com/dgiagio/warp)
- [AppImage](https://appimage.org/)

---

![Lisp Caution](http://www.lisperati.com/lisplogo_warning2_256.png)
