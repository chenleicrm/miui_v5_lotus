.class public Lmiui/drm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/DrmManager$1;,
        Lmiui/drm/DrmManager$DrmNSContext;,
        Lmiui/drm/DrmManager$RightObject;
    }
.end annotation


# static fields
.field private static final ASSET_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

.field private static final IMEI_EVERYONE:Ljava/lang/String; = "-1"

.field private static final IMEI_PREFIX:Ljava/lang/String; = "d"

.field private static final ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final PAIR_SEPARATOR:Ljava/lang/String; = ":"

.field private static final PERMISSION_XPATH:Ljava/lang/String; = "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

.field private static final PUBLIC_KEY_E:Ljava/lang/String; = "10001"

.field private static final PUBLIC_KEY_M:Ljava/lang/String; = "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

.field public static final TAG:Ljava/lang/String; = "drm"

.field private static final USER_EVERYONE:Ljava/lang/String; = "-1"

.field private static final USER_PREFIX:Ljava/lang/String; = "m"


# instance fields
.field private mRightsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/drm/DrmManager$RightObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private convertHexStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .parameter "hex"

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 273
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 274
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 273
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 276
    :cond_0
    return-object v0
.end method

.method public static exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 280
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    .line 283
    .local v2, writer:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/drm.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recreate log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 288
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create log file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 292
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "export error message into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .local v3, writer:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 295
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 299
    if-eqz v3, :cond_4

    .line 301
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 307
    .end local v1           #file:Ljava/io/File;
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    :cond_2
    :goto_0
    return-void

    .line 302
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 304
    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    goto :goto_0

    .line 296
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 297
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    if-eqz v2, :cond_2

    .line 301
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 302
    :catch_2
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_3

    .line 301
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    :cond_3
    :goto_3
    throw v4

    .line 302
    :catch_3
    move-exception v0

    .line 303
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 299
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 296
    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2           #writer:Ljava/io/BufferedWriter;
    .restart local v3       #writer:Ljava/io/BufferedWriter;
    :cond_4
    move-object v2, v3

    .end local v3           #writer:Ljava/io/BufferedWriter;
    .restart local v2       #writer:Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method public static getEncodedImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Lmiui/drm/DrmManager;->getOriginImei()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const-string v0, ""

    .line 315
    :goto_0
    return-object v0

    .line 314
    :cond_0
    invoke-static {v0}, Lmiui/security/HashUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    goto :goto_0
.end method

