.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final CAPACITY:I = 0x5

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field private static final SIMPOS:I = 0x4

.field private static final STR_ADN:Ljava/lang/String; = "adn"

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_FDN:Ljava/lang/String; = "fdn"

.field protected static final STR_INDEX:Ljava/lang/String; = "index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_SDN:Ljava/lang/String; = "sdn"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    new-array v0, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const-string/jumbo v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "extra-numbers"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 80
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "capacity/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "extraNumbers"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 528
    const/4 v8, -0x1

    .line 536
    .local v8, addedIndex:I
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 538
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 540
    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 549
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 545
    :catch_0
    move-exception v1

    goto :goto_0

    .line 543
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteAllIccRecordsFromEf()I
    .locals 11

    .prologue
    .line 705
    const/4 v9, 0x0

    .line 711
    .local v9, result:I
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 713
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-nez v0, :cond_0

    move v10, v9

    .line 743
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v9           #result:I
    .local v10, result:I
    :goto_0
    return v10

    .line 715
    .end local v10           #result:I
    .restart local v0       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v9       #result:I
    :cond_0
    const/16 v1, 0x6f3a

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v7

    .line 717
    .local v7, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-interface {v0}, Lcom/android/internal/telephony/IIccPhoneBook;->deleteSimPhonebook()V

    .line 719
    if-nez v7, :cond_1

    move v10, v9

    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 721
    .end local v10           #result:I
    .restart local v9       #result:I
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 725
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 726
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 727
    .local v6, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEfId()I

    move-result v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 730
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 739
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v6           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v7           #adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catch_0
    move-exception v1

    :cond_3
    :goto_2
    move v10, v9

    .line 743
    .end local v9           #result:I
    .restart local v10       #result:I
    goto :goto_0

    .line 737
    .end local v10           #result:I
    .restart local v9       #result:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private deleteIccRecordFromEf(IILjava/lang/String;)Z
    .locals 11
    .parameter "efType"
    .parameter "recIndex"
    .parameter "pin2"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 649
    const/4 v8, -0x1

    .line 650
    .local v8, deletedIndex:I
    new-array v6, v9, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v6, v10

    .line 651
    .local v6, newEmails:[Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v5, v10

    .line 653
    .local v5, newExtraNumbers:[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 655
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 656
    const-string v3, ""

    const-string v4, ""

    move v1, p1

    move v2, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 665
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v8, v1, :cond_1

    move v1, v9

    :goto_1
    return v1

    :cond_1
    move v1, v10

    goto :goto_1

    .line 661
    :catch_0
    move-exception v1

    goto :goto_0

    .line 659
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 618
    const/4 v7, 0x0

    .line 621
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 623
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 624
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 633
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 629
    :catch_0
    move-exception v1

    goto :goto_0

    .line 627
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getEfType(Landroid/net/Uri;)I
    .locals 6
    .parameter "url"

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, efType:I
    const-string v0, "content://icc/capacity/"

    .line 127
    .local v0, capacity:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, efTypeStr:Ljava/lang/String;
    const-string v3, "content://icc/capacity/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "content://icc/capacity/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_0
    const-string v3, "adn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    const/16 v1, 0x6f3a

    .line 142
    :goto_0
    return v1

    .line 134
    :cond_1
    const-string v3, "fdn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    const/16 v1, 0x6f3b

    goto :goto_0

    .line 136
    :cond_2
    const-string/jumbo v3, "sdn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    const/16 v1, 0x6f49

    goto :goto_0

    .line 139
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL in getEfType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final getStringAsStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 393
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getURL_MATCHER()Landroid/content/UriMatcher;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 403
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 404
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 412
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 414
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 415
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 417
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 418
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    add-int/lit8 v6, v3, 0x1

    invoke-direct {p0, v5, v2, v6}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 423
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_2
    return-object v2

    .line 408
    :catch_0
    move-exception v5

    goto :goto_0

    .line 406
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadIccCapacity(I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efid"

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 471
    .local v3, iccPBCapacityList:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/IccPBCapacityInfo;>;"
    :try_start_0
    const-string/jumbo v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 473
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 474
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getIccPBCapacity(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 482
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 483
    .local v4, size:I
    :goto_1
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 485
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 486
    add-int/lit8 v6, v1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IccPBCapacityInfo;

    invoke-direct {p0, v6, v5, v0}, Lcom/android/internal/telephony/IccProvider;->loadIccPBCapacityRecord(ILcom/android/internal/telephony/IccPBCapacityInfo;Landroid/database/MatrixCursor;)V

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 482
    .end local v0           #cursor:Landroid/database/MatrixCursor;
    .end local v1           #i:I
    .end local v4           #size:I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    .line 488
    .restart local v0       #cursor:Landroid/database/MatrixCursor;
    .restart local v1       #i:I
    .restart local v4       #size:I
    :cond_2
    return-object v0

    .line 478
    .end local v0           #cursor:Landroid/database/MatrixCursor;
    .end local v1           #i:I
    .end local v4           #size:I
    :catch_0
    move-exception v5

    goto :goto_0

    .line 476
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadIccPBCapacityRecord(ILcom/android/internal/telephony/IccPBCapacityInfo;Landroid/database/MatrixCursor;)V
    .locals 4
    .parameter "recIndex"
    .parameter "iccPBCapacity"
    .parameter "cursor"

    .prologue
    .line 430
    if-nez p2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 432
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    array-length v2, v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 433
    .local v0, record:[Ljava/lang/Object;
    const/4 v1, 0x1

    .line 434
    .local v1, tag:I
    :goto_1
    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 435
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/IccPBCapacityInfo;->getIccPBCapacityInfo(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    :cond_1
    add-int/lit8 v2, v1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 438
    invoke-virtual {p3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 11
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 675
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 676
    const/4 v9, 0x5

    new-array v2, v9, [Ljava/lang/Object;

    .line 677
    .local v2, contact:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 681
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    aput-object v0, v2, v9

    .line 682
    const/4 v9, 0x1

    aput-object v8, v2, v9

    .line 684
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v5

    .line 685
    .local v5, emails:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v4, emailString:Ljava/lang/StringBuilder;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 689
    .local v3, email:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 692
    .end local v3           #email:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 694
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #emailString:Ljava/lang/StringBuilder;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    const/4 v9, 0x3

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAllAnrAsOneString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 695
    const/4 v9, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v9

    .line 696
    invoke-virtual {p2, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 698
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v2           #contact:[Ljava/lang/Object;
    .end local v5           #emails:[Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private loadSIMPosFromEf(I)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "pos"

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string/jumbo v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 496
    .local v2, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v2, :cond_0

    .line 497
    const/16 v3, 0x6f3a

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 505
    .end local v2           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 506
    .local v1, cursor:Landroid/database/MatrixCursor;
    if-nez v0, :cond_1

    .line 508
    const-string v3, "IccProvider"

    const-string v4, "Cannot load ADN records"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_1
    return-object v1

    .line 512
    :cond_1
    if-lez p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le p1, v3, :cond_3

    .line 514
    :cond_2
    const-string v3, "IccProvider"

    const-string v4, "ADN record out of bounds"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 518
    :cond_3
    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {p0, v3, v1, p1}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    goto :goto_1

    .line 501
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 499
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 701
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 222
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 223
    .local v0, len:I
    move-object v1, p1

    .line 225
    .local v1, retVal:Ljava/lang/String;
	const/4 v2, 0x1

	if-gt v0, v2, :cond_ff

	return-object v1

	:cond_ff
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 226
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "recIndex"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newExtraNumbers"
    .parameter "newEmails"
    .parameter "pin2"

    .prologue
    .line 595
    const/4 v8, -0x1

    .line 598
    .local v8, updatedIndex:I
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 600
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 601
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexEx(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 610
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v8, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 606
    :catch_0
    move-exception v1

    goto :goto_0

    .line 604
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 558
    const/4 v7, 0x0

    .line 561
    .local v7, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 563
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 564
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 573
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 569
    :catch_0
    move-exception v1

    goto :goto_0

    .line 567
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 238
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 239
    .local v10, match:I
    packed-switch v10, :pswitch_data_0

    .line 249
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot insert into URL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 254
    .local v3, efType:I
    :goto_0
    const/4 v14, -0x1

    .line 255
    .local v14, recIndex:I
    const/4 v4, 0x0

    .line 256
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 257
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 258
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 260
    .local v7, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, tokens:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v11, v0

    .line 263
    .local v11, n:I
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_6

    .line 264
    aget-object v13, v16, v11

    .line 267
    .local v13, param:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, pair:[Ljava/lang/String;
    array-length v2, v12

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_1

    .line 270
    const-string v2, "IccProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v11           #n:I
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v14           #recIndex:I
    .end local v16           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 246
    .restart local v3       #efType:I
    goto :goto_0

    .line 274
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v11       #n:I
    .restart local v12       #pair:[Ljava/lang/String;
    .restart local v13       #param:Ljava/lang/String;
    .restart local v14       #recIndex:I
    .restart local v16       #tokens:[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 277
    .local v17, val:Ljava/lang/String;
    const-string v2, "index"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    goto :goto_1

    .line 280
    :catch_0
    move-exception v8

    .line 282
    .local v8, ex:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    .line 319
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v17           #val:Ljava/lang/String;
    :goto_2
    return v2

    .line 284
    .restart local v9       #key:Ljava/lang/String;
    .restart local v12       #pair:[Ljava/lang/String;
    .restart local v13       #param:Ljava/lang/String;
    .restart local v17       #val:Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "tag"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 286
    :cond_3
    const-string/jumbo v2, "number"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 288
    :cond_4
    const-string v2, "emails"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 290
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 291
    :cond_5
    const-string/jumbo v2, "pin2"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 296
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #pair:[Ljava/lang/String;
    .end local v13           #param:Ljava/lang/String;
    .end local v17           #val:Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    if-ne v14, v2, :cond_8

    .line 297
    const/4 v2, 0x1

    if-ne v10, v2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/IccProvider;->deleteAllIccRecordsFromEf()I

    move-result v2

    goto :goto_2

    .line 301
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 304
    :cond_8
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 305
    const/4 v2, 0x0

    goto :goto_2

    .line 308
    :cond_9
    const/4 v15, 0x0

    .line 309
    .local v15, success:Z
    const/4 v2, -0x1

    if-ne v14, v2, :cond_a

    move-object/from16 v2, p0

    .line 310
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 315
    :goto_3
    if-nez v15, :cond_b

    .line 316
    const/4 v2, 0x0

    goto :goto_2

    .line 312
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(IILjava/lang/String;)Z

    move-result v15

    goto :goto_3

    .line 319
    :cond_b
    const/4 v2, 0x1

    goto :goto_2

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v10, 0x0

    .line 162
    const/4 v6, 0x0

    .line 166
    .local v6, pin2:Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 167
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot insert into URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :pswitch_0
    const/16 v1, 0x6f3a

    .line 182
    .local v1, efType:I
    :goto_0
    const-string/jumbo v0, "tag"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, tag:Ljava/lang/String;
    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, number:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    :goto_1
    return-object v10

    .line 173
    .end local v1           #efType:I
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x6f3b

    .line 174
    .restart local v1       #efType:I
    const-string/jumbo v0, "pin2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 175
    goto :goto_0

    .line 188
    .restart local v2       #tag:Ljava/lang/String;
    .restart local v3       #number:Ljava/lang/String;
    :cond_1
    const-string v0, "extra-numbers"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getStringAsStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, extraNumbers:[Ljava/lang/String;
    const-string v0, "emails"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccProvider;->getStringAsStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, emails:[Ljava/lang/String;
    move-object v0, p0

    .line 192
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 193
    .local v9, recIndex:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "content://icc/"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v7, buf:Ljava/lang/StringBuilder;
    packed-switch v8, :pswitch_data_1

    .line 208
    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 218
    .local v10, resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 200
    .end local v10           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v0, "adn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 204
    :pswitch_3
    const-string v0, "fdn/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 96
    sget-object v3, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 98
    :pswitch_0
    const-string v0, "content://icc/adn/"

    .line 100
    .local v0, SIMRecord:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, index:I
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->loadSIMPosFromEf(I)Landroid/database/MatrixCursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    .end local v0           #SIMRecord:Ljava/lang/String;
    .end local v1           #index:I
    :goto_0
    return-object v3

    .line 102
    .restart local v0       #SIMRecord:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 104
    .local v2, nfe:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0

    .line 108
    .end local v0           #SIMRecord:Ljava/lang/String;
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :pswitch_1
    const/16 v3, 0x6f3a

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v3

    goto :goto_0

    .line 111
    :pswitch_2
    const/16 v3, 0x6f3b

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v3

    goto :goto_0

    .line 114
    :pswitch_3
    const/16 v3, 0x6f49

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v3

    goto :goto_0

    .line 117
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccProvider;->getEfType(Landroid/net/Uri;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccProvider;->loadIccCapacity(I)Landroid/database/MatrixCursor;

    move-result-object v3

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 24
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 325
    const/4 v8, 0x0

    .line 326
    .local v8, pin2:Ljava/lang/String;
    const/4 v11, -0x1

    .line 330
    .local v11, recIndex:I
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v20

    .line 331
    .local v20, match:I
    packed-switch v20, :pswitch_data_0

    .line 342
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot insert into URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 346
    .local v3, efType:I
    :goto_0
    if-eqz p3, :cond_0

    .line 347
    const-string v2, "="

    const/4 v9, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v21

    .line 348
    .local v21, pair:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v9, 0x2

    if-ne v2, v9, :cond_0

    .line 349
    const/4 v2, 0x0

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 350
    .local v19, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v21, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 351
    .local v23, val:Ljava/lang/String;
    const-string v2, "index"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 362
    .end local v19           #key:Ljava/lang/String;
    .end local v21           #pair:[Ljava/lang/String;
    .end local v23           #val:Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, number:Ljava/lang/String;
    const/16 v17, 0x0

    .line 365
    .local v17, emails:[Ljava/lang/String;
    const-string/jumbo v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, newTag:Ljava/lang/String;
    const-string/jumbo v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, newNumber:Ljava/lang/String;
    const-string/jumbo v2, "newExtraNumbers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->getStringAsStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 370
    .local v14, newExtraNumbers:[Ljava/lang/String;
    const-string/jumbo v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/IccProvider;->getStringAsStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, newEmails:[Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 374
    const/4 v2, 0x0

    .line 389
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #newTag:Ljava/lang/String;
    .end local v7           #newNumber:Ljava/lang/String;
    .end local v14           #newExtraNumbers:[Ljava/lang/String;
    .end local v15           #newEmails:[Ljava/lang/String;
    .end local v17           #emails:[Ljava/lang/String;
    :goto_1
    return v2

    .line 337
    .end local v3           #efType:I
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 338
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 339
    goto/16 :goto_0

    .line 354
    .restart local v19       #key:Ljava/lang/String;
    .restart local v21       #pair:[Ljava/lang/String;
    .restart local v23       #val:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 356
    .local v18, ex:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_1

    .line 377
    .end local v18           #ex:Ljava/lang/NumberFormatException;
    .end local v19           #key:Ljava/lang/String;
    .end local v21           #pair:[Ljava/lang/String;
    .end local v23           #val:Ljava/lang/String;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #newTag:Ljava/lang/String;
    .restart local v7       #newNumber:Ljava/lang/String;
    .restart local v14       #newExtraNumbers:[Ljava/lang/String;
    .restart local v15       #newEmails:[Ljava/lang/String;
    .restart local v17       #emails:[Ljava/lang/String;
    :cond_1
    const/16 v22, 0x0

    .line 378
    .local v22, success:Z
    const/4 v2, -0x1

    if-ne v11, v2, :cond_2

    move-object/from16 v2, p0

    .line 379
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 385
    :goto_2
    if-nez v22, :cond_3

    .line 386
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v9, p0

    move v10, v3

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v16, v8

    .line 381
    invoke-direct/range {v9 .. v16}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    goto :goto_2

    .line 389
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
