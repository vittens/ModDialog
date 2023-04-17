.class public Lmeh/vittens/moddialog/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final COLORDRAWABLE_DIMENSION:I = 0x2

.field private static final DEFAULT_BORDER_COLOR:I

.field private static final DEFAULT_BORDER_WIDTH:I = 0x4

.field private static final DEFAULT_FILL_COLOR:I

.field private static final SCALE_TYPE:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBitmapWidth:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRadius:F

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDisableCircularTransformation:Z

.field private mDrawableRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mFillColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mReady:Z

.field private mSetupPending:Z

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lmeh/vittens/moddialog/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lmeh/vittens/moddialog/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 47
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lmeh/vittens/moddialog/CircleImageView;->DEFAULT_BORDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 57
    const/4 v0, 0x4

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    .line 58
    sget v0, Lmeh/vittens/moddialog/CircleImageView;->DEFAULT_BORDER_COLOR:I

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillColor:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDisableCircularTransformation:Z

    .line 60
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 64
    sget v0, Lmeh/vittens/moddialog/CircleImageView;->DEFAULT_BORDER_COLOR:I

    invoke-direct {p0, p1, p2, v0}, Lmeh/vittens/moddialog/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;
    .param p3, "defStyle"  # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    .line 76
    sget v0, Lmeh/vittens/moddialog/CircleImageView;->DEFAULT_BORDER_COLOR:I

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillColor:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDisableCircularTransformation:Z

    .line 78
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->init()V

    .line 79
    return-void
.end method

.method private applyColorFilter()V
    .registers 3

    .line 181
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    .line 182
    iget-object v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 184
    :cond_9
    return-void
.end method

.method private calculateBounds()Landroid/graphics/RectF;
    .registers 9

    .line 253
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 254
    .local v0, "availableWidth":I
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 255
    .local v1, "availableHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 256
    .local v2, "sideLength":I
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-int v4, v0, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 257
    .local v3, "left":F
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-int v6, v1, v2

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 258
    .local v4, "top":F
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v2

    add-float/2addr v6, v3

    int-to-float v7, v2

    add-float/2addr v7, v4

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 188
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 189
    return-object v0

    .line 191
    :cond_4
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_10

    .line 192
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 195
    :cond_10
    :try_start_10
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1c

    .line 196
    sget-object v1, Lmeh/vittens/moddialog/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2a

    .line 198
    .end local v1  # "bitmap":Landroid/graphics/Bitmap;
    :cond_1c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lmeh/vittens/moddialog/CircleImageView;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .restart local v1  # "bitmap":Landroid/graphics/Bitmap;
    :goto_2a
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v2, "canvas":Landroid/graphics/Canvas;
    sget v3, Lmeh/vittens/moddialog/CircleImageView;->DEFAULT_BORDER_COLOR:I

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3f} :catch_40

    .line 203
    return-object v1

    .line 204
    .end local v1  # "bitmap":Landroid/graphics/Bitmap;
    .end local v2  # "canvas":Landroid/graphics/Canvas;
    :catch_40
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    return-object v0
.end method

.method private init()V
    .registers 2

    .line 82
    sget-object v0, Lmeh/vittens/moddialog/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mReady:Z

    .line 84
    iget-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mSetupPending:Z

    if-eqz v0, :cond_12

    .line 85
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->setup()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mSetupPending:Z

    .line 88
    :cond_12
    return-void
.end method

.method private initializeBitmap()V
    .registers 2

    .line 211
    iget-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_8

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_12

    .line 214
    :cond_8
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lmeh/vittens/moddialog/CircleImageView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 216
    :goto_12
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->setup()V

    .line 217
    return-void
.end method

