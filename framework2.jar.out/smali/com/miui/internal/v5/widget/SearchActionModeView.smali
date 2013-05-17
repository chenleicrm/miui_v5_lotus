.class public Lcom/miui/internal/v5/widget/SearchActionModeView;
.super Landroid/widget/FrameLayout;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/miui/internal/v5/view/ActionModeView;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final sInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field private mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

.field private mAnchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewBottomLength:I

.field private mAnimateViewBottomStart:I

.field private mAnimateViewTranslationYLength:I

.field private mAnimateViewTranslationYStart:I

.field private mAnimationMode:I

.field private mBackView:Landroid/widget/ImageView;

.field private mBackViewTranslationXLength:I

.field private mBackViewTranslationXStart:I

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private mDimView:Landroid/view/View;

.field private mInputView:Landroid/widget/EditText;

.field private mInputViewTranslationYLength:I

.field private mInputViewTranslationYStart:I

.field private mLocation:[I

.field mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mRequestAnimaton:Z

.field private mResultViewOriginMarginBottom:I

.field private mResultViewOriginMarginTop:I

.field private mResultViewSet:Z

.field private mResusltView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

.field private mTextLengthBeforeChanged:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/internal/v5/widget/SearchActionModeView;->sInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    .line 529
    new-instance v0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/widget/SearchActionModeView$1;-><init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAlpha(F)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimaton:Z

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimaton:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miui/internal/v5/widget/SearchActionModeView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimaton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomLength:I

    return v0
.end method

.method static synthetic access$302(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomLength:I

    return p1
.end method

.method static synthetic access$400(Lcom/miui/internal/v5/widget/SearchActionModeView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomStart:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v1, 0x0

    .line 482
    if-nez p1, :cond_2

    move v0, v1

    .line 483
    .local v0, afterTextChangedLength:I
    :goto_0
    if-nez v0, :cond_3

    .line 484
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->showSoftInputPanel(Z)V

    .line 494
    :cond_1
    :goto_1
    return-void

    .line 482
    .end local v0           #afterTextChangedLength:I
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 489
    .restart local v0       #afterTextChangedLength:I
    :cond_3
    iget v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    if-nez v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected allowUpdateContentBorder(Z)V
    .locals 3
    .parameter "allow"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/miui/internal/v5/widget/ActionBarLayout;

    if-eqz v1, :cond_0

    .line 354
    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarLayout;

    .end local v0           #view:Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/ActionBarLayout;->setUpdateContentMarginEnabled(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->initializeAnimation()V

    .line 85
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    .line 88
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->makeInAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 89
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->allowUpdateContentBorder(Z)V

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    .line 92
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->makeOutAnimator()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 94
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewTopMargin(I)V

    .line 96
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewBottomMargin(I)V

    .line 101
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    iput-boolean v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimaton:Z

    goto :goto_0

    .line 99
    :cond_1
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewBottomMargin(I)V

    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 473
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mTextLengthBeforeChanged:I

    .line 474
    return-void

    .line 473
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected finishAnimation()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 216
    .local v0, animator:Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 219
    :cond_0
    return-void
.end method

.method protected getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-nez v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, decorView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mContext:Landroid/content/Context;

    const v2, 0x60b0007

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 304
    .end local v0           #decorView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    return-object v1
.end method

.method protected getActionBarHeight()I
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarView;->getHeight()I

    move-result v0

    .line 322
    .local v0, height:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getTabScrollView()Landroid/view/View;

    move-result-object v1

    .line 323
    .local v1, tabScrollView:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 327
    :cond_0
    return v0
.end method

.method protected getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    if-nez v0, :cond_0

    .line 344
    invoke-static {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    return-object v0
.end method

.method public getSearchView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    return-object v0
.end method

.method protected getSplitActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, decorView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mContext:Landroid/content/Context;

    const v2, 0x60b0027

    invoke-static {v1, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 317
    .end local v0           #decorView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    return-object v1
.end method

.method protected getSplitActionBarHeight()I
    .locals 4

    .prologue
    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, height:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    .line 333
    .local v0, actionBarView:Lcom/miui/internal/v5/widget/ActionBarView;
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;

    move-result-object v1

    .line 335
    .local v1, actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getPrimaryContainerHeight()I

    move-result v2

    .line 339
    .end local v1           #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    :cond_0
    :goto_0
    return v2

    .line 335
    .restart local v1       #actionMenuView:Lcom/miui/internal/v5/view/menu/ActionMenuView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getTabScrollView()Landroid/view/View;
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v0

    .line 286
    .local v0, container:Lcom/miui/internal/v5/widget/ActionBarContainer;
    const/4 v1, 0x0

    .line 287
    .local v1, tabScrollView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v1

    .line 291
    :cond_0
    return-object v1
.end method

.method protected hasActionMenuView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    .line 370
    .local v0, actionBarView:Lcom/miui/internal/v5/widget/ActionBarView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionMenuView()Lcom/miui/internal/v5/view/menu/ActionMenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/internal/v5/view/menu/ActionMenuView;->getMenuItems()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "actionMode"

    .prologue
    .line 469
    return-void
.end method

.method protected initializeAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v0

    .line 240
    .local v0, container:Landroid/view/View;
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 242
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 244
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    .line 246
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 247
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    aget v2, v2, v5

    iget v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    .line 253
    :goto_0
    iput v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    .line 254
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    .line 256
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 257
    .local v1, measureSpec:I
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 258
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXStart:I

    .line 259
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    .line 261
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewBottomMargin(I)V

    .line 267
    :goto_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x60b00a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 269
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    return-void

    .line 249
    .end local v1           #measureSpec:I
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mLocation:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    .line 250
    iput v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    goto :goto_0

    .line 264
    .restart local v1       #measureSpec:I
    :cond_1
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewBottomMargin(I)V

    goto :goto_1
.end method

.method protected isFragmentViewPagerMode()Z
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionBar()Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v0

    .line 375
    .local v0, actionBar:Lcom/miui/internal/v5/app/ActionBarImpl;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    return v1
.end method

.method public killMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->finishAnimation()V

    .line 159
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 160
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    iput-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 167
    iput-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mSplitActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 168
    iput-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    .line 169
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    .line 171
    return-void
.end method

.method protected makeInAnimator()Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 222
    const-string v1, "Value"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 223
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 224
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 225
    sget-object v1, Lcom/miui/internal/v5/widget/SearchActionModeView;->sInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    return-object v0

    .line 222
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected makeOutAnimator()Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 230
    const-string v1, "Value"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 231
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    sget-object v1, Lcom/miui/internal/v5/widget/SearchActionModeView;->sInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    return-object v0

    .line 230
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 461
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 418
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;

    .line 420
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    if-ne v2, v4, :cond_3

    .line 421
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 422
    .local v1, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 423
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 427
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewTopMargin(I)V

    .line 428
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarHeight()I

    move-result v0

    .line 430
    .local v0, height:I
    if-lez v0, :cond_0

    .line 431
    neg-int v2, v0

    invoke-virtual {p0, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewBottomMargin(I)V

    .line 438
    .end local v0           #height:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/SearchActionModeView;->positionResultView(Z)V

    .line 440
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/SearchActionModeView;->showSoftInputPanel(Z)V

    .line 457
    .end local v1           #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 434
    .restart local v1       #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setContentViewBottomMargin(I)V

    goto :goto_0

    .line 441
    .end local v1           #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 442
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 445
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 446
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    .line 447
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 450
    :cond_4
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setViewClip(Z)V

    .line 451
    invoke-virtual {p0, v4}, Lcom/miui/internal/v5/widget/SearchActionModeView;->allowUpdateContentBorder(Z)V

    .line 452
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->showSoftInputPanel(Z)V

    .line 453
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/widget/SearchActionModeView;->positionResultView(Z)V

    .line 455
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->killMode()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 465
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 402
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 403
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 406
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAlpha(F)V

    .line 412
    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setViewClip(Z)V

    .line 414
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 410
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x60b00a2

    if-ne v0, v1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 501
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 275
    const v1, 0x102002c

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    .line 276
    const v1, 0x1020009

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    .line 277
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 281
    .local v0, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 282
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 478
    return-void
.end method

.method protected positionResultView(Z)V
    .locals 4
    .parameter "enter"

    .prologue
    .line 379
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResusltView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 380
    iget-boolean v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewSet:Z

    if-eqz v3, :cond_0

    .line 383
    if-eqz p1, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getHeight()I

    move-result v2

    .line 386
    .local v2, topMargin:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarHeight()I

    move-result v0

    .line 392
    .local v0, bottomMargin:I
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResusltView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 394
    .local v1, lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 395
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 398
    .end local v0           #bottomMargin:I
    .end local v1           #lParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2           #topMargin:I
    :cond_0
    return-void

    .line 386
    .restart local v2       #topMargin:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    .end local v2           #topMargin:I
    :cond_2
    iget v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 389
    .restart local v2       #topMargin:I
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .restart local v0       #bottomMargin:I
    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnchorView:Ljava/lang/ref/WeakReference;

    .line 120
    :cond_0
    return-void
.end method

.method public setAnchorViewHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public setAnimateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    .line 126
    :cond_0
    return-void
.end method

.method protected setContentViewBottomMargin(I)V
    .locals 4
    .parameter "margin"

    .prologue
    .line 504
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 509
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 511
    .local v0, lParams:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 512
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected setContentViewTopMargin(I)V
    .locals 4
    .parameter "margin"

    .prologue
    .line 517
    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 522
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 523
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 524
    .local v0, lParams:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 525
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResusltView:Ljava/lang/ref/WeakReference;

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    .local v0, lParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 137
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginTop:I

    .line 138
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #lParams:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewOriginMarginBottom:I

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mResultViewSet:Z

    .line 142
    :cond_0
    return-void
.end method

.method public setValue(F)V
    .locals 6
    .parameter "percent"

    .prologue
    .line 174
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mDimView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setAlpha(F)V

    .line 175
    iget v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYStart:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputViewTranslationYLength:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setTranslationY(F)V

    .line 177
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackView:Landroid/widget/ImageView;

    iget v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXStart:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 178
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    iget v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mBackViewTranslationXLength:I

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLeft(I)V

    .line 180
    iget v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYStart:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    .line 181
    .local v2, translationY:F
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 183
    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget v4, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomStart:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomLength:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarView()Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/internal/v5/widget/ActionBarView;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v0

    .line 191
    .local v0, actionBarContainer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 196
    .end local v0           #actionBarContainer:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarContainer()Lcom/miui/internal/v5/widget/ActionBarContainer;

    move-result-object v1

    .line 198
    .local v1, splitActionBarContainer:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 201
    :cond_1
    return-void

    .line 185
    .end local v1           #splitActionBarContainer:Landroid/view/View;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setAlpha(F)V

    goto :goto_0
.end method

.method setViewClip(Z)V
    .locals 4
    .parameter "clip"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 205
    .local v1, decorView:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 207
    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 209
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 210
    .local v0, contenView:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 212
    .end local v0           #contenView:Landroid/view/ViewGroup;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method protected showSoftInputPanel(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 360
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 362
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mInputView:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public tryCloseMode()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/SearchActionModeView;->finishAnimation()V

    .line 154
    const/4 v0, 0x1

    goto :goto_0
.end method
