.class Lcom/android/internal/telephony/uicc/IccCustProvider$1;
.super Landroid/os/Handler;
.source "IccCustProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCustProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private handlerJobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCustProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/IccCustProvider;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/uicc/IccCustProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->handlerJobs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    :try_start_0
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .local v6, p:Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .local v2, currentId:I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;

    .local v7, simValue:Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->handlerJobs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->this$0:Lcom/android/internal/telephony/uicc/IccCustProvider;

    #getter for: Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccCustProvider;->access$000(Lcom/android/internal/telephony/uicc/IccCustProvider;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getResultMessage()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v2, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .local v5, outMessage:Landroid/os/Message;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    .local v4, iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3F00"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getSimFolder()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getSimFile()I

    move-result v9

    invoke-virtual {v4, v8, v9, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .end local v2           #currentId:I
    .end local v4           #iccFh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v5           #outMessage:Landroid/os/Message;
    .end local v6           #p:Lcom/android/internal/telephony/Phone;
    .end local v7           #simValue:Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
    :catch_0
    move-exception v8

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->handlerJobs:Ljava/util/HashMap;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;

    .restart local v7       #simValue:Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
    if-eqz v7, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v3, v0

    .local v3, data:[B
    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_1

    array-length v8, v3

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getSimByte()I

    move-result v9

    if-lt v8, v9, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getSimByte()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v3, v8

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getSimBit()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    shr-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->setFlagResult(I)V

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #data:[B
    .end local v7           #simValue:Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;->handlerJobs:Ljava/util/HashMap;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;

    .restart local v7       #simValue:Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
    if-eqz v7, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v3, v0

    .restart local v3       #data:[B
    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->setFileResult([B)V

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
