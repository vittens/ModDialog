.class public Lmeh/vittens/moddialog/ModDialog;
.super Ljava/lang/Object;
.source "ModDialog.java"


# static fields
.field private static ID_CONT_CAP:I

.field private static ID_CONT_TEXT:I

.field private static ID_IMG_BG:I

.field private static ID_IMG_CONT:I

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static textStyle:Ljava/lang/String;

.field private static typeface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-string v0, "DARK"

    sput-object v0, Lmeh/vittens/moddialog/ModDialog;->textStyle:Ljava/lang/String;

    .line 34
    const-string v0, "CUSTOM"

    sput-object v0, Lmeh/vittens/moddialog/ModDialog;->typeface:Ljava/lang/String;

    .line 36
    const v0, 0x35b76

    sput v0, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_BG:I

    .line 37
    const v0, 0x35fac

    sput v0, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_CONT:I

    .line 38
    const v0, 0x35b6b

    sput v0, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_CAP:I

    .line 39
    const v0, 0x36403

    sput v0, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_TEXT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static firstStartDone()V
    .registers 3

    .line 44
    sget-object v0, Lmeh/vittens/moddialog/ModDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Mod.First.Start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    return-void
.end method

.method private static initLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .registers 19
    .param p0, "context"  # Landroid/content/Context;

    .line 127
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .local v1, "scale":F
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, "root":Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 132
    .local v3, "root_LayoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v6, "imageBackground":Landroid/widget/ImageView;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v7, "imageBackground_LayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v8, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_BG:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 140
    iput v5, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 141
    const/high16 v8, 0x43340000  # 180.0f

    mul-float v8, v8, v1

    const/high16 v9, 0x3f000000  # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 142
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 143
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .local v8, "imageContainer":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v10, "imageContainer_LayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    sget v11, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_CONT:I

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 151
    const/high16 v11, 0x42c80000  # 100.0f

    mul-float v12, v1, v11

    add-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 152
    mul-float v11, v11, v1

    add-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 153
    const/high16 v11, 0x42fa0000  # 125.0f

    mul-float v11, v11, v1

    add-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 154
    const/16 v11, 0xa

    invoke-virtual {v10, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
    const/16 v11, 0xe

    invoke-virtual {v10, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v12, "contentCaption":Landroid/widget/TextView;
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v13, "contentCaption_LayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v14, 0x41b00000  # 22.0f

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    sget v14, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_CAP:I

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setId(I)V

    .line 165
    sget v14, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_CONT:I

    const/4 v15, 0x3

    invoke-virtual {v13, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    invoke-virtual {v13, v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 167
    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v11, Landroid/widget/ScrollView;

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v11, "scrollView":Landroid/widget/ScrollView;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v14, "scrollView_LayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v16, 0x41000000  # 8.0f

    mul-float v17, v1, v16

    add-float v4, v17, v9

    float-to-int v4, v4

    mul-float v17, v1, v16

    add-float v9, v17, v9

    float-to-int v9, v9

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v4, v15, v9}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 174
    iput v5, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 175
    sget v4, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_CAP:I

    const/4 v5, 0x3

    invoke-virtual {v14, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 176
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 177
    invoke-virtual {v11, v14}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    .local v4, "contentText":Landroid/widget/TextView;
    const/high16 v5, 0x41800000  # 16.0f

    mul-float v9, v1, v5

    float-to-int v9, v9

    mul-float v15, v1, v16

    float-to-int v15, v15

    mul-float v0, v1, v5

    float-to-int v0, v0

    mul-float v5, v1, v16

    float-to-int v5, v5

    invoke-virtual {v4, v9, v15, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v0, "contentText_LayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x41800000  # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    sget v5, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_TEXT:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 185
    invoke-virtual {v11, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 186
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-object v2
.end method

.method private static isFirstStart()Z
    .registers 3

    .line 48
    sget-object v0, Lmeh/vittens/moddialog/ModDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Mod.First.Start"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$showCrackerDialog$0(Landroid/content/Context;Landroid/view/View;)V
    .registers 5
    .param p0, "ctx"  # Landroid/content/Context;
    .param p1, "view"  # Landroid/view/View;

    .line 101
    const-string v0, "https://github.com/vittens"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "Go to my profile"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-static {}, Lmeh/vittens/moddialog/ModDialog;->firstStartDone()V

    .line 105
    return-void
.end method

.method private static parseText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "activity"  # Landroid/content/Context;
    .param p1, "url"  # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v1, "br1":Ljava/io/BufferedReader;
    :goto_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_24

    .line 115
    nop

    .line 119
    .end local v2  # "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 122
    .end local v1  # "br1":Ljava/io/BufferedReader;
    goto :goto_33

    .line 117
    .restart local v1  # "br1":Ljava/io/BufferedReader;
    .restart local v2  # "line":Ljava/lang/String;
    :cond_24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2d} :catch_2f

    .line 118
    nop

    .end local v2  # "line":Ljava/lang/String;
    goto :goto_19

    .line 120
    .end local v1  # "br1":Ljava/io/BufferedReader;
    :catch_2f
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    .end local v1  # "e":Ljava/io/IOException;
    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static prepare(Landroid/app/Activity;)V
    .registers 3
    .param p0, "ctx"  # Landroid/app/Activity;

    .line 52
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lmeh/vittens/moddialog/ModDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    :try_start_6
    invoke-static {}, Lmeh/vittens/moddialog/ModDialog;->isFirstStart()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 55
    invoke-static {p0}, Lmeh/vittens/moddialog/ModDialog;->showCrackerDialog(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lmeh/vittens/moddialog/ModDialog;->firstStartDone()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_1b

    .line 61
    :cond_12
    nop

    .line 62
    const-string v0, "Vittenslog"

    const-string v1, "Done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 58
    :catch_1b
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    return-void
.end method

.method public static showCrackerDialog(Landroid/content/Context;)V
    .registers 15
    .param p0, "ctx"  # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lmeh/vittens/moddialog/ModDialog;->initLayout(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 67
    .local v0, "mConvertView":Landroid/widget/RelativeLayout;
    sget v1, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_BG:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 68
    .local v1, "mBackground":Landroid/widget/ImageView;
    sget v2, Lmeh/vittens/moddialog/ModDialog;->ID_IMG_CONT:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 69
    .local v2, "mAvatarContainer":Landroid/widget/LinearLayout;
    sget v3, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_CAP:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "mCaption":Landroid/widget/TextView;
    sget v4, Lmeh/vittens/moddialog/ModDialog;->ID_CONT_TEXT:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    .local v4, "mModderInfo":Landroid/widget/TextView;
    new-instance v5, Lmeh/vittens/moddialog/CircleImageView;

    invoke-direct {v5, p0}, Lmeh/vittens/moddialog/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v5, "mAvatar":Lmeh/vittens/moddialog/CircleImageView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 73
    .local v6, "mParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v6}, Lmeh/vittens/moddialog/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "pcover.webp"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 76
    .local v7, "mBackgroundReader":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "pprofile.webp"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 77
    .local v8, "mAvatarReader":Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 78
    .local v10, "mImg":Landroid/graphics/drawable/Drawable;
    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 79
    .local v11, "mAva":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {v5, v11}, Lmeh/vittens/moddialog/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 82
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 83
    sget-object v12, Lmeh/vittens/moddialog/ModDialog;->textStyle:Ljava/lang/String;

    const-string v13, "dark"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_72

    .line 84
    const-string v12, "#212121"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_85

    .line 85
    :cond_72
    sget-object v12, Lmeh/vittens/moddialog/ModDialog;->textStyle:Ljava/lang/String;

    const-string v13, "light"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_85

    .line 86
    const-string v12, "#c8c8c8"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    :cond_85
    :goto_85
    sget-object v12, Lmeh/vittens/moddialog/ModDialog;->typeface:Ljava/lang/String;

    const-string v13, "custom"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9f

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "font.ttf"

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 90
    .local v12, "futura":Landroid/graphics/Typeface;
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    .end local v12  # "futura":Landroid/graphics/Typeface;
    :cond_9f
    const-string v12, "zVittens"

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v12, "about_info.txt"

    invoke-static {p0, v12}, Lmeh/vittens/moddialog/ModDialog;->parseText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 98
    const-string v13, "skip"

    invoke-virtual {v12, v13, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    .line 99
    const-string v13, "about me"

    invoke-virtual {v12, v13, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    .line 100
    .local v9, "dialog":Landroid/app/AlertDialog;
    const/4 v12, -0x3

    invoke-virtual {v9, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v12

    new-instance v13, Lmeh/vittens/moddialog/ModDialog$$ExternalSyntheticLambda0;

    invoke-direct {v13, p0}, Lmeh/vittens/moddialog/ModDialog$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method
