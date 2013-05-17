.class Lmiui/v5/app/TitleBars$TitleBarImpl;
.super Ljava/lang/Object;
.source "TitleBars.java"

# interfaces
.implements Lmiui/v5/app/TitleBar;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/app/TitleBars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleBarImpl"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field protected final mBackPlaceholder:Landroid/view/View;

.field protected final mContainer:Landroid/view/View;

.field protected final mCustomViewContainer:Landroid/view/ViewGroup;

.field protected final mHomeIcon:Landroid/widget/ImageView;

.field protected final mLogoIcon:Landroid/widget/ImageView;

.field private final mMenuBuilder:Landroid/view/Menu;

.field protected final mPrimaryText:Landroid/widget/TextView;

.field protected final mSecondaryText:Landroid/widget/TextView;

.field protected final mSeparator:Landroid/widget/ImageView;

.field protected final mShortcutIcon:Landroid/widget/ImageView;

.field protected final mTertiaryText:Landroid/widget/TextView;

.field private final mType:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .parameter "a"
    .parameter "container"
    .parameter "type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mMenuBuilder:Landroid/view/Menu;

    const v0, 0x102000c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    const v0, 0x102000b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    const v0, 0x1020005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    const v0, 0x60b0081

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    const v0, 0x1020006

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    const v0, 0x102002c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    const v0, 0x1020017

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    const v0, 0x102002b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    const v0, 0x60b00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mBackPlaceholder:Landroid/view/View;

    iput p3, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mType:I

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private updateSeperator()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->getSecondaryText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->getTertiaryText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTertiaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, id:I
    iget-object v2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mMenuBuilder:Landroid/view/Menu;

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, item:Landroid/view/MenuItem;
    if-nez v1, :cond_0

    iget-object v2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mMenuBuilder:Landroid/view/Menu;

    const-string v3, ""

    invoke-interface {v2, v4, v0, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    return-void
.end method

.method public setCustomView(I)Landroid/view/View;
    .locals 5
    .parameter "layoutId"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p1, v0, v4}, Lmiui/v5/widget/Views;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1, v2}, Lmiui/v5/app/TitleBars$TitleBarImpl;->setCustomView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    move-result-object v2

    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method public setCustomView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setCustomViewVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mCustomViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setHomeIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setHomeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setHomeIconVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/16 v0, 0x8

    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mHomeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mBackPlaceholder:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mBackPlaceholder:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setLogoIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setLogoIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLogoIconVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mLogoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setPrimaryText(I)V
    .locals 1
    .parameter "textId"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setPrimaryTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    :cond_0
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    :cond_0
    return-void
.end method

.method public setSecondaryTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    :cond_0
    return-void
.end method

.method public setSeparator(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setSeparator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mSeparator:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setShortcutIcon(I)V
    .locals 1
    .parameter "iconId"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public setShortcutIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setShortcutIconVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mShortcutIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTertiaryText(I)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    :cond_0
    return-void
.end method

.method public setTertiaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    :cond_0
    return-void
.end method

.method public setTertiaryTextTextVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/app/TitleBars$TitleBarImpl;->mTertiaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lmiui/v5/app/TitleBars$TitleBarImpl;->updateSeperator()V

    :cond_0
    return-void
.end method
