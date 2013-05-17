.class Lcom/android/server/pm/SteModemShutdown;
.super Ljava/lang/Object;
.source "SteModemShutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mMessenger:Landroid/os/Messenger;

.field private final mReboot:Z

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "reboot"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "STE Modem Shutdown"

    iput-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/pm/SteModemShutdown$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/SteModemShutdown$1;-><init>(Lcom/android/server/pm/SteModemShutdown;)V

    iput-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/pm/SteModemShutdown$2;

    const-string v1, "STE Modem Shutdown"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SteModemShutdown$2;-><init>(Lcom/android/server/pm/SteModemShutdown;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mHandlerThread:Landroid/os/HandlerThread;

    iput-boolean p2, p0, Lcom/android/server/pm/SteModemShutdown;->mReboot:Z

    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/pm/SteModemShutdown;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mHandler:Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/pm/SteModemShutdown;Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;)Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown;->mHandler:Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/pm/SteModemShutdown;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown;->mMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/SteModemShutdown;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/pm/SteModemShutdown;->mReboot:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private waitForServiceConnection()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-object v2, p0, Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public startModemShutdown(Lcom/android/server/pm/SteModemShutdownSync;)V
    .locals 5
    .parameter "steShutdownSync"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    iget-object v1, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.stericsson.ril.oem.service.STErilOemService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/SteModemShutdown;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/SteModemShutdown;->waitForServiceConnection()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "STE Modem Shutdown"

    const-string v2, "Could not connect to STE RIL OEM Service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
