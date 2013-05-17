.class public Lmiui/v5/view/EditableActionMode;
.super Lmiui/v5/view/MiuiActionMode;
.source "EditableActionMode.java"

# interfaces
.implements Lmiui/v5/widget/menubar/MenuBar$Callback;
.implements Lmiui/v5/view/EditModeTitleBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/EditableActionMode$TitleBarImpl;
    }
.end annotation


# static fields
.field static final ACTION_NUM:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

.field private final mIconMenuBarView:Lmiui/v5/widget/menubar/IconMenuBarView;

.field final mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

.field private final mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6
    .parameter "context"
    .parameter "topContainer"
    .parameter "bottomContainer"

    .prologue
    invoke-direct {p0}, Lmiui/v5/view/MiuiActionMode;-><init>()V

    iput-object p1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/v5/widget/menubar/MenuBar;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0, p0}, Lmiui/v5/widget/menubar/MenuBar;->setCallback(Lmiui/v5/widget/menubar/MenuBar$Callback;)V

    new-instance v0, Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    const v3, 0x6030029

    const v4, 0x603002a

    const v5, 0x603002b

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    const v2, 0x6010065

    invoke-static {v1, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->setMoreIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->setEditMode(Z)V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->addMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    invoke-virtual {v0, p3}, Lmiui/v5/widget/menubar/IconMenuBarPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiui/v5/widget/menubar/MenuBarView;

    move-result-object v0

    check-cast v0, Lmiui/v5/widget/menubar/IconMenuBarView;

    iput-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarView:Lmiui/v5/widget/menubar/IconMenuBarView;

    new-instance v0, Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-direct {v0, p2, p0}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;-><init>(Landroid/view/ViewGroup;Lmiui/v5/view/EditableActionMode;)V

    iput-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->detach()V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    const v2, 0x6040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    return-void
.end method

.method public getButtonText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getButtonText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getButtonVisiblity(I)I
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getButtonVisiblity(I)I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->clear()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onCreateMenuBarPanel(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuBarPanelClose(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->setCallback(Lmiui/v5/widget/menubar/MenuBar$Callback;)V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarPresenter:Lmiui/v5/widget/menubar/IconMenuBarPresenter;

    invoke-virtual {v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->removeMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onMenuBarPanelItemSelected(Landroid/view/Menu;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuBarPanelModeChange(Landroid/view/Menu;I)V
    .locals 0
    .parameter "menu"
    .parameter "mode"

    .prologue
    return-void
.end method

.method public onMenuBarPanelOpen(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    return-void
.end method

.method public onPrepareMenuBarPanel(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setBackground(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setBackground(I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonBackground(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1, p2}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setButtonBackground(II)V

    return-void
.end method

.method public setButtonBackground(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1, p2}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setButtonBackground(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonText(II)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1, p2}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setButtonText(II)V

    return-void
.end method

.method public setButtonText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1, p2}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setButtonText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButtonVisibility(II)V
    .locals 1
    .parameter "id"
    .parameter "visibility"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1, p2}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setButtonVisibility(II)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0, p1}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public start(Landroid/view/ActionMode$Callback;)V
    .locals 3
    .parameter "callback"

    .prologue
    invoke-super {p0, p1}, Lmiui/v5/view/MiuiActionMode;->start(Landroid/view/ActionMode$Callback;)V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->reopen()V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mTitleBar:Lmiui/v5/view/EditableActionMode$TitleBarImpl;

    invoke-virtual {v0}, Lmiui/v5/view/EditableActionMode$TitleBarImpl;->attach()V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/view/EditableActionMode;->invalidate()V

    iget-object v0, p0, Lmiui/v5/view/EditableActionMode;->mIconMenuBarView:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-virtual {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->getPrimaryContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mContext:Landroid/content/Context;

    const v2, 0x6040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public tryToFinish()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/v5/view/EditableActionMode;->mMenuBar:Lmiui/v5/widget/menubar/MenuBar;

    invoke-virtual {v1, v0}, Lmiui/v5/widget/menubar/MenuBar;->expand(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lmiui/v5/view/MiuiActionMode;->tryToFinish()Z

    move-result v0

    goto :goto_0
.end method
