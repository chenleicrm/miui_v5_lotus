.class public Lmiui/widget/SeekBar;
.super Landroid/widget/SeekBar;
.source "SeekBar.java"


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

.field private mProgressBar:Landroid/graphics/drawable/Drawable;

.field private mProgressBarBitmap:Landroid/graphics/Bitmap;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressMask:Landroid/graphics/drawable/Drawable;

.field private mProgressMaskBitmap:Landroid/graphics/Bitmap;

.field protected mRealHeight:I

.field protected mRealWidth:I

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field protected mThumbOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v1, Lmiui/R$styleable;->MiuiProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumbOffset()I

    move-result v1

    iput v1, p0, Lmiui/widget/SeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "mask"

    .prologue
    const/4 v6, 0x0

    iget v3, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v4, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, dest:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .local v1, maskPaint:Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p2, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .end local v1           #maskPaint:Landroid/graphics/Paint;
    :cond_1
    return-object v2
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    iget v0, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lmiui/widget/SeekBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private getClipRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getHeight()I

    move-result v3

    iget v4, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getMax()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getMax()I

    move-result v4

    int-to-long v4, v4

    div-long v0, v2, v4

    .local v0, offset:J
    :goto_0
    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    long-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lmiui/widget/SeekBar;->mClipRect:Landroid/graphics/Rect;

    return-object v2

    .end local v0           #offset:J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    iget v1, p0, Lmiui/widget/SeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v3, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    iget v2, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v3, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-direct {p0, p1}, Lmiui/widget/SeekBar;->drawProgress(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lmiui/widget/SeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getHeight()I

    move-result v0

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->updateProgressDrawables()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/SeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Lmiui/widget/SeekBar;->mThumbOffset:I

    return-void
.end method

.method protected updateProgressDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget v0, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/SeekBar;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/SeekBar;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lmiui/widget/SeekBar;->mRealWidth:I

    iget v2, p0, Lmiui/widget/SeekBar;->mRealHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    iget-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v0, p0, Lmiui/widget/SeekBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SeekBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lmiui/widget/SeekBar;->cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
