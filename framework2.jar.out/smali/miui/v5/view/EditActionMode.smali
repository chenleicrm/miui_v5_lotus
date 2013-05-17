.class public Lmiui/v5/view/EditActionMode;
.super Lmiui/v5/view/DefaultActionMode;
.source "EditActionMode.java"


# static fields
.field public static final BUTTON1:I = 0x1020019

.field public static final BUTTON2:I = 0x102001a


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lmiui/v5/view/DefaultActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 15
    return-void
.end method


# virtual methods
.method public setButton(II)V
    .locals 1
    .parameter "whichButton"
    .parameter "resId"

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/v5/view/EditActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/v5/view/EditActionMode;->setButton(ILjava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "whichButton"
    .parameter "text"

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/v5/view/EditActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContextView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    .line 29
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/v5/view/EditActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/v5/view/EditActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/v5/view/EditActionMode;->mActionModeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
