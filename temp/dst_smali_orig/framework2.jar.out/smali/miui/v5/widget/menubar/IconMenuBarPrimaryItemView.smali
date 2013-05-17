.class public Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;
.super Landroid/widget/Button;
.source "IconMenuBarPrimaryItemView.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBarView$ItemView;


# instance fields
.field private mIsCheckable:Z

.field private mIsMoreView:Z

.field private mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

.field private mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getItemData()Lmiui/v5/widget/menubar/MenuBarItem;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

    return-object v0
.end method

.method public initialize(Lmiui/v5/widget/menubar/MenuBarItem;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setSelected(Z)V

    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setChecked(Z)V

    invoke-virtual {p1}, Lmiui/v5/widget/menubar/MenuBarItem;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setEnabled(Z)V

    return-void
.end method

.method isMoreView()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mIsMoreView:Z

    return v0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;

    iget-object v3, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mItemData:Lmiui/v5/widget/menubar/MenuBarItem;

    invoke-interface {v2, v3}, Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;->invokeItem(Lmiui/v5/widget/menubar/MenuBarItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->playSoundEffect(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    iput-boolean p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mIsCheckable:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .local v0, currentIcon:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v3, p1, v3, v3}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method setIsMoreView(Z)V
    .locals 0
    .parameter "isMoreView"

    .prologue
    iput-boolean p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mIsMoreView:Z

    return-void
.end method

.method public setItemInvoker(Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;)V
    .locals 0
    .parameter "itemInvoker"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->mItemInvoker:Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, currentTitle:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/v5/widget/menubar/IconMenuBarPrimaryItemView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
