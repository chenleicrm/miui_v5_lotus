.class Lcom/android/server/pm/SteModemShutdownSync;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# instance fields
.field public isRadioOn:Z

.field public useFallback:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    return-void
.end method
