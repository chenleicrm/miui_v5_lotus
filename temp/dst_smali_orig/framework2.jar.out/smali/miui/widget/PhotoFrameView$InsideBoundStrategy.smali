.class public Lmiui/widget/PhotoFrameView$InsideBoundStrategy;
.super Ljava/lang/Object;
.source "PhotoFrameView.java"

# interfaces
.implements Lmiui/widget/PhotoFrameView$BoundStrategy;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/PhotoFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsideBoundStrategy"
.end annotation


# static fields
.field public static final DEFAULT_INSIDE_TOP:I


# instance fields
.field final mTop:I

.field final synthetic this$0:Lmiui/widget/PhotoFrameView;


# direct methods
.method public constructor <init>(Lmiui/widget/PhotoFrameView;I)V
    .locals 0
    .parameter
    .parameter "top"

    .prologue
    iput-object p1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    return-void
.end method

.method private startAdjust(Z)V
    .locals 3
    .parameter "resetScale"

    .prologue
    iget-object v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/PhotoFrameView;->setInteractive(Z)V

    new-instance v0, Lmiui/widget/PhotoFrameView$JustifyAnimation;

    iget-object v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-direct {v0, v1, p1}, Lmiui/widget/PhotoFrameView$JustifyAnimation;-><init>(Lmiui/widget/PhotoFrameView;Z)V

    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1, v0}, Lmiui/widget/PhotoFrameView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public adjustCropArea(Landroid/graphics/Matrix;Z)V
    .locals 12
    .parameter "matrix"
    .parameter "resetScale"

    .prologue
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v7

    .local v7, viewWidth:I
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getHeight()I

    move-result v6

    .local v6, viewHeight:I
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lmiui/widget/PhotoFrameView;->access$000(Lmiui/widget/PhotoFrameView;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v8, v9

    .local v8, w:F
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mBitmapDisplayed:Landroid/graphics/Bitmap;
    invoke-static {v9}, Lmiui/widget/PhotoFrameView;->access$000(Lmiui/widget/PhotoFrameView;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v1, v9

    .local v1, h:F
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .local v0, bound:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mRotation:I
    invoke-static {v9}, Lmiui/widget/PhotoFrameView;->access$100(Lmiui/widget/PhotoFrameView;)I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #getter for: Lmiui/widget/PhotoFrameView;->mRotation:I
    invoke-static {v9}, Lmiui/widget/PhotoFrameView;->access$100(Lmiui/widget/PhotoFrameView;)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v10, v8, v10

    const/high16 v11, 0x4000

    div-float v11, v1, v11

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_0
    const/4 v4, 0x0

    .local v4, tranX:F
    const/4 v5, 0x0

    .local v5, tranY:F
    if-eqz p2, :cond_2

    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getFitCenterScale()F

    move-result v2

    .local v2, scale:F
    :goto_0
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    #calls: Lmiui/widget/PhotoFrameView;->isVertical()Z
    invoke-static {v9}, Lmiui/widget/PhotoFrameView;->access$300(Lmiui/widget/PhotoFrameView;)Z

    move-result v9

    if-nez v9, :cond_1

    sub-float v9, v1, v8

    mul-float/2addr v9, v2

    const/high16 v10, 0x4000

    div-float v4, v9, v10

    sub-float v9, v8, v1

    mul-float/2addr v9, v2

    const/high16 v10, 0x4000

    div-float v5, v9, v10

    move v3, v1

    .local v3, temp:F
    move v1, v8

    move v8, v3

    .end local v3           #temp:F
    :cond_1
    if-eqz p2, :cond_5

    mul-float v9, v8, v2

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, v7

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    int-to-float v9, v7

    mul-float v10, v8, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    :goto_1
    mul-float v9, v1, v2

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, v6

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    iget v11, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    int-to-float v9, v6

    mul-float v10, v1, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v5, v9

    :goto_2
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    .end local v2           #scale:F
    :cond_2
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getScale()F

    move-result v2

    goto :goto_0

    .restart local v2       #scale:F
    :cond_3
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v10, v8, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v10, v1, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v5, v9

    goto :goto_2

    :cond_5
    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget v10, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    iget-object v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v10}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iget v9, v0, Landroid/graphics/RectF;->left:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    const/4 v9, 0x0

    add-float/2addr v4, v9

    :goto_3
    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    iget-object v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v10}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    iget v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    goto :goto_2

    :cond_6
    iget v9, v0, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v10}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v10, v8, v2

    sub-float/2addr v9, v10

    add-float/2addr v4, v9

    goto :goto_3

    :cond_7
    iget v9, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    goto :goto_3

    :cond_8
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v10, v8, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    goto :goto_3

    :cond_9
    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v10}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v10

    iget v11, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_a

    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v9

    iget v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    mul-float v10, v1, v2

    sub-float/2addr v9, v10

    add-float/2addr v5, v9

    goto/16 :goto_2

    :cond_a
    iget v9, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    goto/16 :goto_2

    :cond_b
    iget-object v9, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v9}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v10, v1, v2

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    iget v10, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v5, v9

    goto/16 :goto_2
.end method

.method public adjustDx(Landroid/graphics/RectF;F)F
    .locals 2
    .parameter "bound"
    .parameter "dx"

    .prologue
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/high16 v0, 0x4000

    div-float/2addr p2, v0

    :cond_1
    return p2
.end method

.method public adjustDy(Landroid/graphics/RectF;F)F
    .locals 3
    .parameter "bound"
    .parameter "dy"

    .prologue
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    iget-object v2, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v2}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/high16 v0, 0x4000

    div-float/2addr p2, v0

    :cond_1
    return p2
.end method

.method public adjustIfNeeded(Landroid/graphics/RectF;FZ)V
    .locals 3
    .parameter "bound"
    .parameter "scale"
    .parameter "resetScale"

    .prologue
    if-eqz p3, :cond_1

    iget-object v0, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v0}, Lmiui/widget/PhotoFrameView;->getFitCenterScale()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->startAdjust(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v1}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    iget-object v2, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v2}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->startAdjust(Z)V

    goto :goto_0
.end method

.method public getCropedMatrix()Landroid/graphics/Matrix;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x9

    new-array v0, v3, [F

    .local v0, matrixValues:[F
    iget-object v3, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    iget-object v3, v3, Lmiui/widget/PhotoFrameView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .local v1, result:Landroid/graphics/Matrix;
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    const/high16 v3, 0x42c0

    iget-object v4, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    invoke-virtual {v4}, Lmiui/widget/PhotoFrameView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .local v2, scale:F
    invoke-virtual {v1, v2, v2, v5, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget v3, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->mTop:I

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1
.end method

.method public getCropedPhotoHeight()I
    .locals 1

    .prologue
    const/16 v0, 0x60

    return v0
.end method

.method public getCropedPhotoWidth()I
    .locals 1

    .prologue
    const/16 v0, 0x60

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    check-cast p1, Lmiui/widget/PhotoFrameView$JustifyAnimation;

    .end local p1
    invoke-virtual {p1}, Lmiui/widget/PhotoFrameView$JustifyAnimation;->getResetScale()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/PhotoFrameView;->resetMatrix(Z)V

    iget-object v0, p0, Lmiui/widget/PhotoFrameView$InsideBoundStrategy;->this$0:Lmiui/widget/PhotoFrameView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/widget/PhotoFrameView;->setInteractive(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method
