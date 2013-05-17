.class Landroid/media/SomcMediaScannerExtensions;
.super Ljava/lang/Object;
.source "SomcMediaScannerExtensions.java"


# static fields
.field private static final BURST_FOLDER:Ljava/lang/String; = "BURST"

.field private static final FILES_POSTSCAN_BUCKET_ID_COLUMN_INDEX:I = 0x2

.field private static final FILES_POSTSCAN_DATA_COLUMN_INDEX:I = 0x1

.field private static final FILES_POSTSCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_POSTSCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final FILES_POSTSCAN_SOMC_FILE_TYPE_COLUMN_INDEX:I = 0x3

.field private static final LOCAL_LOGV:Z = false

.field private static final MEDIA_TYPE_DUAL_SOMC_TYPE_CONDITION:Ljava/lang/String; = "media_type=? AND somctype IN (?, ?)"

.field private static final MEDIA_TYPE_PATH_CONDITION:Ljava/lang/String; = "media_type=? AND _data LIKE ?"

.field private static final MEDIA_TYPE_PATH_SOMC_TYPE_CONDITION:Ljava/lang/String; = "media_type=? AND _data LIKE ? AND somctype=?"

.field private static final SOMC_TYPE_LINK_PATH_CONDITION:Ljava/lang/String; = "somctype=? AND filelinkpath=?"

.field private static final TAG:Ljava/lang/String; = "SomcMediaScannerExtensions"

.field private static final sMediaTypeImage:Ljava/lang/String;

.field private static final sMediaTypeNone:Ljava/lang/String;

.field private static final sSomcTypeBurstCover:Ljava/lang/String;

.field private static final sSomcTypeBurstImage:Ljava/lang/String;

.field private static final sSomcTypeMpo:Ljava/lang/String;

.field private static final sSomcTypeMpoCover:Ljava/lang/String;

.field private static final sSomcTypeNone:Ljava/lang/String;


# instance fields
.field private mExtendedFilesUri:Landroid/net/Uri;

.field private mMediaProvider:Landroid/content/IContentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "bucket_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "somctype"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->FILES_POSTSCAN_PROJECTION:[Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeNone:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeImage:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeNone:Ljava/lang/String;

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeMpo:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeMpoCover:Ljava/lang/String;

    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeBurstImage:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeBurstCover:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;)V
    .locals 1
    .parameter "mediaProvider"
    .parameter "volumeName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static {p2}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method fileMissing(Ljava/lang/String;J)V
    .locals 7
    .parameter "path"
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.*/.*\\.MPO$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "filelinkpath"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "somctype"

    sget-object v2, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeNone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    const-string v3, "somctype=? AND filelinkpath=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeMpoCover:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method postscan([Ljava/lang/String;)V
    .locals 20
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .local v18, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/SomcMediaScannerExtensions;->FILES_POSTSCAN_PROJECTION:[Ljava/lang/String;

    const-string v5, "media_type=? AND _data LIKE ? AND somctype=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeNone:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "%/"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v19, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v19, "/%.MPO"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeNone:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .local v15, path:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    const-string v2, "filelinkpath"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "somctype"

    sget-object v3, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeMpoCover:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    const-string v4, "media_type=? AND _data LIKE ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeImage:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    invoke-virtual {v15, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .local v13, jpegs:I
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    const-string v2, "filelinkpath"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v2, "somctype"

    sget-object v3, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeMpo:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    const-string v4, "media_type=? AND _data LIKE ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeNone:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v15, v5, v6

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .end local v13           #jpegs:I
    .end local v15           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    const-string v2, "somctype"

    sget-object v3, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeBurstImage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    const-string v4, "media_type=? AND _data LIKE ? AND somctype=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeImage:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BURST"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/_%/_%.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeNone:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .local v14, newBurstCovers:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/SomcMediaScannerExtensions;->FILES_POSTSCAN_PROJECTION:[Ljava/lang/String;

    const-string v5, "media_type=? AND somctype IN (?, ?)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Landroid/media/SomcMediaScannerExtensions;->sMediaTypeImage:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeBurstCover:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Landroid/media/SomcMediaScannerExtensions;->sSomcTypeBurstImage:Ljava/lang/String;

    aput-object v8, v6, v7

    const-string v7, "_data,somctype ASC"

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_6

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    const-string v2, "somctype"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v12, 0x0

    .local v12, currentBucket:I
    const/4 v11, 0x0

    .local v11, coverFound:Z
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, bucket:I
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, somctype:I
    if-eq v9, v12, :cond_3

    const/4 v11, 0x0

    move v12, v9

    :cond_3
    if-nez v11, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x81

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mExtendedFilesUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/SomcMediaScannerExtensions;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x1

    goto :goto_1

    .end local v9           #bucket:I
    .end local v16           #somctype:I
    .end local v17           #uri:Landroid/net/Uri;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v11           #coverFound:Z
    .end local v12           #currentBucket:I
    :cond_6
    return-void

    :catchall_1
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method
