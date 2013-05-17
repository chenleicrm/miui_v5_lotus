.class public Lmiui/v5/widget/TranslateIndicator;
.super Landroid/widget/ImageView;
.source "TranslateIndicator.java"

# interfaces
.implements Lmiui/v5/widget/TabIndicator;


# instance fields
.field private mTabContainer:Lmiui/v5/widget/TabContainerLayout;

.field private mTabWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TranslateIndicator;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public apply(IF)F
    .locals 4
    .parameter "position"
    .parameter "percent"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/v5/widget/TranslateIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    int-to-float v1, p1

    add-float/2addr v1, p2

    iget v2, p0, Lmiui/v5/widget/TranslateIndicator;->mTabWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/v5/widget/TranslateIndicator;->setTranslationX(F)V

    goto :goto_0
.end method

.method public attach(Lmiui/v5/widget/TabContainerLayout;)V
    .locals 1
    .parameter "tabContainer"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/TranslateIndicator;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {p1}, Lmiui/v5/widget/TabContainerLayout;->getIndicatorContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lmiui/v5/widget/TabContainerLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TranslateIndicator;->setTabWidth(I)V

    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/v5/widget/TranslateIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    iget-object v1, p0, Lmiui/v5/widget/TranslateIndicator;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v1}, Lmiui/v5/widget/TabContainerLayout;->getTabWidth()I

    move-result v1

    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, w:I
    invoke-super {p0, v0, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "indicator"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/v5/widget/TranslateIndicator;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTabWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    iput p1, p0, Lmiui/v5/widget/TranslateIndicator;->mTabWidth:I

    invoke-virtual {p0}, Lmiui/v5/widget/TranslateIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lmiui/v5/widget/TranslateIndicator;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v1}, Lmiui/v5/widget/TabContainerLayout;->getOffsetX()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TranslateIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
