.class public Lcom/android/internal/telephony/uicc/IccCustProvider;
.super Landroid/content/ContentProvider;
.source "IccCustProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_GET_READ_SIM_FILE_DONE:I = 0x3

.field private static final EVENT_GET_READ_SIM_FLAG_DONE:I = 0x2

.field private static final EVENT_START_PROCESSING:I = 0x1

.field private static final SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final SIM_CARD_TYPE_NOT_VALID:I = -0x1

.field private static final SIM_FILE:I = 0x2

.field private static final SIM_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IccCustProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher; = null

.field private static final WAIT_TIMEOUT:I = 0x2710


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc-cust"

    const-string/jumbo v2, "sim_card_flag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc-cust"

    const-string/jumbo v2, "sim_card_file"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 61
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCustProvider$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IccCustProvider$1;-><init>(Lcom/android/internal/telephony/uicc/IccCustProvider;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/IccCustProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fetchSimFile(Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;)[B
    .locals 4
    .parameter "simValue"

    .prologue
    .line 304
    monitor-enter p1

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const-wide/16 v1, 0x2710

    :try_start_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getFileResult()[B

    move-result-object v1

    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSimFile exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCustProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private fetchSimFlag(Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;)I
    .locals 4
    .parameter "simValue"

    .prologue
    .line 285
    monitor-enter p1

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCustProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const-wide/16 v1, 0x2710

    :try_start_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->getFlagResult()I

    move-result v1

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSimFlag exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCustProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 319
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 226
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
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

    .line 228
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-flag"

    return-object v0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 155
    const/4 v13, 0x0

    .line 156
    .local v13, cursor:Landroid/database/MatrixCursor;
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect selection argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    const/4 v3, 0x0

    .line 161
    .local v3, simFolder:Ljava/lang/String;
    const/4 v4, 0x0

    .line 163
    .local v4, simFile:I
    const/4 v1, 0x0

    :try_start_0
    aget-object v3, p4, v1

    .line 164
    const/4 v1, 0x1

    aget-object v1, p4, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 170
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCustProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :catch_0
    move-exception v15

    .line 167
    .local v15, e:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect selectionArgs argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v15           #e:Ljava/lang/NumberFormatException;
    :pswitch_0
    const/4 v5, 0x0

    .line 174
    .local v5, simByte:I
    const/4 v6, 0x0

    .line 177
    .local v6, simBit:I
    :try_start_1
    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect selection argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :catch_1
    move-exception v15

    .line 196
    .restart local v15       #e:Ljava/lang/NumberFormatException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect selectionArgs argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v15           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v1, 0x2

    :try_start_2
    aget-object v1, p4, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 182
    const/4 v1, 0x3

    aget-object v1, p4, v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 185
    if-lez v5, :cond_3

    if-lez v6, :cond_3

    const/16 v1, 0x8

    if-le v6, v1, :cond_4

    .line 186
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect selectionArgs argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_4
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;

    const/4 v2, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;-><init>(ILjava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCustProvider;->fetchSimFlag(Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;)I

    move-result v19

    .line 192
    .local v19, simFlag:I
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/4 v1, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v18, v1

    .line 193
    .local v18, record:[Ljava/lang/Integer;
    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v14, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .local v14, cursor:Landroid/database/MatrixCursor;
    :try_start_3
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v13, v14

    .line 214
    .end local v5           #simByte:I
    .end local v6           #simBit:I
    .end local v14           #cursor:Landroid/database/MatrixCursor;
    .end local v18           #record:[Ljava/lang/Integer;
    .end local v19           #simFlag:I
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    :goto_1
    return-object v13

    .line 201
    :pswitch_1
    :try_start_4
    new-instance v7, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v3

    move v10, v4

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;-><init>(ILjava/lang/String;III)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/uicc/IccCustProvider;->fetchSimFile(Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;)[B

    move-result-object v16

    .line 204
    .local v16, file:[B
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v1, 0x0

    aput-object v16, v17, v1

    .line 205
    .local v17, fileRecord:[Ljava/lang/Object;
    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCustProvider;->SIM_CARD_TYPE_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v14, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 206
    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v14       #cursor:Landroid/database/MatrixCursor;
    :try_start_5
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v13, v14

    .line 208
    .end local v14           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    goto :goto_1

    .line 207
    .end local v16           #file:[B
    .end local v17           #fileRecord:[Ljava/lang/Object;
    :catch_2
    move-exception v1

    goto :goto_1

    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .restart local v14       #cursor:Landroid/database/MatrixCursor;
    .restart local v16       #file:[B
    .restart local v17       #fileRecord:[Ljava/lang/Object;
    :catch_3
    move-exception v1

    move-object v13, v14

    .end local v14           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    goto :goto_1

    .line 195
    .end local v13           #cursor:Landroid/database/MatrixCursor;
    .end local v16           #file:[B
    .end local v17           #fileRecord:[Ljava/lang/Object;
    .restart local v5       #simByte:I
    .restart local v6       #simBit:I
    .restart local v14       #cursor:Landroid/database/MatrixCursor;
    .restart local v18       #record:[Ljava/lang/Integer;
    .restart local v19       #simFlag:I
    :catch_4
    move-exception v15

    move-object v13, v14

    .end local v14           #cursor:Landroid/database/MatrixCursor;
    .restart local v13       #cursor:Landroid/database/MatrixCursor;
    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
