<p align="center">
  <img width="180" src="./examples/ex1.jpg" alt="Mod Dialog">
</p>
  <h1 align="center">Mod Dialog</h1>
  <p align="center">Mod Dialog SOURCE CODE for Modders</p>
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
The `smali` folder must be compressed into a `zip`.

## Dialog Type
If you want to use limited dialog, you have to use the following code:
```java
invoke-static/range {p0 .. p0}, Lmeh/vittens/moddialog/ModDialog;->prepare(Landroid/app/Activity;)V
```

If you want to use unlimited dialog, you have to use the following code:
```java
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

## Results
<p align="center">
  <img width="180" src="./examples/ex2.jpg">
</p>
<p align="center">You can develop this project, if the results are not interesting 😉</p>

---

<p align="center">
<h1 align="center">Sponsorship</h1>

<p align="center">If you find my work valuable, you can show your support by sponsoring me. 
  Your contribution will help me maintain and improve my projects, and it will encourage me to create more useful content.</p>

<p align="center">
  <a href="https://www.buymeacoffee.com/vittens"><img src="https://img.shields.io/badge/-Buy%20me%20a%20coffee-orange?style=for-the-badge&logo=buy-me-a-coffee&logoColor=white" alt="Buy me a coffee"></a>
</p>

<h2 align="center">Crypto Donations</h2>

<p align="center">If you prefer to donate using cryptocurrency, you can use the following wallet addresses:</p>

<p align="center">
  Bitcoin: <code>-</code> <br>
</p>

---

<p align="center">Thank you to the following people for their support:</p>

<div align="center">
  <a href="https://github.com/vittens/ModDialog/stargazers">
    <img src="https://reporoster.com/stars/dark/vittens/ModDialog" alt="Stargazers" title="Stargazers" width="400" height="auto">
  </a>

  <a href="https://github.com/vittens/ModDialog/network/members">
    <img src="https://reporoster.com/forks/dark/vittens/ModDialog" alt="Forkers" title="Forkers" width="400" height="auto">
  </a>
</div>
