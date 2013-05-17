.class Lcom/android/server/pm/SteModemShutdown$1;
.super Ljava/lang/Object;
.source "SteModemShutdown.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SteModemShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/SteModemShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/pm/SteModemShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 91
    const-string v0, "STE Modem Shutdown"

    const-string v1, "Connected to STErilOemService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #setter for: Lcom/android/server/pm/SteModemShutdown;->mServiceMessenger:Landroid/os/Messenger;
    invoke-static {v0, v2}, Lcom/android/server/pm/SteModemShutdown;->access$102(Lcom/android/server/pm/SteModemShutdown;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$200(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$200(Lcom/android/server/pm/SteModemShutdown;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 104
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/SteModemShutdown$1;->this$0:Lcom/android/server/pm/SteModemShutdown;

    #getter for: Lcom/android/server/pm/SteModemShutdown;->mShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    invoke-static {v0}, Lcom/android/server/pm/SteModemShutdown;->access$000(Lcom/android/server/pm/SteModemShutdown;)Lcom/android/server/pm/SteModemShutdownSync;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 110
    :cond_0
    monitor-exit v1

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
