.class Lmiui/v5/app/SearchMode$InputUpAnim;
.super Ljava/lang/Object;
.source "SearchMode.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/SearchMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputUpAnim"
.end annotation


# instance fields
.field private final mAlphaView:Landroid/view/View;

.field private final mAnchorDist:I

.field private final mAnimView:Landroid/view/View;

.field private final mBackView:Landroid/view/View;

.field private final mBackViewWidth:I

.field private final mEditAnimStart:I

.field private final mEditAnimWidth:I

.field private final mEditView:Landroid/view/View;

.field private final mOrignalBottom:I

.field private final mSearchView:Landroid/view/View;

.field private final mToken:Lmiui/v5/app/SearchMode$Token;


# direct methods
.method public constructor <init>(Lmiui/v5/app/SearchMode$Token;IIII)V
    .locals 1
    .parameter "token"
    .parameter "anchorDist"
    .parameter "backViewWidth"
    .parameter "editAnimStart"
    .parameter "editAnimWidth"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iput p2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mAnimView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mSearchView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mAlphaView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAlphaView:Landroid/view/View;

    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mEditText:Landroid/widget/EditText;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditView:Landroid/view/View;

    iget-object v0, p1, Lmiui/v5/app/SearchMode$Token;->mBackView:Landroid/view/View;

    iput-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    iput p3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackViewWidth:I

    iput p4, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimStart:I

    iput p5, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimWidth:I

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mOrignalBottom:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mOrignalBottom:I

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAlphaView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditView:Landroid/view/View;

    iget v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimWidth:I

    iget v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimStart:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lmiui/v5/app/SearchMode;->setLeft(Landroid/view/View;I)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget-object v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/v5/app/SearchMode;->setHeight(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    invoke-direct {p0}, Lmiui/v5/app/SearchMode$InputUpAnim;->reset()V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    invoke-direct {p0}, Lmiui/v5/app/SearchMode$InputUpAnim;->reset()V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    iget v1, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mToken:Lmiui/v5/app/SearchMode$Token;

    iget v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmiui/v5/app/SearchMode$Token;->mAnimationCount:I

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .local v0, percent:F
    iget v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    int-to-float v2, v2

    mul-float v1, v0, v2

    .local v1, y:F
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    neg-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnimView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mOrignalBottom:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    :cond_0
    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimStart:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mEditAnimWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lmiui/v5/app/SearchMode;->setLeft(Landroid/view/View;I)V

    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mSearchView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAnchorDist:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mAlphaView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackView:Landroid/view/View;

    iget v3, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackViewWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/v5/app/SearchMode$InputUpAnim;->mBackViewWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
