.class public Lmiui/v5/view/DefaultActionMode;
.super Landroid/view/ActionMode;
.source "DefaultActionMode.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/DefaultActionMode$ActionModeCallback;
    }
.end annotation


# instance fields
.field private mActionModeCallback:Lmiui/v5/view/DefaultActionMode$ActionModeCallback;

.field protected mActionModeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/internal/v5/view/ActionModeView;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/view/ActionMode$Callback;

.field protected mContext:Landroid/content/Context;

.field private mFinished:Z

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lmiui/v5/view/DefaultActionMode;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lmiui/v5/view/DefaultActionMode;->mFinished:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/view/ActionModeView;

    .local v0, presenter:Lcom/miui/internal/v5/view/ActionModeView;
    invoke-interface {v0}, Lcom/miui/internal/v5/view/ActionModeView;->tryCloseMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mActionModeCallback:Lmiui/v5/view/DefaultActionMode$ActionModeCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mActionModeCallback:Lmiui/v5/view/DefaultActionMode$ActionModeCallback;

    invoke-interface {v1, p0}, Lmiui/v5/view/DefaultActionMode$ActionModeCallback;->onActionModeFinish(Landroid/view/ActionMode;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/v5/view/DefaultActionMode;->mFinished:Z

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getCustomView not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSubtitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    :try_start_0
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmiui/v5/view/DefaultActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "menu"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/view/DefaultActionMode;->invalidate()V

    goto :goto_0
.end method

.method public setActionModeCallback(Lmiui/v5/view/DefaultActionMode$ActionModeCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lmiui/v5/view/DefaultActionMode;->mActionModeCallback:Lmiui/v5/view/DefaultActionMode$ActionModeCallback;

    return-void
.end method

.method public setActionModeView(Lcom/miui/internal/v5/view/ActionModeView;)V
    .locals 1
    .parameter "presenter"

    .prologue
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/v5/view/DefaultActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-interface {p1, p0}, Lcom/miui/internal/v5/view/ActionModeView;->initForMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setCustomView not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubtitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setSubTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "subtitle"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setSubTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setTitle not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
