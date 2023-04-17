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

## Limited Dialog

If you want to use limited dialog, you have to use the following code:

```
invoke-static/range {p0 .. p0}, Lmeh/vittens/moddialog/ModDialog;->prepare(Landroid/app/Activity;)V
```

`Limited Dialog` has the following system:
- A dialog will appear on the first launch of the application.
- This dialog will appear only once, if you have opened the first application then the second time it will not appear again.

## Unlimited Dialog

If you want to use unlimited dialog, you have to use the following code:

```
invoke-static/range {p0 .. p0}, Lmeh/vittens/moddialog/ModDialog;->showCrackerDialog(Landroid/content/Context;)V
```

`Unlimited Dialog` has the following system:
- A dialog will appear on the first launch of the application.
- This dialog will appear repeatedly, if you have opened the first application then the second time it will appear again.
