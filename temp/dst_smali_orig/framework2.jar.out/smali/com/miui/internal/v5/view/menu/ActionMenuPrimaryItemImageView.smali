.class public Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;
.super Landroid/widget/ImageView;
.source "ActionMenuPrimaryItemImageView.java"

# interfaces
.implements Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemView;


# instance fields
.field private mIsCheckable:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setSelected(Z)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setCheckable(Z)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setEnabled(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .local v1, backgroundWidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .local v0, backgroundHeight:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setMeasuredDimension(II)V

    .end local v0           #backgroundHeight:I
    .end local v1           #backgroundWidth:I
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->playSoundEffect(I)V

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
    iput-boolean p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mIsCheckable:Z

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    iget-boolean v0, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mIsCheckable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "itemInvoker"

    .prologue
    iput-object p1, p0, Lcom/miui/internal/v5/view/menu/ActionMenuPrimaryItemImageView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

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
    .locals 0
    .parameter "title"

    .prologue
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
