.class abstract Lmiui/net/CloudManager$CmTask;
.super Ljava/util/concurrent/FutureTask;
.source "CloudManager.java"

# interfaces
.implements Lmiui/net/CloudManager$CloudManagerFuture;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CmTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/net/CloudManager$CloudManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private mResponse:Lmiui/net/ICloudManagerResponse;

.field private mService:Lmiui/net/ICloudManagerService;

.field final synthetic this$0:Lmiui/net/CloudManager;


# direct methods
.method protected constructor <init>(Lmiui/net/CloudManager;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/net/CloudManager$CmTask;->this$0:Lmiui/net/CloudManager;

    new-instance v0, Lmiui/net/CloudManager$CmTask$1;

    invoke-direct {v0, p1}, Lmiui/net/CloudManager$CmTask$1;-><init>(Lmiui/net/CloudManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$CmTask$ICloudManagerResponseImpl;-><init>(Lmiui/net/CloudManager$CmTask;)V

    iput-object v0, p0, Lmiui/net/CloudManager$CmTask;->mResponse:Lmiui/net/ICloudManagerResponse;

    return-void
.end method

.method static synthetic access$100(Lmiui/net/CloudManager$CmTask;I)Ljava/lang/Exception;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/net/CloudManager$CmTask;->convertErrorCodeToException(I)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private convertErrorCodeToException(I)Ljava/lang/Exception;
    .locals 3
    .parameter "code"

    .prologue
    packed-switch p1, :pswitch_data_0

    new-instance v0, Lmiui/net/exception/CloudServiceFailureException;

    const-string v1, "Unknown activation failure"

    invoke-direct {v0, v1}, Lmiui/net/exception/CloudServiceFailureException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lmiui/net/exception/CloudServiceFailureException;

    const-string v1, "Send sms failure or activate timed out"

    invoke-direct {v0, v1}, Lmiui/net/exception/CloudServiceFailureException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lmiui/net/exception/NoActivateAccountException;

    const-string v1, "no active Xiaomi account"

    invoke-direct {v0, v1}, Lmiui/net/exception/NoActivateAccountException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-direct {v0}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lmiui/net/exception/InvalidResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid response, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, looper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/net/CloudManager$CmTask;->this$0:Lmiui/net/CloudManager;

    #getter for: Lmiui/net/CloudManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/net/CloudManager;->access$000(Lmiui/net/CloudManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .local v0, exception:Ljava/lang/IllegalStateException;
    const-string v2, "CloudManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0

    .end local v0           #exception:Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/CloudServiceFailureException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/NoActivateAccountException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lmiui/net/CloudManager$CmTask;->ensureNotOnMainThread()V

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {p0, v4}, Lmiui/net/CloudManager$CmTask;->cancel(Z)Z

    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2}, Lmiui/net/CloudManager$CmTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-virtual {p0, v4}, Lmiui/net/CloudManager$CmTask;->cancel(Z)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/util/concurrent/CancellationException;
    :try_start_2
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    invoke-direct {v2}, Lmiui/net/exception/OperationCancelledException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/net/CloudManager$CmTask;->cancel(Z)Z

    throw v2

    :catch_1
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/net/CloudManager$CmTask;->cancel(Z)Z

    :goto_1
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    invoke-direct {v2}, Lmiui/net/exception/OperationCancelledException;-><init>()V

    throw v2

    :catch_2
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/net/CloudManager$CmTask;->cancel(Z)Z

    goto :goto_1

    :catch_3
    move-exception v1

    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Lmiui/net/exception/CloudServiceFailureException;

    if-eqz v2, :cond_3

    check-cast v0, Lmiui/net/exception/CloudServiceFailureException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v0, Lmiui/net/exception/NoActivateAccountException;

    if-eqz v2, :cond_4

    check-cast v0, Lmiui/net/exception/NoActivateAccountException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Lorg/apache/http/auth/InvalidCredentialsException;

    if-eqz v2, :cond_6

    new-instance v2, Lmiui/net/exception/CloudServiceFailureException;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lmiui/net/exception/CloudServiceFailureException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    :cond_6
    instance-of v2, v0, Lmiui/net/exception/InvalidResponseException;

    if-eqz v2, :cond_7

    new-instance v2, Lmiui/net/exception/CloudServiceFailureException;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lmiui/net/exception/CloudServiceFailureException;-><init>(Ljava/lang/Throwable;I)V

    throw v2

    :cond_7
    new-instance v2, Lmiui/net/exception/CloudServiceFailureException;

    invoke-direct {v2, v0}, Lmiui/net/exception/CloudServiceFailureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method protected bind()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->bindToCloudService()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lmiui/net/exception/CloudServiceFailureException;

    invoke-direct {v0}, Lmiui/net/exception/CloudServiceFailureException;-><init>()V

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager$CmTask;->setException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected bindToCloudService()Z
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.XIAOMI_ACTIVATE_PHONE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lmiui/net/CloudManager$CmTask;->this$0:Lmiui/net/CloudManager;

    #getter for: Lmiui/net/CloudManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/net/CloudManager;->access$000(Lmiui/net/CloudManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lmiui/net/CloudManager$CmTask;->this$0:Lmiui/net/CloudManager;

    #getter for: Lmiui/net/CloudManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/net/CloudManager;->access$000(Lmiui/net/CloudManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected getResponse()Lmiui/net/ICloudManagerResponse;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/net/CloudManager$CmTask;->mResponse:Lmiui/net/ICloudManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/CloudServiceFailureException;,
            Lmiui/net/exception/NoActivateAccountException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/net/CloudManager$CmTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/CloudServiceFailureException;,
            Lmiui/net/exception/NoActivateAccountException;
        }
    .end annotation

    .prologue
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/net/CloudManager$CmTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/CloudServiceFailureException;,
            Lmiui/net/exception/NoActivateAccountException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/CloudServiceFailureException;,
            Lmiui/net/exception/NoActivateAccountException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lmiui/net/CloudManager$CmTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lmiui/net/ICloudManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/net/CloudManager$CmTask;->mService:Lmiui/net/ICloudManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v1, "CloudManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lmiui/net/ICloudManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerService;

    move-result-object v1

    iput-object v1, p0, Lmiui/net/CloudManager$CmTask;->mService:Lmiui/net/ICloudManagerService;

    :try_start_0
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmiui/net/CloudManager$CmTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CloudManager"

    const-string v1, "cloud service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/net/exception/CloudServiceFailureException;

    const-string v1, "active service exits unexpectedly"

    invoke-direct {v0, v1}, Lmiui/net/exception/CloudServiceFailureException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/net/CloudManager$CmTask;->setException(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/CloudManager$CmTask;->mService:Lmiui/net/ICloudManagerService;

    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->unBind()V

    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/net/CloudManager$CmTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->unBind()V

    return-void
.end method

.method public final start()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmiui/net/CloudManager$CmTask;->bind()V

    return-object p0
.end method

.method protected unBind()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/net/CloudManager$CmTask;->this$0:Lmiui/net/CloudManager;

    #getter for: Lmiui/net/CloudManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/net/CloudManager;->access$000(Lmiui/net/CloudManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v0, "CloudManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
