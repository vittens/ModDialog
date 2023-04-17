<p align="center">
  <img width="180" src="./examples/ex1.jpg" alt="Mod Dialog">
  <h1 align="center">Mod Dialog</h1>
  <p align="center">Mod Dialog SOURCE CODE for Modders</p>
</p>

<p align="center">
    <img src="https://img.shields.io/github/stars/vittens/mod-dialog?style=social"/>
</p>

<p align="center">
    <img src="https://img.shields.io/github/downloads/vittens/mod-dialog/total.svg?style=flat-square" alt="https://github.com/vittens/mod-dialog/releases"/>
    <img src="https://img.shields.io/github/contributors/vittens/mod-dialog.svg" alt="https://github.com/vittens/mod-dialog/graphs/contributors"/>
    <img src="https://img.shields.io/github/issues/vittens/mod-dialog.svg" alt="https://github.com/vittens/mod-dialog/issues"/>
    <img src="https://img.shields.io/github/license/vittens/mod-dialog.svg" alt="LICENSE"/>
</p>

<p align="center">
    <img src="https://img.shields.io/github/forks/vittens/mod-dialog.svg?style=social" alt="https://github.com/vittens/mod-dialog/network/members"/>
</p>

---
## Move an Assets
In this repository there is an `Assets` folder, you should move this folder which contains:
- `about_info.txt`
- `font.ttf`
- `pcover.webp`
- `pprofile.webp`

Move all these files into your own app project, you can also edit or replace them.

## Smali Folder
The `smali` folder must be compressed into a `.zip`

## Dialog Type

If you want to use limited dialog, you have to use the following code:

```
invoke-static/range {p0 .. p0}, Lmeh/vittens/moddialog/ModDialog;->prepare(Landroid/app/Activity;)V
```

If you want to use unlimited dialog, you have to use the following code:

```
invoke-static/range {p0 .. p0}, Lmeh/vittens/moddialog/ModDialog;->showCrackerDialog(Landroid/content/Context;)V
```

`Limited Dialog` has the following system:
- A dialog will appear on the first launch of the application.
- This dialog will appear only once, if you have opened the first application then the second time it will not appear again.

`Unlimited Dialog` has the following system:
- A dialog will appear on the first launch of the application.
- This dialog will appear repeatedly, if you have opened the first application then the second time it will appear again.

## Code Location
Once you have defined both types of code, you should paste this code into the `onCreate` section of any activity such as `MainActivity`.

---

## Results

<p align="center">
  <img width="180" src="./examples/ex2.jpg">
</p>

<p align="center">You can develop this project, if the results are not interesting 😉</p>

---
