.class public Lmiui/util/CoderUtils;
.super Ljava/lang/Object;
.source "CoderUtils.java"


# static fields
.field public static final AES_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final base64AesEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, raw:[B
    if-eqz v4, :cond_2

    array-length v5, v4

    const/16 v7, 0x10

    if-eq v5, v7, :cond_3

    :cond_2
    move-object v5, v6

    goto :goto_0

    :cond_3
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v3, keySpec:Ljavax/crypto/spec/SecretKeySpec;
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
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    invoke-static {v7}, Lmiui/util/CoderUtils;->encodeBase64([B)[B

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #iv:Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    move-object v5, v6

    goto :goto_0

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    move-object v5, v6

    goto :goto_0

    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/security/InvalidKeyException;
    move-object v5, v6

    goto :goto_0

    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    move-object v5, v6

    goto :goto_0

    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    move-object v5, v6

    goto :goto_0

    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .local v1, e:Ljavax/crypto/BadPaddingException;
    move-object v5, v6

    goto :goto_0
.end method

.method public static final base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "data"
    .parameter "key"

    .prologue
    const/4 v7, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .local v6, raw:[B
    if-eqz v6, :cond_0

    array-length v8, v6

    const/16 v9, 0x10

    if-ne v8, v9, :cond_0

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v5, v6, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v5, keySpec:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .local v0, cipher:Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const-string v8, "0102030405060708"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v4, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .local v4, iv:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {p0}, Lmiui/util/CoderUtils;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object v3

    .local v3, encryptedByte:[B
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .local v1, decryptedByte:[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v7, v8

    goto :goto_0

    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #decryptedByte:[B
    .end local v3           #encryptedByte:[B
    .end local v4           #iv:Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .local v2, e:Ljava/security/InvalidKeyException;
    goto :goto_0

    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    goto :goto_0

    .end local v2           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_0

    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    .local v2, e:Ljavax/crypto/BadPaddingException;
    goto :goto_0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, resultSb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    invoke-static {v2}, Lmiui/util/CoderUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    move v2, p0

    .local v2, n:I
    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    div-int/lit8 v0, v2, 0x10

    .local v0, d1:I
    rem-int/lit8 v1, v2, 0x10

    .local v1, d2:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmiui/util/CoderUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static final decodeBase64Bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64([B)[B
    .locals 1
    .parameter "bytes"

    .prologue
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64Bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x400

    new-array v0, v6, [B

    .local v0, buffer:[B
    const/4 v4, 0x0

    .local v4, numRead:I
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, fis:Ljava/io/InputStream;
    :try_start_1
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .local v3, md5:Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .end local v3           #md5:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v2           #fis:Ljava/io/InputStream;
    :goto_1
    return-object v5

    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #fis:Ljava/io/InputStream;
    .restart local v3       #md5:Ljava/security/MessageDigest;
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_2
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v3           #md5:Ljava/security/MessageDigest;
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_3
    throw v5

    :catch_6
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static final encodeMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v1, 0x0

    .local v1, digester:Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .local v0, digest:[B
    invoke-static {v0}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0           #digest:[B
    :catch_0
    move-exception v2

    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final encodeSHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v1, 0x0

    .local v1, digester:Ljava/security/MessageDigest;
    :try_start_0
    const-string v4, "SHA"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .local v0, digest:[B
    invoke-static {v0}, Lmiui/util/CoderUtils;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0           #digest:[B
    :catch_0
    move-exception v2

    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final encodeSHABytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v0, 0x0

    .local v0, digester:Ljava/security/MessageDigest;
    :try_start_0
    const-string v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
