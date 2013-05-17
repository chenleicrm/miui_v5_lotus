.class public Lmiui/telephony/phonenumber/ChineseTelocation;
.super Ljava/lang/Object;
.source "ChineseTelocation.java"


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "/etc/telocation.idf"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field private static final UNIQUE_ID_NONE:I

.field private static sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;


# instance fields
.field private mAllowTelocation:Z

.field private mContext:Landroid/content/Context;

.field private mCustomLocationObserver:Landroid/database/ContentObserver;

.field private mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

.field private mGroupCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalCustomLocations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocation;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocation;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocation;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    :try_start_0
    new-instance v1, Lmiui/util/DensityIndexFile$Reader;

    const-string v2, "/etc/telocation.idf"

    invoke-direct {v1, v2}, Lmiui/util/DensityIndexFile$Reader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v1, "ChineseTelocation"

    const-string v2, "Can\'t read /etc/telocation.idf, NO mobile telocation supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/phonenumber/ChineseTelocation;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    return-void
.end method

.method private findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;
    .locals 8
    .parameter "id"
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .local v4, location:Ljava/lang/String;
    if-lez p1, :cond_0

    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #location:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #location:Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_4

    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p4, v6, :cond_1

    const/4 v5, 0x1

    .local v5, matched:Z
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, len:I
    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-eq v6, v7, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p3, v0

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    const/4 v5, 0x0

    :cond_2
    if-eqz v5, :cond_1

    iget-object v6, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #location:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #location:Ljava/lang/String;
    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len:I
    .end local v5           #matched:Z
    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    return-object v4
.end method

.method public static getInstance()Lmiui/telephony/phonenumber/ChineseTelocation;
    .locals 1

    .prologue
    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocation;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocation;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    iput-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    :cond_0
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateTelocationSetting()V

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocation$1;

    invoke-direct {v1, p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation$1;-><init>(Lmiui/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Lmiui/telephony/phonenumber/ChineseTelocation$2;

    invoke-direct {v1, p0, v0}, Lmiui/telephony/phonenumber/ChineseTelocation$2;-><init>(Lmiui/telephony/phonenumber/ChineseTelocation;Landroid/os/Handler;)V

    iput-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateCustomLocation()V
    .locals 12

    .prologue
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-eqz v0, :cond_5

    const/4 v6, 0x0

    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .local v11, type:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, number:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, location:Ljava/lang/String;
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v10, 0x0

    .local v10, start:I
    const-string v0, "+86"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v10, 0x3

    :cond_1
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v10

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v10, v0, v1}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v7

    .local v7, id:I
    if-eqz v7, :cond_0

    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mNormalCustomLocations:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v7           #id:I
    .end local v8           #location:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #start:I
    .end local v11           #type:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .restart local v8       #location:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #start:I
    .restart local v11       #type:I
    :cond_3
    :try_start_1
    const-string v0, "0086"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x4

    goto :goto_1

    .end local v10           #start:I
    :pswitch_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mGroupCustomLocations:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v8           #location:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v11           #type:I
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTelocationSetting()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_telocation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocation;->updateCustomLocation()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v0}, Lmiui/util/DensityIndexFile$Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mCustomLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAreaCode(Landroid/content/Context;Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0, p2, p3, p4, v3}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .local v0, id:I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getExternalLocation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "countryCode"
    .parameter "number"
    .parameter "locale"

    .prologue
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getInstance()Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    move-result-object v0

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/android/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocation(Landroid/content/Context;Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cs"
    .parameter "start"
    .parameter "length"
    .parameter "withAreaCode"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lmiui/telephony/phonenumber/ChineseTelocation;->initObserver(Landroid/content/Context;)V

    :cond_0
    iget-boolean v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mAllowTelocation:Z

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v0, -0x1

    .local v0, id:I
    if-eqz p5, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, p2, p3, p4, v2}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    :cond_3
    invoke-direct {p0, v0, p2, p3, p4}, Lmiui/telephony/phonenumber/ChineseTelocation;->findCustomLocation(ILjava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .local v1, location:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    iget-object v2, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v2, v3, v0, v3}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #location:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #location:Ljava/lang/String;
    goto :goto_0
.end method

.method getUniqId(Ljava/lang/CharSequence;IIZ)I
    .locals 7
    .parameter "cs"
    .parameter "start"
    .parameter "length"
    .parameter "enableMobile"

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    const/16 v6, 0x30

    if-lez p3, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    :cond_0
    const/4 v3, 0x1

    if-gt p3, v3, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x2

    if-le p3, v2, :cond_4

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .local v0, index:I
    goto :goto_0

    .end local v0           #index:I
    :pswitch_0
    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    const/4 v3, 0x6

    if-le p3, v3, :cond_4

    const v3, 0xf4240

    add-int/lit8 v4, p2, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    const v5, 0x186a0

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x6

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    add-int v0, v3, v4

    .restart local v0       #index:I
    const v3, 0x150ead

    if-ne v0, v3, :cond_1

    if-le p3, v2, :cond_1

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, p2, 0x9

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_1

    move v0, v1

    goto/16 :goto_0

    .end local v0           #index:I
    :pswitch_1
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/lit8 v0, v1, 0x14

    .restart local v0       #index:I
    goto/16 :goto_0

    .end local v0           #index:I
    :cond_4
    :pswitch_2
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "cs"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3, v3}, Lmiui/telephony/phonenumber/ChineseTelocation;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .local v0, id:I
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocation;->mDensityIndexFileReader:Lmiui/util/DensityIndexFile$Reader;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method