.method public static getOriginImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const-string v0, ""

    .line 323
    .end local v0           #imei:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private isLegal(Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Z
    .locals 10
    .parameter "targetAsset"
    .parameter "ro"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    if-nez p2, :cond_0

    .line 158
    :goto_0
    return v6

    .line 133
    :cond_0
    const/4 v3, 0x0

    .line 134
    .local v3, match:Z
    iget-object v8, p2, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, asset:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    const/4 v3, 0x1

    .line 140
    .end local v0           #asset:Ljava/lang/String;
    :cond_2
    if-nez v3, :cond_3

    .line 141
    const-string v7, "drm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "right object has no definition for asset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    iget-object v8, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 146
    const-string v6, "drm"

    const-string v8, "right object does not have any imeis"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 147
    goto :goto_0

    .line 149
    :cond_4
    invoke-static {}, Lmiui/drm/DrmManager;->getOriginImei()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, targetOriginImei:Ljava/lang/String;
    invoke-static {}, Lmiui/drm/DrmManager;->getEncodedImei()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, targetEncodedImei:Ljava/lang/String;
    iget-object v8, p2, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, imei:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 153
    :cond_6
    const-string v6, "drm"

    const-string v8, "right object has matched imei"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 154
    goto :goto_0

    .line 157
    .end local v2           #imei:Ljava/lang/String;
    :cond_7
    const-string v7, "drm"

    const-string v8, "right object does not have matched imei"

    invoke-static {v7, v8}, Lmiui/drm/DrmManager;->exportFatalLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isRightsFileLegal(Ljava/io/File;)Z
    .locals 14
    .parameter "file"

    .prologue
    const/4 v13, -0x1

    .line 218
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 219
    .local v7, reader:Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 221
    .local v2, document:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 263
    .end local v2           #document:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 264
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v12, 0x0

    :goto_2
    return v12

    .line 224
    .restart local v2       #document:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, contentPart:Ljava/lang/String;
    const/4 v10, 0x0

    .line 229
    .local v10, signaturePart:Ljava/lang/String;
    const/4 v6, 0x0

    .line 230
    .local v6, p:Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    .line 231
    .local v5, m:Ljava/util/regex/Matcher;
    const/4 v11, -0x1

    .line 232
    .local v11, startIndex:I
    const/4 v4, -0x1

    .line 234
    .local v4, endIndex:I
    const-string v12, "<o-ex:rights.*?>"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 235
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 236
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 237
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    .line 238
    const-string v12, "</o-ex:rights>"

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 240
    :cond_2
    if-eq v11, v13, :cond_3

    if-eq v4, v13, :cond_3

    .line 241
    invoke-virtual {v2, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_3
    const-string v12, "<o-ex:rights.*?o-ex:id=\""

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 245
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 246
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 247
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    .line 249
    :cond_4
    const-string v12, "<o-ex:rights.*?o-ex:id=\".*?\""

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 250
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 251
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 252
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .line 254
    :cond_5
    if-eq v11, v13, :cond_6

    if-eq v4, v13, :cond_6

    .line 255
    invoke-virtual {v2, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 258
    :cond_6
    if-eqz v1, :cond_0

    if-eqz v10, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 260
    .local v0, contentBytes:[B
    invoke-direct {p0, v10}, Lmiui/drm/DrmManager;->convertHexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 261
    .local v9, signatureBytes:[B
    const-string v12, "a2ebd07cfae9a72345fc3c95d80cf5a21a55bf553fbab3025c82747ba4d53d1f9b02f46c20b5520585a910732698b165f0ecf7bd9ce5402e27c646cd0c5d34cff92b184d6a477e156a7d3503b756cc3e8531fb26c0da0ca051ab531c7f9f2a040a06642cadb698882c048630030b73edbbd62da73f7027065443c6e2558edfbd"

    const-string v13, "10001"

    invoke-static {v12, v13}, Lmiui/security/RSAUtils;->getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v12

    invoke-static {v0, v12, v9}, Lmiui/security/RSAUtils;->verify([BLjava/security/PublicKey;[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    goto :goto_2

    .line 265
    .end local v0           #contentBytes:[B
    .end local v1           #contentPart:Ljava/lang/String;
    .end local v2           #document:Ljava/lang/String;
    .end local v4           #endIndex:I
    .end local v5           #m:Ljava/util/regex/Matcher;
    .end local v6           #p:Ljava/util/regex/Pattern;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    .end local v9           #signatureBytes:[B
    .end local v10           #signaturePart:Ljava/lang/String;
    .end local v11           #startIndex:I
    :catch_1
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public isLegal(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .parameter "contentFile"
    .parameter "rightsFile"

    .prologue
    .line 105
    invoke-static {p1}, Lmiui/security/HashUtils;->getSHA1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, hash:Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lmiui/drm/DrmManager;->isLegal(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public isLegal(Ljava/lang/String;Ljava/io/File;)Z
    .locals 9
    .parameter "hash"
    .parameter "rightsFile"

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v5

    .line 113
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 115
    .local v1, file:Ljava/io/File;
    const-string v6, "drm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking asset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v1}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v4

    .line 117
    .local v4, ro:Lmiui/drm/DrmManager$RightObject;
    invoke-direct {p0, p1, v4}, Lmiui/drm/DrmManager;->isLegal(Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    const/4 v5, 0x1

    goto :goto_0

    .line 114
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #ro:Lmiui/drm/DrmManager$RightObject;
    :cond_3
    const-string v5, "drm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checking asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0, p2}, Lmiui/drm/DrmManager;->parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;

    move-result-object v4

    .line 125
    .restart local v4       #ro:Lmiui/drm/DrmManager$RightObject;
    invoke-direct {p0, p1, v4}, Lmiui/drm/DrmManager;->isLegal(Ljava/lang/String;Lmiui/drm/DrmManager$RightObject;)Z

    move-result v5

    goto :goto_0
.end method

.method public parseRightsFile(Ljava/io/File;)Lmiui/drm/DrmManager$RightObject;
    .locals 17
    .parameter "file"

    .prologue
    .line 162
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v14, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/drm/DrmManager$RightObject;

    .line 164
    .local v11, ro:Lmiui/drm/DrmManager$RightObject;
    if-eqz v11, :cond_0

    move-object v14, v11

    .line 213
    :goto_0
    return-object v14

    .line 167
    :cond_0
    invoke-direct/range {p0 .. p1}, Lmiui/drm/DrmManager;->isRightsFileLegal(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 168
    const/4 v14, 0x0

    goto :goto_0

    .line 170
    :cond_1
    new-instance v11, Lmiui/drm/DrmManager$RightObject;

    .end local v11           #ro:Lmiui/drm/DrmManager$RightObject;
    const/4 v14, 0x0

    invoke-direct {v11, v14}, Lmiui/drm/DrmManager$RightObject;-><init>(Lmiui/drm/DrmManager$1;)V

    .line 171
    .restart local v11       #ro:Lmiui/drm/DrmManager$RightObject;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/drm/DrmManager;->mRightsCache:Ljava/util/Map;

    invoke-interface {v14, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 174
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 175
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 176
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 177
    .local v4, document:Lorg/w3c/dom/Document;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v13

    .line 178
    .local v13, xpathFactory:Ljavax/xml/xpath/XPathFactory;
    invoke-virtual {v13}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v12

    .line 179
    .local v12, xPath:Ljavax/xml/xpath/XPath;
    new-instance v14, Lmiui/drm/DrmManager$DrmNSContext;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lmiui/drm/DrmManager$DrmNSContext;-><init>(Lmiui/drm/DrmManager$1;)V

    invoke-interface {v12, v14}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 180
    const-string v14, "/o-ex:rights/o-ex:agreement/o-ex:asset/o-ex:context/o-dd:uid"

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v14, v4, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/NodeList;

    .line 181
    .local v1, assetList:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_5

    .line 182
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v7, v14, :cond_5

    .line 183
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, content:Ljava/lang/String;
    const-string v14, ":"

    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, pair:[Ljava/lang/String;
    array-length v14, v8

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 186
    iget-object v14, v11, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v15, 0x0

    aget-object v15, v8, v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 187
    :cond_3
    array-length v14, v8

    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    .line 188
    iget-object v14, v11, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v15, 0x0

    aget-object v15, v8, v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v14, v11, Lmiui/drm/DrmManager$RightObject;->assets:Ljava/util/List;

    const/4 v15, 0x1

    aget-object v15, v8, v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 204
    .end local v1           #assetList:Lorg/w3c/dom/NodeList;
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #content:Ljava/lang/String;
    .end local v4           #document:Lorg/w3c/dom/Document;
    .end local v6           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #i:I
    .end local v8           #pair:[Ljava/lang/String;
    .end local v12           #xPath:Ljavax/xml/xpath/XPath;
    .end local v13           #xpathFactory:Ljavax/xml/xpath/XPathFactory;
    :catch_0
    move-exception v5

    .line 205
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_4
    :goto_3
    move-object v14, v11

    .line 213
    goto/16 :goto_0

    .line 193
    .restart local v1       #assetList:Lorg/w3c/dom/NodeList;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #document:Lorg/w3c/dom/Document;
    .restart local v6       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12       #xPath:Ljavax/xml/xpath/XPath;
    .restart local v13       #xpathFactory:Ljavax/xml/xpath/XPathFactory;
    :cond_5
    :try_start_1
    const-string v14, "/o-ex:rights/o-ex:agreement/o-ex:permission/o-dd:execute/o-ex:constraint/oma-dd:individual/o-ex:context/o-dd:uid"

    sget-object v15, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v12, v14, v4, v15}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/NodeList;

    .line 194
    .local v10, permissonList:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_4

    .line 195
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v7, v14, :cond_4

    .line 196
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 197
    .restart local v3       #content:Ljava/lang/String;
    const-string v14, "d"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 198
    iget-object v14, v11, Lmiui/drm/DrmManager$RightObject;->imeis:Ljava/util/List;

    const-string v15, "d"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 199
    :cond_7
    const-string v14, "m"

    invoke-virtual {v3, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 200
    iget-object v14, v11, Lmiui/drm/DrmManager$RightObject;->users:Ljava/util/List;

    const-string v15, "m"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    .line 206
    .end local v1           #assetList:Lorg/w3c/dom/NodeList;
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #content:Ljava/lang/String;
    .end local v4           #document:Lorg/w3c/dom/Document;
    .end local v6           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #i:I
    .end local v10           #permissonList:Lorg/w3c/dom/NodeList;
    .end local v12           #xPath:Ljavax/xml/xpath/XPath;
    .end local v13           #xpathFactory:Ljavax/xml/xpath/XPathFactory;
    :catch_1
    move-exception v5

    .line 207
    .local v5, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_3

    .line 208
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v5

    .line 209
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 210
    .end local v5           #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 211
    .local v5, e:Ljavax/xml/xpath/XPathExpressionException;
    invoke-virtual {v5}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    goto :goto_3
.end method
