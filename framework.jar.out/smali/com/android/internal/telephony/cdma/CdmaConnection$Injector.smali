.class Lcom/android/internal/telephony/cdma/CdmaConnection$Injector;
.super Ljava/lang/Object;
.source "CdmaConnection.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static nullifyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method static setPostDialState(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 0
    .parameter "conn"
    .parameter "s"

    .prologue
    .line 46
    return-void
.end method
