.class public Lmiui/v5/view/MiuiActionMode;
.super Landroid/view/ActionMode;
.source "MiuiActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/MiuiActionMode$ActionModeListener;
    }
.end annotation


# instance fields
.field private mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

.field private mActive:Z

.field protected mCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    invoke-interface {v0, p0}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeFinished(Lmiui/v5/view/MiuiActionMode;)V

    :cond_0
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    return v0
.end method

.method public setActionModeListener(Lmiui/v5/view/MiuiActionMode$ActionModeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    return-void
.end method

.method public start(Landroid/view/ActionMode$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/MiuiActionMode;->mActive:Z

    iput-object p1, p0, Lmiui/v5/view/MiuiActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/v5/view/MiuiActionMode;->mActionModeListener:Lmiui/v5/view/MiuiActionMode$ActionModeListener;

    invoke-interface {v0, p0}, Lmiui/v5/view/MiuiActionMode$ActionModeListener;->onActionModeStarted(Lmiui/v5/view/MiuiActionMode;)V

    :cond_1
    return-void
.end method

.method public tryToFinish()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/v5/view/MiuiActionMode;->finish()V

    const/4 v0, 0x1

    return v0
.end method
