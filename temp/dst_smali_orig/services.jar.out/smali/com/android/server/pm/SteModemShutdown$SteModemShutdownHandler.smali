.class Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;
.super Landroid/os/Handler;
.source "SteModemShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SteModemShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SteModemShutdownHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/SteModemShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/SteModemShutdown;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/SteModemShutdown;Lcom/android/server/pm/SteModemShutdown$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;-><init>(Lcom/android/server/pm/SteModemShutdown;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$700(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$700(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/SteModemShutdown$SteModemShutdownHandler;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/server/pm/SteModemShutdown;->access$800(Lcom/android/server/pm/SteModemShutdown;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
