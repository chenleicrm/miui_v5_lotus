.class public Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;


# static fields
.field private static final DEFAULT_TAB_INDICATOR_ANIMATOR_DURATION:I = 0x12c

.field private static final TAB_INDICATOR_ANIMATOR_PROPERTY:Ljava/lang/String; = "TranslationX"


# instance fields
.field private mIsFragmentViewPagerMode:Z

.field private mTabIndicator:Landroid/widget/ImageView;

.field private mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->createTabIndicator()V

    .line 29
    return-void
.end method


# virtual methods
.method animateIndicatorToTab(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->animateIndicatorToTab(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public animateIndicatorToTab(Landroid/view/View;)V
    .locals 4
    .parameter "tabView"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mIsFragmentViewPagerMode:Z

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_2

    .line 98
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    .line 99
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    const-string v2, "TranslationX"

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v0, v1

    .line 106
    .local v0, endTranslationX:F
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 107
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 108
    iget-object v1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateToTab(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->animateIndicatorToTab(I)V

    .line 36
    return-void
.end method

.method public createTabIndicator()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 131
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 143
    :goto_0
    return-void

    .line 135
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x601009a

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    .line 136
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v0, lParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 139
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 142
    .local v1, measureSpec:I
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 44
    invoke-super/range {p0 .. p5}, Lcom/android/internal/widget/ScrollingTabContainerView;->onLayout(ZIIII)V

    .line 47
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 48
    .local v1, tabLayout:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getSelectedTabIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 52
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 53
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 59
    .local v2, translationX:I
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 69
    .end local v0           #child:Landroid/view/View;
    .end local v2           #translationX:I
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_2

    .line 66
    iget-object v3, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 128
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 5
    .parameter "position"
    .parameter "ratio"
    .parameter "fromHasActionMenu"
    .parameter "toHasActionMenu"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->getTabLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, tabView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float v1, v2, v3

    .line 119
    .local v1, translationX:F
    iget-object v2, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 120
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 124
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->onViewRemoved(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mTabIndicator:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 85
    :cond_0
    return-void
.end method

.method public setFragmentViewPagerMode(Z)V
    .locals 0
    .parameter "isFragmentViewPagerMode"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->mIsFragmentViewPagerMode:Z

    .line 40
    return-void
.end method