.method private setup()V
    .registers 6

    .line 220
    iget-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 221
    iput-boolean v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mSetupPending:Z

    goto/16 :goto_ce

    .line 222
    :cond_9
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_ce

    .line 223
    :cond_15
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1d

    .line 224
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->invalidate()V

    .line 225
    return-void

    .line 227
    :cond_1d
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 228
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 230
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget v2, Lmeh/vittens/moddialog/CircleImageView;->DEFAULT_BORDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapHeight:I

    .line 238
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapWidth:I

    .line 239
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->calculateBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 240
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRadius:F

    .line 241
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 242
    iget v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_b1

    .line 243
    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v3, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 245
    :cond_b1
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRadius:F

    .line 246
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->applyColorFilter()V

    .line 247
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->updateShaderMatrix()V

    .line 248
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->invalidate()V

    .line 250
    :cond_ce
    :goto_ce
    return-void
.end method

.method private updateShaderMatrix()V
    .registers 8

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 265
    .local v1, "dy":F
    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 266
    iget v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000  # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3d

    .line 267
    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 268
    .local v2, "scale":F
    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v5, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    mul-float v0, v3, v4

    goto :goto_55

    .line 270
    .end local v2  # "scale":F
    :cond_3d
    iget-object v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 271
    .restart local v2  # "scale":F
    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v5, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    sub-float/2addr v3, v5

    mul-float v1, v3, v4

    .line 273
    :goto_55
    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 274
    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    add-float v5, v0, v4

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    add-float/2addr v4, v1

    float-to-int v4, v4

    int-to-float v4, v4

    iget-object v6, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 275
    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lmeh/vittens/moddialog/CircleImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 276
    return-void
.end method


# virtual methods
.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 177
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 92
    sget-object v0, Lmeh/vittens/moddialog/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"  # Landroid/graphics/Canvas;

    .line 111
    iget-boolean v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDisableCircularTransformation:Z

    if-eqz v0, :cond_8

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_4d

    .line 113
    :cond_8
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4d

    .line 114
    iget v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillColor:I

    if-eqz v0, :cond_23

    .line 115
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    :cond_23
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mDrawableRadius:F

    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    iget v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderWidth:I

    if-lez v0, :cond_4d

    .line 119
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderRadius:F

    iget-object v3, p0, Lmeh/vittens/moddialog/CircleImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 122
    :cond_4d
    :goto_4d
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"  # I
    .param p2, "h"  # I
    .param p3, "oldw"  # I
    .param p4, "oldh"  # I

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 127
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->setup()V

    .line 128
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .registers 4
    .param p1, "adjustViewBounds"  # Z

    .line 104
    if-nez p1, :cond_3

    .line 107
    return-void

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adjustViewBounds not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"  # Landroid/graphics/ColorFilter;

    .line 168
    iget-object v0, p0, Lmeh/vittens/moddialog/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_c

    .line 169
    iput-object p1, p0, Lmeh/vittens/moddialog/CircleImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 170
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->applyColorFilter()V

    .line 171
    invoke-virtual {p0}, Lmeh/vittens/moddialog/CircleImageView;->invalidate()V

    .line 173
    :cond_c
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bm"  # Landroid/graphics/Bitmap;

    .line 144
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->initializeBitmap()V

    .line 146
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->initializeBitmap()V

    .line 152
    return-void
.end method

.method public setImageResource(I)V
    .registers 2
    .param p1, "resId"  # I

    .line 156
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->initializeBitmap()V

    .line 158
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"  # Landroid/net/Uri;

    .line 162
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 163
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->initializeBitmap()V

    .line 164
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5
    .param p1, "left"  # I
    .param p2, "top"  # I
    .param p3, "right"  # I
    .param p4, "bottom"  # I

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 133
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->setup()V

    .line 134
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5
    .param p1, "start"  # I
    .param p2, "top"  # I
    .param p3, "end"  # I
    .param p4, "bottom"  # I

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 139
    invoke-direct {p0}, Lmeh/vittens/moddialog/CircleImageView;->setup()V

    .line 140
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 5
    .param p1, "scaleType"  # Landroid/widget/ImageView$ScaleType;

    .line 97
    sget-object v0, Lmeh/vittens/moddialog/CircleImageView;->SCALE_TYPE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_5

    .line 100
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "ScaleType %s not supported."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
