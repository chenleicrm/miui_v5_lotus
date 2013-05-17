.class Landroid/net/http/AndroidHttpClient$Injector;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 86
    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->callGetDefaultUserAgent()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
