.class Lmiui/v5/widget/TabContainerLayout$TabViewImpl;
.super Landroid/widget/LinearLayout;
.source "TabContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabViewImpl"
.end annotation


# instance fields
.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lmiui/v5/widget/TabContainerLayout;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/TabContainerLayout;Landroid/content/Context;Landroid/app/ActionBar$Tab;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "tab"

    .prologue
    .line 461
    iput-object p1, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    .line 462
    const/4 v0, 0x0

    const v1, 0x60100a0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 463
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setGravity(I)V

    .line 465
    iput-object p3, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTab:Landroid/app/ActionBar$Tab;

    .line 466
    invoke-virtual {p0}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->update()V

    .line 467
    return-void
.end method


# virtual methods
.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 471
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iget v0, v0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    if-lez v0, :cond_0

    .line 472
    iget-object v0, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iget v0, v0, Lmiui/v5/widget/TabContainerLayout;->mTabWidth:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 475
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 476
    return-void
.end method

.method public update()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 479
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iget v4, v4, Lmiui/v5/widget/TabContainerLayout;->mTabBackgroundResId:I

    if-eqz v4, :cond_0

    .line 480
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->this$0:Lmiui/v5/widget/TabContainerLayout;

    iget v4, v4, Lmiui/v5/widget/TabContainerLayout;->mTabBackgroundResId:I

    invoke-virtual {p0, v4}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->setBackgroundResource(I)V

    .line 483
    :cond_0
    iget-object v2, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTab:Landroid/app/ActionBar$Tab;

    .line 484
    .local v2, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 485
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 486
    .local v3, text:Ljava/lang/CharSequence;
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 488
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 489
    const v4, 0x6030050

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTextView:Landroid/widget/TextView;

    .line 490
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->addView(Landroid/view/View;)V

    .line 492
    :cond_1
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v4, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v0, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v6, p0, Lmiui/v5/widget/TabContainerLayout$TabViewImpl;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_0
    invoke-virtual {v6, v4, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 496
    return-void

    :cond_2
    move v4, v5

    .line 495
    goto :goto_0
.end method
