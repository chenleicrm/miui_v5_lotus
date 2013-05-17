.class public Lmiui/net/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/CloudCoder$CIPHER_MODE;
    }
.end annotation


# static fields
.field private static final INT_0:Ljava/lang/Integer; = null

.field private static final RC4_ALGORITHM_NAME:Ljava/lang/String; = "RC4"

.field private static final URL_REMOTE_DECRYPT:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/v2/safe/user/%s/getPlanText"

.field private static final URL_REMOTE_ENCRYPT:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/v2/safe/user/%s/getSecurityToken"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/net/CloudCoder;->INT_0:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "security"
    .parameter "data"
    .parameter "charSet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .local v1, decoded:[B
    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {p0, v5}, Lmiui/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, coder:Ljavax/crypto/Cipher;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .end local v0           #coder:Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static encodeStream(Ljava/lang/String;[B)[B
    .locals 6
    .parameter "ckeyHint"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, stream:Ljavax/crypto/CipherInputStream;
    const/4 v1, 0x0

    .local v1, encodedData:[B
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudCoder;->randomRc4Key128(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lmiui/net/CloudCoder;->newRC4Cipher([BI)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, coder:Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/CipherInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2           #stream:Ljavax/crypto/CipherInputStream;
    .local v3, stream:Ljavax/crypto/CipherInputStream;
    :try_start_1
    array-length v4, p1

    new-array v1, v4, [B

    array-length v4, p1

    invoke-virtual {v3, v1}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/io/IOException;

    const-string v5, "The encoded data length is not the same with original data"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    move-object v2, v3

    .end local v0           #coder:Ljavax/crypto/Cipher;
    .end local v3           #stream:Ljavax/crypto/CipherInputStream;
    .restart local v2       #stream:Ljavax/crypto/CipherInputStream;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V

    :cond_0
    throw v4

    .end local v2           #stream:Ljavax/crypto/CipherInputStream;
    .restart local v0       #coder:Ljavax/crypto/Cipher;
    .restart local v3       #stream:Ljavax/crypto/CipherInputStream;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V

    :cond_2
    return-object v1

    .end local v0           #coder:Ljavax/crypto/Cipher;
    .end local v3           #stream:Ljavax/crypto/CipherInputStream;
    .restart local v2       #stream:Ljavax/crypto/CipherInputStream;
    :catchall_1
    move-exception v4

    goto :goto_0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "security"
    .parameter "data"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lmiui/net/CloudCoder;->newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, coder:Ljavax/crypto/Cipher;
    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    .end local p2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "method"
    .parameter "requestUrl"
    .parameter
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/security/InvalidParameterException;

    const-string v11, "security is not nullable"

    invoke-direct {v10, v11}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, exps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .local v9, uri:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v9           #uri:Landroid/net/Uri;
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    new-instance v8, Ljava/util/TreeMap;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .local v8, sortedParams:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "%s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #sortedParams:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .local v4, first:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, s:Ljava/lang/String;
    if-nez v4, :cond_4

    const/16 v10, 0x26

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_1

    .end local v6           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmiui/net/CloudCoder;->hash4SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static getDataMd5Digest([B)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lmiui/net/CloudCoder;->getHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDataSha1Digest([B)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lmiui/net/CloudCoder;->getHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFileSha1Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .local v5, md:Ljava/security/MessageDigest;
    const/4 v3, 0x0

    .local v3, inStream:Ljava/io/FileInputStream;
    :try_start_0
    const-string v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .local v4, inStream:Ljava/io/FileInputStream;
    const/16 v8, 0x1000

    :try_start_1
    new-array v0, v8, [B

    .local v0, buffer:[B
    const/4 v6, 0x0

    .local v6, readCount:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0           #buffer:[B
    .end local v6           #readCount:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v2           #file:Ljava/io/File;
    .end local v4           #inStream:Ljava/io/FileInputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lmiui/net/CloudCoder;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    :cond_1
    :goto_3
    return-object v7

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    .restart local v6       #readCount:I
    :cond_2
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lmiui/net/CloudCoder;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3           #inStream:Ljava/io/FileInputStream;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #buffer:[B
    .end local v2           #file:Ljava/io/File;
    .end local v6           #readCount:I
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lmiui/net/CloudCoder;->getHexString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :catch_3
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inStream:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #inStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #inStream:Ljava/io/FileInputStream;
    .restart local v3       #inStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2           #file:Ljava/io/File;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    const/16 v4, 0x9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v1, v3, 0x4

    .local v1, c:I
    if-ltz v1, :cond_0

    if-gt v1, v4, :cond_0

    add-int/lit8 v3, v1, 0x30

    :goto_1
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v2

    and-int/lit8 v1, v3, 0xf

    if-ltz v1, :cond_1

    if-gt v1, v4, :cond_1

    add-int/lit8 v3, v1, 0x30

    :goto_2
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x61

    add-int/lit8 v3, v3, -0xa

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x61

    add-int/lit8 v3, v3, -0xa

    goto :goto_2

    .end local v1           #c:I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static hash4SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "plain"

    .prologue
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, md:Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to SHA1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "plain"

    .prologue
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .end local v1           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "failed to init SHA1 digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static newAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter "aesKey"
    .parameter "opMode"

    .prologue
    const/4 v5, 0x2

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .local v3, keyRaw:[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v4, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .local v2, iv:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0, p1, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #iv:Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method public static newRC4Cipher([BI)Ljavax/crypto/Cipher;
    .locals 4
    .parameter "rc4Key"
    .parameter "opMode"

    .prologue
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "RC4"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v2, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v3, "RC4"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v0, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1
.end method

.method private static randomRc4Key128(Ljava/lang/String;)[B
    .locals 3
    .parameter "ckeyHint"

    .prologue
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static remoteEndecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/CloudCoder$CIPHER_MODE;)Ljava/lang/String;
    .locals 11
    .parameter "userId"
    .parameter "data"
    .parameter "serviceToken"
    .parameter "security"
    .parameter "opMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/net/exception/CipherException;,
            Lmiui/net/exception/InvalidResponseException;,
            Lmiui/net/exception/AccessDeniedException;,
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    new-instance v5, Lmiui/util/EasyMap;

    invoke-direct {v5}, Lmiui/util/EasyMap;-><init>()V

    .local v5, params:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v8, Lmiui/net/CloudCoder$CIPHER_MODE;->ENCRYPT:Lmiui/net/CloudCoder$CIPHER_MODE;

    if-ne p4, v8, :cond_0

    const-string v8, "http://api.account.xiaomi.com/pass/v2/safe/user/%s/getSecurityToken"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, url:Ljava/lang/String;
    const-string v8, "plainText"

    invoke-virtual {v5, v8, p1}, Lmiui/util/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;

    :goto_0
    new-instance v8, Lmiui/util/EasyMap;

    invoke-direct {v8}, Lmiui/util/EasyMap;-><init>()V

    const-string v9, "userId"

    invoke-virtual {v8, v9, p0}, Lmiui/util/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;

    move-result-object v8

    const-string v9, "serviceToken"

    invoke-virtual {v8, v9, p2}, Lmiui/util/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;

    move-result-object v1

    .local v1, cookies:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    invoke-static {v7, v5, v1, v8, p3}, Lmiui/net/SecureRequest;->postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v4

    .local v4, mapContent:Lmiui/net/SimpleRequest$MapContent;
    const-string v8, "code"

    invoke-virtual {v4, v8}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, code:Ljava/lang/Object;
    sget-object v8, Lmiui/net/CloudCoder;->INT_0:Ljava/lang/Integer;

    invoke-virtual {v8, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Lmiui/net/exception/InvalidResponseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to encrypt, code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmiui/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v0           #code:Ljava/lang/Object;
    .end local v1           #cookies:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #mapContent:Lmiui/net/SimpleRequest$MapContent;
    .end local v7           #url:Ljava/lang/String;
    :cond_0
    const-string v8, "http://api.account.xiaomi.com/pass/v2/safe/user/%s/getPlanText"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #url:Ljava/lang/String;
    const-string v8, "token"

    invoke-virtual {v5, v8, p1}, Lmiui/util/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;

    goto :goto_0

    .restart local v0       #code:Ljava/lang/Object;
    .restart local v1       #cookies:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #mapContent:Lmiui/net/SimpleRequest$MapContent;
    :cond_1
    const-string v8, "data"

    invoke-virtual {v4, v8}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .local v3, dataObj:Ljava/lang/Object;
    instance-of v8, v3, Ljava/util/Map;

    if-nez v8, :cond_2

    new-instance v8, Lmiui/net/exception/InvalidResponseException;

    const-string v9, "invalid data node"

    invoke-direct {v8, v9}, Lmiui/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move-object v2, v3

    check-cast v2, Ljava/util/Map;

    .local v2, dataMap:Ljava/util/Map;
    sget-object v8, Lmiui/net/CloudCoder$CIPHER_MODE;->ENCRYPT:Lmiui/net/CloudCoder$CIPHER_MODE;

    if-ne p4, v8, :cond_3

    const-string v8, "cipher"

    :goto_1
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, result:Ljava/lang/Object;
    instance-of v8, v6, Ljava/lang/String;

    if-nez v8, :cond_4

    new-instance v8, Lmiui/net/exception/InvalidResponseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmiui/net/exception/InvalidResponseException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v6           #result:Ljava/lang/Object;
    :cond_3
    const-string v8, "plainText"

    goto :goto_1

    .restart local v6       #result:Ljava/lang/Object;
    :cond_4
    check-cast v6, Ljava/lang/String;

    .end local v6           #result:Ljava/lang/Object;
    return-object v6
.end method
