.class public Lmiui/maml/elements/ImageNumberScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "ImageNumberScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ImageNumber"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBmpHeight:I

.field private mBmpWidth:I

.field private mCachedBmp:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field private mNumExpression:Lmiui/maml/data/Expression;

.field private mPreNumber:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 19
    const-string v0, "ImageNumberScreenElement"

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/high16 v0, -0x8000

    iput v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 35
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageNumberScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 36
    return-void
.end method

.method private getNumberBitmap(C)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "c"

    .prologue
    .line 112
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/ImageNumberScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "density"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt p1, v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_2

    .line 98
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_3

    .line 100
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le p2, v1, :cond_4

    .line 102
    :cond_1
    :goto_1
    iput p2, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 103
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 105
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    .line 108
    :cond_2
    return-object v0

    .line 99
    :cond_3
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_0

    .line 100
    :cond_4
    iget-object v1, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1
.end method


# virtual methods
.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 47
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v8

    double-to-int v5, v8

    .line 49
    .local v5, number:I
    iget v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    if-eq v5, v8, :cond_2

    .line 50
    iput v5, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mPreNumber:I

    .line 51
    iput v10, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    .line 53
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, numStr:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, bmp0:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    mul-int v7, v8, v9

    .line 57
    .local v7, width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 58
    .local v2, height:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    invoke-direct {p0, v7, v2, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    .line 60
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 62
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-direct {p0, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->getNumberBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 65
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to get bitmap for number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int v7, v8, v9

    .line 70
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 71
    iget-object v6, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    .line 72
    .local v6, oldBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    invoke-direct {p0, v7, v2, v8}, Lmiui/maml/elements/ImageNumberScreenElement;->recreateBitmapIfNeeded(III)Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 73
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v6, v11, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 76
    :cond_1
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedCanvas:Landroid/graphics/Canvas;

    iget v9, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    int-to-float v9, v9

    invoke-virtual {v8, v0, v9, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    iget v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    goto :goto_1

    .line 81
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmp0:Landroid/graphics/Bitmap;
    .end local v2           #height:I
    .end local v3           #i:I
    .end local v4           #numStr:Ljava/lang/String;
    .end local v6           #oldBmp:Landroid/graphics/Bitmap;
    .end local v7           #width:I
    :cond_2
    iget-object v8, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mCachedBmp:Landroid/graphics/Bitmap;

    return-object v8
.end method

.method protected getBitmapHeight()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpHeight:I

    return v0
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mBmpWidth:I

    return v0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 42
    const-string v0, "number"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageNumberScreenElement;->mNumExpression:Lmiui/maml/data/Expression;

    .line 43
    return-void
.end method
