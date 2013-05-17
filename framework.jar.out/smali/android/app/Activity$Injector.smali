.class Landroid/app/Activity$Injector;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAccessControl(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 657
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getToken()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lmiui/net/FirewallManager;->checkAccessControl(Landroid/app/Activity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method static generateActionBar(Landroid/app/Activity;)Lcom/android/internal/app/ActionBarImpl;
    .locals 1
    .parameter "activity"

    .prologue
    .line 677
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "activity"
    .parameter "item"

    .prologue
    .line 669
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 670
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 671
    const/4 v0, 0x1

    .line 673
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static onWindowHide(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 689
    .local v0, actionBar:Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    if-eqz v1, :cond_0

    .line 690
    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    .end local v0           #actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->onWindowHide()V

    .line 692
    :cond_0
    return-void
.end method

.method static onWindowShow(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 682
    .local v0, actionBar:Landroid/app/ActionBar;
    instance-of v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl;

    .end local v0           #actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->onWindowShow()V

    .line 685
    :cond_0
    return-void
.end method

.method static setActivityGravity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 662
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10100ae

    invoke-static {p0, v0}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x60d0006

    if-ne v0, v1, :cond_0

    .line 664
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 666
    :cond_0
    return-void
.end method
