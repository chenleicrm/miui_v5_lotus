.class Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;
.super Ljava/lang/Thread;
.source "ThemeRuntimeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/ThemeRuntimeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method private constructor <init>(Lmiui/content/res/ThemeRuntimeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/ThemeRuntimeManager;Lmiui/content/res/ThemeRuntimeManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;-><init>(Lmiui/content/res/ThemeRuntimeManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 122
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #calls: Lmiui/content/res/ThemeRuntimeManager;->bindService()V
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$300(Lmiui/content/res/ThemeRuntimeManager;)V

    .line 123
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$400(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v4

    monitor-enter v4

    .line 125
    :cond_0
    :try_start_0
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/List;
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, pendingJob:Ljava/lang/String;
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #calls: Lmiui/content/res/ThemeRuntimeManager;->saveIconInner(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lmiui/content/res/ThemeRuntimeManager;->access$600(Lmiui/content/res/ThemeRuntimeManager;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pendingJob:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 128
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/List;
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mJobLocker:[B
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$400(Lmiui/content/res/ThemeRuntimeManager;)[B

    move-result-object v3

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :goto_1
    :try_start_3
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #getter for: Lmiui/content/res/ThemeRuntimeManager;->mPendingJobs:Ljava/util/List;
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$500(Lmiui/content/res/ThemeRuntimeManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    #calls: Lmiui/content/res/ThemeRuntimeManager;->unbindService()V
    invoke-static {v3}, Lmiui/content/res/ThemeRuntimeManager;->access$700(Lmiui/content/res/ThemeRuntimeManager;)V

    .line 136
    iget-object v3, p0, Lmiui/content/res/ThemeRuntimeManager$ThemeServiceThread;->this$0:Lmiui/content/res/ThemeRuntimeManager;

    const/4 v5, 0x1

    #setter for: Lmiui/content/res/ThemeRuntimeManager;->mThreadFinished:Z
    invoke-static {v3, v5}, Lmiui/content/res/ThemeRuntimeManager;->access$802(Lmiui/content/res/ThemeRuntimeManager;Z)Z

    .line 140
    monitor-exit v4

    .line 141
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
