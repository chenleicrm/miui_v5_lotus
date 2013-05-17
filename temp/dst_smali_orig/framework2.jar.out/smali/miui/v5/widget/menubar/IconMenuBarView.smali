.class public Lmiui/v5/widget/menubar/IconMenuBarView;
.super Landroid/widget/FrameLayout;
.source "IconMenuBarView.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;
.implements Lmiui/v5/widget/menubar/MenuBarView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;,
        Lmiui/v5/widget/menubar/IconMenuBarView$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPAND_DURATION:I = 0x12c

.field private static final VIEW_STATE_COLLAPSED:I = 0x0

.field private static final VIEW_STATE_COLLAPSING:I = 0x1

.field private static final VIEW_STATE_EXPANDED:I = 0x3

.field private static final VIEW_STATE_EXPANDING:I = 0x2


# instance fields
.field private mDimContainer:Landroid/view/View;

.field private mExpandAnimation:Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

.field private mExpandDuration:I

.field private mMaxItems:I

.field private mMenu:Lmiui/v5/widget/menubar/MenuBar;

.field private mMoreIconView:Landroid/view/View;

.field private mPrimaryContainer:Landroid/widget/LinearLayout;

.field private mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrimaryContainerHeight:I

.field private mSecondaryContainer:Landroid/widget/LinearLayout;

.field private mViewState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I

    new-instance v0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;-><init>(Lmiui/v5/widget/menubar/IconMenuBarView;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimation:Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    const/16 v0, 0x12c

    iput v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandDuration:I

    return-void
.end method

.method static synthetic access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/v5/widget/menubar/IconMenuBarView;)Lmiui/v5/widget/menubar/MenuBar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$702(Lmiui/v5/widget/menubar/IconMenuBarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I

    return p1
.end method


# virtual methods
.method protected computeAlpha(FZZ)F
    .locals 3
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    const/high16 v2, 0x4120

    const/high16 v0, 0x3f80

    .local v0, alpha:F
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    mul-float v1, p1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v0, v1, v2

    goto :goto_0
.end method

.method protected computeTranslationY(FZZ)F
    .locals 8
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenubar"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    iget v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerHeight:I

    int-to-float v0, v2

    .local v0, height:F
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    mul-float/2addr p1, v7

    :cond_0
    :goto_0
    mul-float v1, p1, v0

    .local v1, translationY:F
    return v1

    .end local v1           #translationY:F
    :cond_1
    sub-float v2, v6, p1

    mul-float p1, v7, v2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    sub-float p1, v6, p1

    goto :goto_0
.end method

.method protected createMoreItemView(Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    .locals 5
    .parameter "convertView"
    .parameter "iconMenuBarPrimaryItemResId"
    .parameter "moreIconDrawable"
    .parameter "moreIconBackgroundDrawable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, itemView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x60c01fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, p3, v3, v3}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v4}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setEnabled(Z)V

    invoke-virtual {v0, v4}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setCheckable(Z)V

    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setItemInvoker(Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0

    .end local v1           #r:Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #itemView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    check-cast v0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;

    .restart local v0       #itemView:Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
    goto :goto_0
.end method

.method protected ensureVisibility()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMaxItems:I

    return v0
.end method

.method public getPrimaryContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getPrimaryContainerHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerHeight:I

    return v0
.end method

.method public getPrimaryContainerLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSecondaryContainerLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lmiui/v5/widget/menubar/MenuBar;)V
    .locals 0
    .parameter "menu"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    return-void
.end method

.method public invokeItem(Lmiui/v5/widget/menubar/MenuBarItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1, p1, v2}, Lmiui/v5/widget/menubar/MenuBar;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .local v0, invoked:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->requestExpand(Z)Z

    :cond_0
    return v0
.end method

.method public isExpanded()Z
    .locals 2

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->onMoreItemClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x60b00a2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v1, 0x60b00a2

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x60b00a4

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    new-instance v2, Lmiui/v5/widget/menubar/IconMenuBarView$1;

    invoke-direct {v2, p0}, Lmiui/v5/widget/menubar/IconMenuBarView$1;-><init>(Lmiui/v5/widget/menubar/IconMenuBarView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, padding:Landroid/graphics/Rect;
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerHeight:I

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x601007e

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    const v1, 0x60b00a5

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    sub-int v0, p5, p3

    .local v0, height:I
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, p2, v2, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {v1, p2, p5, p4, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method onMoreItemClick()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->requestExpand(Z)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(FZZ)V
    .locals 4
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarView;->ensureVisibility()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmiui/v5/widget/menubar/IconMenuBarView;->computeAlpha(FZZ)F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/v5/widget/menubar/IconMenuBarView;->setAlpha(F)V

    invoke-virtual {p0, p1, p2, p3}, Lmiui/v5/widget/menubar/IconMenuBarView;->computeTranslationY(FZZ)F

    move-result v2

    .local v2, translationY:F
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_2
    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method requestExpand(Z)Z
    .locals 4
    .parameter "expand"

    .prologue
    const/4 v0, 0x0

    .local v0, handled:Z
    iget v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimation:Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->reset()V

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimation:Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    iget v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->setDuration(J)V

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimation:Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    invoke-virtual {v1, p1}, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->expand(Z)Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    move-result-object v1

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->transition(F)Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mExpandAnimation:Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return v0

    :pswitch_1
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPrimaryContainerLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method public setPrimaryMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSecondaryContainerLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .parameter "animation"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method
