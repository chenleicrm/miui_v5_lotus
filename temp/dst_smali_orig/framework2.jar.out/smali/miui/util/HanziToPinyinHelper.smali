.class public Lmiui/util/HanziToPinyinHelper;
.super Ljava/lang/Object;
.source "HanziToPinyinHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HanziToPinyinHelper"

.field public static final UNICODE_2_PINYIN_RESOURCE_NAME:Ljava/lang/String; = "etc/pinyinindex.idf"

.field private static sSingleton:Lmiui/util/HanziToPinyinHelper;


# instance fields
.field private mReader:Lmiui/util/DensityIndexFile$Reader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lmiui/util/HanziToPinyinHelper;->initResource()V

    return-void
.end method

.method public static declared-synchronized getIntance()Lmiui/util/HanziToPinyinHelper;
    .locals 2

    .prologue
    const-class v1, Lmiui/util/HanziToPinyinHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/util/HanziToPinyinHelper;->sSingleton:Lmiui/util/HanziToPinyinHelper;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/util/HanziToPinyinHelper;

    invoke-direct {v0}, Lmiui/util/HanziToPinyinHelper;-><init>()V

    sput-object v0, Lmiui/util/HanziToPinyinHelper;->sSingleton:Lmiui/util/HanziToPinyinHelper;

    :cond_0
    sget-object v0, Lmiui/util/HanziToPinyinHelper;->sSingleton:Lmiui/util/HanziToPinyinHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initResource()V
    .locals 3

    .prologue
    :try_start_0
    new-instance v1, Lmiui/util/DensityIndexFile$Reader;

    const-string v2, "etc/pinyinindex.idf"

    invoke-direct {v1, v2}, Lmiui/util/DensityIndexFile$Reader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmiui/util/HanziToPinyinHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HanziToPinyinHelper"

    const-string v2, "Init resource IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lmiui/util/HanziToPinyinHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lmiui/util/HanziToPinyinHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v1}, Lmiui/util/DensityIndexFile$Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    const-string v1, "HanziToPinyinHelper"

    const-string v2, "finalize IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPinyinString(C)[Ljava/lang/String;
    .locals 4
    .parameter "ch"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/util/HanziToPinyinHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    .local v1, pyString:Ljava/lang/String;
    add-int/lit16 v0, p1, -0x4e00

    .local v0, offset:I
    iget-object v2, p0, Lmiui/util/HanziToPinyinHelper;->mReader:Lmiui/util/DensityIndexFile$Reader;

    invoke-virtual {v2, v3, v0, v3}, Lmiui/util/DensityIndexFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pyString:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #pyString:Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
