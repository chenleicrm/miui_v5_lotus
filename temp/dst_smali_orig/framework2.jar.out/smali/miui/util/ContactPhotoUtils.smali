.class public Lmiui/util/ContactPhotoUtils;
.super Ljava/lang/Object;
.source "ContactPhotoUtils.java"


# static fields
.field private static final HANDWRITING_FILEPATH:Ljava/lang/String; = "/system/fonts/TobysHand.ttf"

.field private static final WORD_PHOTO:Ljava/lang/String; = "word_photo"

.field private static sAsiaLangPattern:Ljava/util/regex/Pattern; = null

.field private static sBitmap:Landroid/graphics/Bitmap; = null

.field private static sCanvas:Landroid/graphics/Canvas; = null

.field private static sHandwriting:Landroid/graphics/Typeface; = null

.field private static final sPhotoSize:I = 0x86

.field private static sPt:Landroid/graphics/Paint;

.field private static sRect:Landroid/graphics/Rect;

.field private static suffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x86

    sput-object v2, Lmiui/util/ContactPhotoUtils;->sPt:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    sput-object v2, Lmiui/util/ContactPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    sput-object v2, Lmiui/util/ContactPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lmiui/util/ContactPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lmiui/util/ContactPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lmiui/util/ContactPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lmiui/util/ContactPhotoUtils;->sPt:Landroid/graphics/Paint;

    sget-object v0, Lmiui/util/ContactPhotoUtils;->sPt:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lmiui/util/ContactPhotoUtils;->sPt:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u8001\u5e08"

    aput-object v1, v0, v3

    const-string v1, "\u5148\u751f"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "\u8001\u677f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u4ed4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u624b\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u53d4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u963f\u59e8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5b85"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4f2f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4f2f\u6bcd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u4f2f\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u54e5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u59d0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5f1f"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u59b9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u8205"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u59d1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u4e3b\u4efb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u7ecf\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5de5\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u540c\u4e8b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5f8b\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u53f8\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u5e08\u5085"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u5e08\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u7237"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u4e2d\u4ecb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u8463"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u603b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u592a\u592a"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u4fdd\u59c6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u67d0"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\u79d8\u4e66"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\u5904\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u5c40\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u73ed\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u5144"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u52a9\u7406"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/ContactPhotoUtils;->suffix:[Ljava/lang/String;

    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/ContactPhotoUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    const-string v0, "/system/fonts/TobysHand.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/ContactPhotoUtils;->sHandwriting:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "context"
    .parameter "name"
    .parameter "drawableId"
    .parameter "color"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v10, 0x0

    .local v10, word:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmiui/util/ContactPhotoUtils;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v10, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v11, 0x86

    const/16 v12, 0x86

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bmp:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v11, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .local v7, paint:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p1}, Lmiui/util/ContactPhotoUtils;->isChinese(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const v11, 0x42a0cccd

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v11, 0x41e8

    const/high16 v12, 0x42c0

    invoke-virtual {v2, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    sget-object v11, Lmiui/util/ContactPhotoUtils;->sHandwriting:Landroid/graphics/Typeface;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v11, " |\\.|-|,|\\(|\\)|\uff08|\uff09|\u2014"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, nameStrs:[Ljava/lang/String;
    if-nez v6, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .local v4, first:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, second:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v11, v6

    if-ge v5, v11, :cond_8

    aget-object v11, v6, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    if-nez v4, :cond_7

    aget-object v11, v6, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-nez v9, :cond_8

    aget-object v11, v6, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x3fc0

    div-float v8, v11, v12

    .local v8, rate:F
    if-nez v4, :cond_9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    if-nez v9, :cond_a

    const v11, 0x42a0cccd

    mul-float/2addr v11, v8

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v11, 0x41e8

    const/high16 v12, 0x42c0

    invoke-virtual {v2, v4, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_a
    const v11, 0x4220cccd

    mul-float/2addr v11, v8

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v11, 0x41a0

    const/high16 v12, 0x4270

    invoke-virtual {v2, v4, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/high16 v11, 0x4220

    const/high16 v12, 0x42e2

    invoke-virtual {v2, v9, v11, v12, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static createNameBitmap(Landroid/content/Context;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "drawableId"
    .parameter "color"
    .parameter "bgDrawableId"
    .parameter "maskDrawableId"
    .parameter "fgDrawableId"

    .prologue
    invoke-static {p0, p1, p2, p3}, Lmiui/util/ContactPhotoUtils;->createNameBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0, p4, p5, p6}, Lmiui/util/ContactPhotoUtils;->createPhoto(Landroid/content/res/Resources;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized createPhoto(Landroid/content/res/Resources;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "res"
    .parameter "src"
    .parameter "bgDrawableId"
    .parameter "maskDrawableId"
    .parameter "fgDrawableId"

    .prologue
    const-class v6, Lmiui/util/ContactPhotoUtils;

    monitor-enter v6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lmiui/util/ContactPhotoUtils;->createPhoto(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized createPhoto(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "res"
    .parameter "src"
    .parameter "bgDrawableId"
    .parameter "maskDrawableId"
    .parameter "fgDrawableId"
    .parameter "recycleSrc"

    .prologue
    const/4 v3, 0x0

    const-class v5, Lmiui/util/ContactPhotoUtils;

    monitor-enter v5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v5

    return-object v3

    :cond_1
    const/16 v4, 0x86

    const/16 v6, 0x86

    :try_start_0
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, photo:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, bgDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, fgDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {p0, p1, p3}, Lmiui/util/ContactPhotoUtils;->cutBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V

    sget-object v4, Lmiui/util/ContactPhotoUtils;->sBitmap:Landroid/graphics/Bitmap;

    sget-object v6, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    sget-object v7, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #fgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static cutBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V
    .locals 9
    .parameter "res"
    .parameter "src"
    .parameter "maskDrawableId"

    .prologue
    sget-object v5, Lmiui/util/ContactPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, dst:Landroid/graphics/drawable/Drawable;
    sget-object v5, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v5, Lmiui/util/ContactPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, height:I
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v3, 0x0

    .local v3, top:I
    if-le v4, v1, :cond_1

    sub-int v5, v4, v1

    div-int/lit8 v2, v5, 0x2

    move v4, v1

    :cond_0
    :goto_0
    sget-object v5, Lmiui/util/ContactPhotoUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v2, v4

    add-int v8, v3, v1

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Lmiui/util/ContactPhotoUtils;->sRect:Landroid/graphics/Rect;

    sget-object v8, Lmiui/util/ContactPhotoUtils;->sPt:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    if-ge v4, v1, :cond_0

    sub-int v5, v1, v4

    div-int/lit8 v3, v5, 0x2

    move v1, v4

    goto :goto_0
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    invoke-static {p0}, Lmiui/util/ContactPhotoUtils;->isChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lmiui/util/ContactPhotoUtils;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, word:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0       #length:I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    sget-object v0, Lmiui/util/ContactPhotoUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    move-object v3, p0

    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/4 v1, 0x0

    .local v1, found:Z
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v4, Lmiui/util/ContactPhotoUtils;->suffix:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    sget-object v4, Lmiui/util/ContactPhotoUtils;->suffix:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lmiui/util/ContactPhotoUtils;->suffix:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object v4, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/util/ContactPhotoUtils;->isChinese(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v0           #c:C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static setUseWordPhoto(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "useWordPhoto"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "word_photo"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useWordPhoto(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "word_photo"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
