.class public Lmiui/v5/widget/TabContainerLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabContainerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/TabContainerLayout$TabImpl;,
        Lmiui/v5/widget/TabContainerLayout$TransactionFractory;,
        Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;,
        Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;,
        Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;,
        Lmiui/v5/widget/TabContainerLayout$TabViewImpl;,
        Lmiui/v5/widget/TabContainerLayout$TabViewStyle;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mInteractive:Z

.field mMaxVisibleTabCount:I

.field mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

.field private mSelectedTab:Landroid/app/ActionBar$Tab;

.field mTabBackgroundResId:I

.field final mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field mTabViewStyle:Lmiui/v5/widget/TabContainerLayout$TabViewStyle;

.field mTabWidth:I

.field private mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

.field private mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

.field final mWrapLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/TabContainerLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/v5/widget/TabContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/v5/widget/TabContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lmiui/v5/widget/TabContainerLayout;->mInteractive:Z

    iput-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabViewStyle:Lmiui/v5/widget/TabContainerLayout$TabViewStyle;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmiui/v5/widget/TabContainerLayout;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Lmiui/v5/widget/TabContainerLayout;->setScrollStrategy(Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;)V

    invoke-static {p1}, Lmiui/v5/widget/MiuiViewConfiguration;->get(Landroid/content/Context;)Lmiui/v5/widget/MiuiViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/v5/widget/MiuiViewConfiguration;->getMaxVisibleTabCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lmiui/v5/widget/TabContainerLayout;->setMaxVisibleTabCount(I)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .local v1, wrap:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout;

    const v2, 0x601009f

    invoke-direct {v0, p1, v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .local v0, tabLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lmiui/v5/widget/TabContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mWrapLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method private animateToTab(Landroid/view/View;)V
    .locals 1
    .parameter "tabView"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$1;

    invoke-direct {v0, p0, p1}, Lmiui/v5/widget/TabContainerLayout$1;-><init>(Lmiui/v5/widget/TabContainerLayout;Landroid/view/View;)V

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    .locals 2
    .parameter "tab"

    .prologue
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;-><init>(Lmiui/v5/widget/TabContainerLayout;Landroid/content/Context;Landroid/app/ActionBar$Tab;)V

    .local v0, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setFocusable(Z)V

    invoke-virtual {v0, p0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private doSelectTab(Landroid/app/ActionBar$Tab;)Landroid/app/ActionBar$Tab;
    .locals 4
    .parameter "tab"

    .prologue
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    .local v1, oldSelected:Landroid/app/ActionBar$Tab;
    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, newTabView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->animateToTab(Landroid/view/View;)V

    return-object v1

    .end local v0           #newTabView:Landroid/view/View;
    :cond_0
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    invoke-direct {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->selectedTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    move-result-object v0

    .restart local v0       #newTabView:Landroid/view/View;
    goto :goto_0
.end method

.method private selectedTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    .locals 5
    .parameter "tab"

    .prologue
    const/4 v2, 0x0

    .local v2, selected:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .local v3, tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    invoke-virtual {v3}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    if-ne p1, v4, :cond_0

    move-object v2, v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setSelected(Z)V

    goto :goto_1

    .end local v3           #tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .parameter "tab"
    .parameter "position"
    .parameter "selected"

    .prologue
    invoke-direct {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->createTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    move-result-object v0

    .local v0, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "selected"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lmiui/v5/widget/TabContainerLayout;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public attachIndicator(Lmiui/v5/widget/TabIndicator;)V
    .locals 0
    .parameter "indicator"

    .prologue
    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lmiui/v5/widget/TabIndicator;->attach(Lmiui/v5/widget/TabContainerLayout;)V

    :cond_0
    return-void
.end method

.method public detachIndicator(Lmiui/v5/widget/TabIndicator;)V
    .locals 0
    .parameter "indicator"

    .prologue
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmiui/v5/widget/TabIndicator;->detach()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/TabContainerLayout;->mInteractive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findCurrentTabPos()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v0

    return v0
.end method

.method public findTabPosition(Landroid/app/ActionBar$Tab;)I
    .locals 5
    .parameter "tab"

    .prologue
    const/4 v2, -0x1

    .local v2, index:I
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .local v3, tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    invoke-virtual {v3}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    if-ne p1, v4, :cond_1

    move v2, v1

    .end local v3           #tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_0
    return v2

    .restart local v3       #tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundHeight()I
    .locals 2

    .prologue
    invoke-static {p0}, Lmiui/v5/widget/Views;->getBackgroundHeight(Landroid/view/View;)I

    move-result v0

    .local v0, height:I
    if-gtz v0, :cond_0

    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lmiui/v5/widget/Views;->getBackgroundHeight(Landroid/view/View;)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getIndicatorContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mWrapLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getOffsetX()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 2
    .parameter "position"

    .prologue
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .local v0, tv:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTabWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    return v0
.end method

.method public newTab(Landroid/app/ActionBar$TabListener;)Lmiui/v5/widget/TabContainerLayout$TabImpl;
    .locals 1
    .parameter "l"

    .prologue
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-direct {v0, p0, p1}, Lmiui/v5/widget/TabContainerLayout$TabImpl;-><init>(Lmiui/v5/widget/TabContainerLayout;Landroid/app/ActionBar$TabListener;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    check-cast p1, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .end local p1
    invoke-virtual {p1}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    invoke-direct {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->selectedTabView(Landroid/app/ActionBar$Tab;)Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/high16 v9, 0x4000

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getBackgroundHeight()I

    move-result v8

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .local v6, widthMode:I
    if-ne v6, v9, :cond_3

    move v1, v7

    .local v1, lockedExpanded:Z
    :goto_0
    invoke-virtual {p0, v1}, Lmiui/v5/widget/TabContainerLayout;->setFillViewport(Z)V

    iget v5, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    .local v5, tabWidth:I
    iget-object v8, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, childCount:I
    if-le v0, v7, :cond_4

    if-eq v6, v9, :cond_0

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_4

    :cond_0
    iget v7, p0, Lmiui/v5/widget/TabContainerLayout;->mMaxVisibleTabCount:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, tabCount:I
    iget-object v7, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v8

    add-int v3, v7, v8

    .local v3, padding:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    sub-int/2addr v7, v3

    div-int v5, v7, v4

    .end local v3           #padding:I
    .end local v4           #tabCount:I
    :goto_1
    iget v7, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    if-eq v7, v5, :cond_1

    iput v5, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->onTabWidthChanged()V

    :cond_1
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getMeasuredWidth()I

    move-result v2

    .local v2, oldWidth:I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getMeasuredWidth()I

    move-result v7

    if-eq v2, v7, :cond_2

    iget-object v7, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v7}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    :cond_2
    return-void

    .end local v0           #childCount:I
    .end local v1           #lockedExpanded:Z
    .end local v2           #oldWidth:I
    .end local v5           #tabWidth:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #childCount:I
    .restart local v1       #lockedExpanded:Z
    .restart local v5       #tabWidth:I
    :cond_4
    const/4 v5, -0x1

    goto :goto_1
.end method

.method protected onTabReselected(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .local v1, l:Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    invoke-interface {v2}, Lmiui/v5/widget/TabContainerLayout$TransactionFractory;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .local v0, ft:Landroid/app/FragmentTransaction;
    :goto_1
    invoke-interface {v1, p1, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTabSelected(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .local v1, l:Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    invoke-interface {v2}, Lmiui/v5/widget/TabContainerLayout$TransactionFractory;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .local v0, ft:Landroid/app/FragmentTransaction;
    :goto_1
    invoke-interface {v1, p1, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTabUnselected(Landroid/app/ActionBar$Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    .local v1, l:Landroid/app/ActionBar$TabListener;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    invoke-interface {v2}, Lmiui/v5/widget/TabContainerLayout$TransactionFractory;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .local v0, ft:Landroid/app/FragmentTransaction;
    :goto_1
    invoke-interface {v1, p1, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTabWidthChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

    invoke-interface {v0, p0}, Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;->onTabWidthChanged(Lmiui/v5/widget/TabContainerLayout;)V

    :cond_0
    return-void
.end method

.method public removeAllTabs()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x1

    return v0
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)Z
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v0, 0x0

    .local v0, selectChanged:Z
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    if-ne v1, p1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mSelectedTab:Landroid/app/ActionBar$Tab;

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return v0
.end method

.method public removeTabAt(I)Z
    .locals 1
    .parameter "position"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->removeTab(Landroid/app/ActionBar$Tab;)Z

    move-result v0

    return v0
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)Z
    .locals 2
    .parameter "tab"

    .prologue
    const/4 v0, 0x0

    .local v0, changed:Z
    invoke-direct {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->doSelectTab(Landroid/app/ActionBar$Tab;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .local v1, oldSelected:Landroid/app/ActionBar$Tab;
    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->onTabReselected(Landroid/app/ActionBar$Tab;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1}, Lmiui/v5/widget/TabContainerLayout;->onTabUnselected(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->onTabSelected(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method public selectTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TabContainerLayout;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->selectTab(Landroid/app/ActionBar$Tab;)Z

    return-void
.end method

.method public setInteractive(Z)V
    .locals 0
    .parameter "interactive"

    .prologue
    iput-boolean p1, p0, Lmiui/v5/widget/TabContainerLayout;->mInteractive:Z

    return-void
.end method

.method public setMaxVisibleTabCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count > 0 is need! count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lmiui/v5/widget/TabContainerLayout;->mMaxVisibleTabCount:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lmiui/v5/widget/TabContainerLayout;->mMaxVisibleTabCount:I

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setScrollStrategy(Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;)V
    .locals 1
    .parameter "strategy"

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;

    invoke-direct {v0}, Lmiui/v5/widget/TabContainerLayout$DefaultScrollStrategy;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mScrollStrategy:Lmiui/v5/widget/TabContainerLayout$ScrollStrategy;

    goto :goto_0
.end method

.method public setTabBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iput p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabBackgroundResId:I

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->getTabCount()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout;->updateTabAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout;->requestLayout()V

    return-void
.end method

.method public setTabViewStyle(Lmiui/v5/widget/TabContainerLayout$TabViewStyle;)V
    .locals 0
    .parameter "style"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabViewStyle:Lmiui/v5/widget/TabContainerLayout$TabViewStyle;

    return-void
.end method

.method setTabWidthChangedListener(Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabWidthChangedListener:Lmiui/v5/widget/TabContainerLayout$TabWidthChangedListener;

    return-void
.end method

.method public setTransactionFractory(Lmiui/v5/widget/TabContainerLayout$TransactionFractory;)V
    .locals 0
    .parameter "factory"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout;->mTransactions:Lmiui/v5/widget/TabContainerLayout$TransactionFractory;

    return-void
.end method

.method public updateTabAt(I)V
    .locals 2
    .parameter "position"

    .prologue
    iget-object v1, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .local v0, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->update()V

    :cond_0
    return-void
.end method

.method public updateTabPosition()V
    .locals 4

    .prologue
    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lmiui/v5/widget/TabContainerLayout;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;

    .local v2, tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    invoke-virtual {v2}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    check-cast v3, Lmiui/v5/widget/TabContainerLayout$TabImpl;

    invoke-virtual {v3, v1}, Lmiui/v5/widget/TabContainerLayout$TabImpl;->setPosition(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #tabView:Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
    :cond_0
    return-void
.end method
