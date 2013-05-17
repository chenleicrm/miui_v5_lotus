.class Landroid/app/Dialog$Injector;
.super Ljava/lang/Object;
.source "Dialog.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateActionBar(Landroid/app/Dialog;)Lcom/android/internal/app/ActionBarImpl;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method static onWindowHide(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 105
    .local v0, actionBar:Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    .end local v0           #actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->onWindowHide()V

    .line 108
    :cond_0
    return-void
.end method

.method static onWindowShow(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, actionBar:Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    .end local v0           #actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->onWindowShow()V

    .line 101
    :cond_0
    return-void
.end method

.method static setDialogGravity(Landroid/app/Dialog;I)V
    .locals 2
    .parameter "dialog"
    .parameter "themeResId"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 90
    :cond_0
    return-void
.end method
