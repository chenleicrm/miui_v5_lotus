.class public Lmiui/widget/FlipAnimation;
.super Landroid/view/animation/Animation;
.source "FlipAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/FlipAnimation$AnimationDirector;
    }
.end annotation


# static fields
.field private static final TURN_POINT_RATE:F = 0.3f


# instance fields
.field private mAnimViewDst:Landroid/view/View;

.field private mAnimViewSrc:Landroid/view/View;

.field private mDirector:Lmiui/widget/FlipAnimation$AnimationDirector;

.field private final mInverse:Z

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mTurningPoint:Z

.field private final mTurningPointRate:F

.field private final mViewDst:Landroid/view/View;

.field private final mViewSrc:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Z)V
    .locals 1
    .parameter "src"
    .parameter "dst"
    .parameter "inverse"

    .prologue
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-super {p0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-boolean p3, p0, Lmiui/widget/FlipAnimation;->mInverse:Z

    if-eqz p3, :cond_0

    const v0, 0x3f333333

    :goto_0
    iput v0, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    iput-object p1, p0, Lmiui/widget/FlipAnimation;->mViewSrc:Landroid/view/View;

    iput-object p2, p0, Lmiui/widget/FlipAnimation;->mViewDst:Landroid/view/View;

    return-void

    :cond_0
    const v0, 0x3e99999a

    goto :goto_0
.end method

.method private static getVisibleRectInWindow(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "v"
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    .local v0, location:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v1, v0, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    aget v1, v0, v3

    iput v1, p1, Landroid/graphics/Rect;->top:I

    aget v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    aget v1, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 14
    .parameter "time"
    .parameter "t"

    .prologue
    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/FlipAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/FlipAnimation;->mTurningPoint:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v13, 0x0

    .local v13, turningPoint:Z
    iget v0, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget v0, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    div-float v12, p1, v0

    .local v12, fraction:F
    :goto_1
    if-eqz v13, :cond_2

    iget-boolean v0, p0, Lmiui/widget/FlipAnimation;->mTurningPoint:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/FlipAnimation;->mTurningPoint:Z

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lmiui/widget/FlipAnimation$AnimationDirector;

    iget-object v1, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    iget-object v3, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v4

    iget-object v5, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget-object v7, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v8, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationY()F

    move-result v8

    iget-object v9, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v10, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    iget-boolean v10, p0, Lmiui/widget/FlipAnimation;->mInverse:Z

    if-eqz v10, :cond_5

    const/high16 v10, -0x3d4c

    :goto_2
    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lmiui/widget/FlipAnimation$AnimationDirector;-><init>(Landroid/view/View;FFFFFFFFFF)V

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mDirector:Lmiui/widget/FlipAnimation$AnimationDirector;

    :cond_2
    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mDirector:Lmiui/widget/FlipAnimation$AnimationDirector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mDirector:Lmiui/widget/FlipAnimation$AnimationDirector;

    invoke-virtual {v0, v12}, Lmiui/widget/FlipAnimation$AnimationDirector;->applay(F)V

    goto/16 :goto_0

    .end local v12           #fraction:F
    :cond_3
    const/4 v13, 0x1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    sub-float v0, p1, v0

    const/high16 v1, 0x3f80

    iget v2, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    sub-float/2addr v1, v2

    div-float v12, v0, v1

    .restart local v12       #fraction:F
    :goto_3
    goto/16 :goto_1

    .end local v12           #fraction:F
    :cond_4
    const/high16 v12, 0x3f80

    goto :goto_3

    .restart local v12       #fraction:F
    :cond_5
    const/high16 v10, 0x42b4

    goto :goto_2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    invoke-static {v0}, Lmiui/widget/FlipAnimation$AnimationDirector;->reset(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    invoke-static {v0}, Lmiui/widget/FlipAnimation$AnimationDirector;->reset(Landroid/view/View;)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object v2, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    iput-object v2, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 12
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v2, 0x3f80

    iput-boolean v3, p0, Lmiui/widget/FlipAnimation;->mTurningPoint:Z

    iget-boolean v0, p0, Lmiui/widget/FlipAnimation;->mInverse:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mViewDst:Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mViewSrc:Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lmiui/widget/FlipAnimation;->getVisibleRectInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    iget-object v1, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lmiui/widget/FlipAnimation;->getVisibleRectInWindow(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lmiui/widget/FlipAnimation$AnimationDirector;

    iget-object v1, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    iget v3, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    iget-object v4, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    iget v4, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    iget-object v5, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v7, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v5, v2, v4

    iget v4, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    iget-object v7, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v8, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v4

    iget v4, p0, Lmiui/widget/FlipAnimation;->mTurningPointRate:F

    iget-object v8, p0, Lmiui/widget/FlipAnimation;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    iget-object v9, p0, Lmiui/widget/FlipAnimation;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v9, v4, v8

    iget-boolean v4, p0, Lmiui/widget/FlipAnimation;->mInverse:Z

    if-eqz v4, :cond_2

    const/high16 v11, 0x42b4

    :goto_1
    move v4, v2

    move v8, v6

    move v10, v6

    invoke-direct/range {v0 .. v11}, Lmiui/widget/FlipAnimation$AnimationDirector;-><init>(Landroid/view/View;FFFFFFFFFF)V

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mDirector:Lmiui/widget/FlipAnimation$AnimationDirector;

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mViewSrc:Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewSrc:Landroid/view/View;

    iget-object v0, p0, Lmiui/widget/FlipAnimation;->mViewDst:Landroid/view/View;

    iput-object v0, p0, Lmiui/widget/FlipAnimation;->mAnimViewDst:Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    const/high16 v11, -0x3d4c

    goto :goto_1
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Lmiui/widget/FlipAnimation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method
