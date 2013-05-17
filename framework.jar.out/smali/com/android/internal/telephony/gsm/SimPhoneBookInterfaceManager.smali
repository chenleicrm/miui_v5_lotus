.class public Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "SimPhoneBookInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field private final mAdnLikeCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 48
    new-instance v0, Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPBCapacityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mAdnLikeCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo;

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 57
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 61
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    const-string v1, "GSM"

    const-string v2, "SimPhoneBookInterfaceManager finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 6
    .parameter "efid"

    .prologue
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdnRecordsSize: efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->checkThread()V

    .line 72
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    .line 75
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 76
    .local v2, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 79
    .local v0, fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 83
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->recordSize:[I

    return-object v3

    .line 83
    .end local v0           #fh:Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v1           #response:Landroid/os/Message;
    .end local v2           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getIccPBCapacity(I)Ljava/util/List;
    .locals 7
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/IccPBCapacityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const-string v3, "Enter getUsimPBCapacity"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x6f3a

    if-ne p1, v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getUsimPBCapacity()Ljava/util/List;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->adnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    .local v1, adnLikeRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v2

    .line 107
    .local v2, size:[I
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, adnLikeCapacityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IccPBCapacityInfo;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mAdnLikeCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmptyAdnRecordCount(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/IccPBCapacityInfo;->setAdnLikeCapacities(III)V

    .line 110
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->mAdnLikeCapacity:Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 116
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 120
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimPbInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
