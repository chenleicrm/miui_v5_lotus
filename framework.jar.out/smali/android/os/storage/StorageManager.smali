.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$1;,
        Landroid/os/storage/StorageManager$StorageType;,
        Landroid/os/storage/StorageManager$ListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageEvent;,
        Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$MountServiceBinderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageManager"


# instance fields
.field private mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field mTgtLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .parameter "tgtLooper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 307
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 308
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_0

    .line 309
    const-string v0, "StorageManager"

    const-string v1, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 312
    :cond_0
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    .line 313
    new-instance v0, Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 314
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method private getNextNonce()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private getVolumeType(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageManager$StorageType;
    .locals 3
    .parameter "volume"

    .prologue
    .line 609
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 610
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getDescriptionId()I

    move-result v0

    .line 612
    .local v0, descriptionId:I
    const v2, 0x104053f

    if-ne v0, v2, :cond_0

    .line 613
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    .line 622
    :goto_0
    return-object v2

    .line 614
    :cond_0
    const v2, 0x1040540

    if-ne v0, v2, :cond_1

    .line 615
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    goto :goto_0

    .line 616
    :cond_1
    const v2, 0x1040541

    if-ne v0, v2, :cond_2

    .line 617
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_USB:Landroid/os/storage/StorageManager$StorageType;

    goto :goto_0

    .line 622
    :cond_2
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    goto :goto_0
.end method


# virtual methods
.method public disableUsbMassStorage()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to disable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableUsbMassStorage()V
    .locals 3

    .prologue
    .line 366
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to enable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 536
    :goto_0
    return-object v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to find mounted path for OBB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 558
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v5, :cond_1

    new-array v4, v6, [Landroid/os/storage/StorageVolume;

    .line 570
    :cond_0
    :goto_0
    return-object v4

    .line 560
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v3

    .line 561
    .local v3, list:[Landroid/os/Parcelable;
    if-nez v3, :cond_2

    const/4 v5, 0x0

    new-array v4, v5, [Landroid/os/storage/StorageVolume;

    goto :goto_0

    .line 562
    :cond_2
    array-length v2, v3

    .line 563
    .local v2, length:I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 564
    .local v4, result:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 565
    aget-object v5, v3, v1

    check-cast v5, Landroid/os/storage/StorageVolume;

    aput-object v5, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 568
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #list:[Landroid/os/Parcelable;
    .end local v4           #result:[Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "StorageManager"

    const-string v6, "Failed to get volume list"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 660
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v3}, Landroid/os/storage/StorageManager;->getVolumeType(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/storage/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 659
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "No such storage volume"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 580
    .local v3, volumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 586
    :cond_0
    return-object v2

    .line 581
    :cond_1
    array-length v0, v3

    .line 582
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 583
    .local v2, paths:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mountPoint"

    .prologue
    .line 544
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "removed"

    .line 549
    :goto_0
    return-object v1

    .line 546
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    .locals 6
    .parameter "mountPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 637
    .local v3, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    invoke-direct {p0, v3}, Landroid/os/storage/StorageManager;->getVolumeType(Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v4

    return-object v4

    .line 636
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 642
    .end local v3           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "No such storage volume"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "filename cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 513
    :goto_0
    return v1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to check if OBB is mounted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 3

    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsbMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 408
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, rex:Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "filename"
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_0
    if-nez p3, :cond_1

    .line 442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 447
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v2, 0x1

    .line 453
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    new-instance v2, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .locals 4
    .parameter "filename"
    .parameter "force"
    .parameter "listener"

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "filename cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    :cond_0
    if-nez p3, :cond_1

    .line 482
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 487
    .local v1, nonce:I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    const/4 v2, 0x1

    .line 493
    .end local v1           #nonce:I
    :goto_0
    return v2

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 357
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v4

    .line 348
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 349
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 350
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ListenerDelegate;

    .line 351
    .local v1, l:Landroid/os/storage/StorageManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ListenerDelegate;->getListener()Landroid/os/storage/StorageEventListener;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 352
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    .end local v1           #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 349
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/os/storage/StorageManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
