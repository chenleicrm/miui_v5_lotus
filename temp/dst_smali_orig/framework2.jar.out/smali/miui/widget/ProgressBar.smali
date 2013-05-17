.class public Lmiui/widget/ProgressBar;
.super Landroid/widget/ProgressBar;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mClipRect:Landroid/graphics/Rect;

.field private mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

.field private mCuttedProgressIndeterminate:Landroid/graphics/drawable/Drawable;

.field private mIsHorizontal:Z

.field private mProgressBar:Landroid/graphics/drawable/Drawable;

.field private mProgressBarBitmap:Landroid/graphics/Bitmap;

.field private mProgressIndeterminate:Landroid/graphics/drawable/Drawable;

.field private mProgressMask:Landroid/graphics/drawable/Drawable;

.field private mProgressMaskBitmap:Landroid/graphics/Bitmap;

.field private mRealHeight:I

.field private mRealWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "styleRes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v2, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    sget-object v1, Lmiui/R$styleable;->MiuiProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ProgressBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ProgressBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/ProgressBar;->mProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/widget/ProgressBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "mask"

    .prologue
    const/4 v6, 0x0

    iget v3, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    iget v4, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

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

.method private cutDrawableWithMask(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "drawable"
    .parameter "mask"

    .prologue
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, p2}, Lmiui/widget/ProgressBar;->cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    iget v0, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lmiui/widget/ProgressBar;->mPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ProgressBar;->mPaddingTop:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
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

    iget v2, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    iget v3, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, canvas:Landroid/graphics/Canvas;
    iget v2, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    iget v3, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClipRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    iget-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lmiui/widget/ProgressBar;->mPaddingLeft:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lmiui/widget/ProgressBar;->mPaddingTop:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getHeight()I

    move-result v3

    iget v4, p0, Lmiui/widget/ProgressBar;->mPaddingTop:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getMax()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-long v2, v2

    iget v4, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-long v4, v4

    div-long v0, v2, v4

    .local v0, offset:J
    :goto_0
    iget-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    long-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lmiui/widget/ProgressBar;->mClipRect:Landroid/graphics/Rect;

    return-object v2

    .end local v0           #offset:J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private recycleIndeterminate(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "drawable"

    .prologue
    instance-of v3, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, frameDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #frameDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method private updateProgressDrawables()V
    .locals 2

    .prologue
    iget v0, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lmiui/widget/ProgressBar;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ProgressBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lmiui/widget/ProgressBar;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ProgressBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lmiui/widget/ProgressBar;->recycleIndeterminate(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/ProgressBar;->tileifyIndeterminateMiui(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressBarBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/ProgressBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1}, Lmiui/widget/ProgressBar;->cutBitmapWithMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ProgressBar;->mCuttedProgressBarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ProgressBar;->drawProgress(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
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
    invoke-super/range {p0 .. p5}, Landroid/widget/ProgressBar;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getWidth()I

    move-result v0

    iget v1, p0, Lmiui/widget/ProgressBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ProgressBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getHeight()I

    move-result v0

    iget v1, p0, Lmiui/widget/ProgressBar;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ProgressBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->updateProgressDrawables()V

    :cond_0
    return-void
.end method

.method public setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->getBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lmiui/widget/ProgressBar;->mProgressIndeterminate:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .parameter "progress"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lmiui/widget/ProgressBar;->mProgressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/ProgressBar;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/widget/ProgressBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lmiui/widget/ProgressBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lmiui/widget/ProgressBar;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public tileifyIndeterminateMiui(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "drawable"

    .prologue
    const/16 v9, 0x2710

    const/4 v10, 0x0

    iget-object v8, p0, Lmiui/widget/ProgressBar;->mProgressMask:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget v8, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    if-lez v8, :cond_0

    iget v8, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    if-gtz v8, :cond_1

    :cond_0
    move-object v3, p1

    .end local p1
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_1
    instance-of v8, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .local v1, background:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .local v0, N:I
    new-instance v7, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .local v7, newBg:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v0, :cond_3

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, frame:Landroid/graphics/drawable/Drawable;
    instance-of v8, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_2

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    .local v4, duration:I
    iget-object v8, p0, Lmiui/widget/ProgressBar;->mProgressMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5, v8}, Lmiui/widget/ProgressBar;->cutDrawableWithMask(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #duration:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v5           #frame:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    iget v8, p0, Lmiui/widget/ProgressBar;->mRealWidth:I

    iget v9, p0, Lmiui/widget/ProgressBar;->mRealHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    move-object p1, v7

    .end local v0           #N:I
    .end local v1           #background:Landroid/graphics/drawable/AnimationDrawable;
    .end local v6           #i:I
    .end local v7           #newBg:Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    move-object v3, p1

    .end local p1
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method
