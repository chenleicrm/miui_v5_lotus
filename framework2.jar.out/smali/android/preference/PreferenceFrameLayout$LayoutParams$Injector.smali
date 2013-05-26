.class Landroid/preference/PreferenceFrameLayout$LayoutParams$Injector;
.super Ljava/lang/Object;
.source "PreferenceFrameLayout.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFrameLayout$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRemoveBorders(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "removeBorders"

    .prologue
    .line 157
    move v0, p1

    .line 158
    .local v0, ret:Z
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :cond_0
    return v0
.end method
