.class Lcom/android/internal/app/ActionBarImpl$Injector;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getScrollingTabContainerView(Landroid/content/Context;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, tabContainerView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;

    .end local v0           #tabContainerView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-direct {v0, p0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 81
    .restart local v0       #tabContainerView:Lcom/android/internal/widget/ScrollingTabContainerView;
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    .end local v0           #tabContainerView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .restart local v0       #tabContainerView:Lcom/android/internal/widget/ScrollingTabContainerView;
    goto :goto_0
.end method
