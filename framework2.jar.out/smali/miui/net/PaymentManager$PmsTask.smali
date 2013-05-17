.class abstract Lmiui/net/PaymentManager$PmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$PaymentManagerFuture;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/net/PaymentManager$PaymentManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mResponse:Lmiui/net/IPaymentManagerResponse;

.field private mService:Lmiui/net/IPaymentManagerService;

.field final synthetic this$0:Lmiui/net/PaymentManager;


# direct methods
.method protected constructor <init>(Lmiui/net/PaymentManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, p1, v0, v0}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;Landroid/os/Handler;Lmiui/net/PaymentManager$PaymentManagerCallback;)V

    .line 456
    return-void
.end method

.method protected constructor <init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/net/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p4, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    .line 463
    new-instance v0, Lmiui/net/PaymentManager$PmsTask$1;

    invoke-direct {v0, p1}, Lmiui/net/PaymentManager$PmsTask$1;-><init>(Lmiui/net/PaymentManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 471
    iput-object p2, p0, Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 472
    iput-object p3, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 473
    iput-object p4, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    .line 474
    new-instance v0, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;

    invoke-direct {v0, p0}, Lmiui/net/PaymentManager$PmsTask$IPaymentManagerResponseImpl;-><init>(Lmiui/net/PaymentManager$PmsTask;)V

    iput-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mResponse:Lmiui/net/IPaymentManagerResponse;

    .line 475
    return-void
.end method

.method protected constructor <init>(Lmiui/net/PaymentManager;Landroid/os/Handler;Lmiui/net/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .parameter
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lmiui/net/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p3, callback:Lmiui/net/PaymentManager$PaymentManagerCallback;,"Lmiui/net/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/net/PaymentManager$PaymentManagerCallback;)V

    .line 460
    return-void
.end method

.method static synthetic access$1000(Lmiui/net/PaymentManager$PmsTask;)Lmiui/net/PaymentManager$PaymentManagerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 442
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lmiui/net/PaymentManager$PmsTask;Lmiui/net/PaymentManager$PaymentManagerCallback;)Lmiui/net/PaymentManager$PaymentManagerCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    iput-object p1, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    return-object p1
.end method

.method static synthetic access$1100(Lmiui/net/PaymentManager$PmsTask;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 442
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/net/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 442
    invoke-direct {p0, p1, p2, p3}, Lmiui/net/PaymentManager$PmsTask;->convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .parameter "code"
    .parameter "message"
    .parameter "bundle"

    .prologue
    .line 644
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 645
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 655
    :goto_0
    return-object v0

    .line 648
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 649
    new-instance v0, Lmiui/net/exception/AuthenticationFailureException;

    invoke-direct {v0, p2}, Lmiui/net/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    const-string p2, "Unknown payment failure"

    .line 655
    :cond_2
    new-instance v0, Lmiui/net/exception/PaymentServiceFailureException;

    invoke-direct {v0, p1, p2, p3}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    .line 659
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 660
    .local v1, looper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/net/PaymentManager;->access$800(Lmiui/net/PaymentManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, exception:Ljava/lang/IllegalStateException;
    const-string v2, "PaymentManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    throw v0

    .line 667
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
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 513
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    invoke-direct {p0}, Lmiui/net/PaymentManager$PmsTask;->ensureNotOnMainThread()V

    .line 517
    :cond_0
    if-nez p1, :cond_1

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 544
    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    :goto_0
    return-object v2

    .line 520
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2}, Lmiui/net/PaymentManager$PmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3

    .line 544
    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    goto :goto_0

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, e:Ljava/util/concurrent/CancellationException;
    :try_start_2
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "cancelled by user"

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    throw v2

    .line 524
    :catch_1
    move-exception v2

    .line 544
    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    .line 546
    :goto_1
    new-instance v2, Lmiui/net/exception/OperationCancelledException;

    const-string v3, "cancelled by exception"

    invoke-direct {v2, v3}, Lmiui/net/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :catch_2
    move-exception v2

    .line 544
    invoke-virtual {p0, v4}, Lmiui/net/PaymentManager$PmsTask;->cancel(Z)Z

    goto :goto_1

    .line 528
    :catch_3
    move-exception v1

    .line 529
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 530
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 531
    check-cast v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 532
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Lmiui/net/exception/PaymentServiceFailureException;

    if-eqz v2, :cond_3

    .line 533
    check-cast v0, Lmiui/net/exception/PaymentServiceFailureException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 534
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v0, Lmiui/net/exception/AuthenticationFailureException;

    if-eqz v2, :cond_4

    .line 535
    check-cast v0, Lmiui/net/exception/AuthenticationFailureException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 536
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_5

    .line 537
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 538
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_6

    .line 539
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 541
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method protected bind()V
    .locals 3

    .prologue
    .line 493
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->bindToPaymentService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lmiui/net/exception/PaymentServiceFailureException;

    const/4 v1, 0x1

    const-string v2, "bind to service failed"

    invoke-direct {v0, v1, v2}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 496
    :cond_0
    return-void
.end method

.method protected bindToPaymentService()Z
    .locals 3

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$800(Lmiui/net/PaymentManager;)Landroid/content/Context;

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

.method protected done()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->mCallback:Lmiui/net/PaymentManager$PaymentManagerCallback;

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/net/PaymentManager;->access$900(Lmiui/net/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    .line 578
    .local v0, handler:Landroid/os/Handler;
    :goto_0
    new-instance v1, Lmiui/net/PaymentManager$PmsTask$2;

    invoke-direct {v1, p0}, Lmiui/net/PaymentManager$PmsTask$2;-><init>(Lmiui/net/PaymentManager$PmsTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    iput-object v2, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 588
    iput-object v2, p0, Lmiui/net/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 589
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected getResponse()Lmiui/net/IPaymentManagerResponse;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mResponse:Lmiui/net/IPaymentManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, v0, v0}, Lmiui/net/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

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
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/net/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/OperationCancelledException;,
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->getResult()Landroid/os/Bundle;

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
            Lmiui/net/exception/AuthenticationFailureException;,
            Lmiui/net/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0, p1, p2, p3}, Lmiui/net/PaymentManager$PmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lmiui/net/IPaymentManagerService;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mService:Lmiui/net/IPaymentManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 594
    const-string v1, "PaymentManager"

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

    .line 596
    invoke-static {p2}, Lmiui/net/IPaymentManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IPaymentManagerService;

    move-result-object v1

    iput-object v1, p0, Lmiui/net/PaymentManager$PmsTask;->mService:Lmiui/net/IPaymentManagerService;

    .line 598
    :try_start_0
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->doWork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 606
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const-string v0, "PaymentManager"

    const-string v1, "payment service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v0, Lmiui/net/exception/PaymentServiceFailureException;

    const/4 v1, 0x1

    const-string v2, "active service exits unexpectedly"

    invoke-direct {v0, v1, v2}, Lmiui/net/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/net/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 610
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->mService:Lmiui/net/IPaymentManagerService;

    .line 611
    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 551
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->unBind()V

    .line 553
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 442
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/net/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 557
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 558
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->unBind()V

    .line 559
    return-void
.end method

.method public final start()Lmiui/net/PaymentManager$PaymentManagerFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0}, Lmiui/net/PaymentManager$PmsTask;->bind()V

    .line 489
    return-object p0
.end method

.method protected unBind()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lmiui/net/PaymentManager$PmsTask;->this$0:Lmiui/net/PaymentManager;

    #getter for: Lmiui/net/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/net/PaymentManager;->access$800(Lmiui/net/PaymentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 501
    const-string v0, "PaymentManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method
