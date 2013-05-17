.class public final Lmiui/util/GZIPCodec;
.super Ljava/lang/Object;
.source "GZIPCodec.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([B)[B
    .locals 7
    .parameter "compressed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, byteIn:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, byteOut:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, gzIn:Ljava/util/zip/GZIPInputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3           #gzIn:Ljava/util/zip/GZIPInputStream;
    .local v4, gzIn:Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x200

    :try_start_1
    new-array v0, v6, [B

    .local v0, buffer:[B
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    .local v5, read:I
    if-lez v5, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-gez v5, :cond_0

    invoke-static {v4}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .end local v0           #buffer:[B
    .end local v4           #gzIn:Ljava/util/zip/GZIPInputStream;
    .end local v5           #read:I
    .restart local v3       #gzIn:Ljava/util/zip/GZIPInputStream;
    :catchall_0
    move-exception v6

    :goto_0
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v6

    .end local v3           #gzIn:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #gzIn:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #gzIn:Ljava/util/zip/GZIPInputStream;
    .restart local v3       #gzIn:Ljava/util/zip/GZIPInputStream;
    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, byteOut:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, gzOut:Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .local v2, gzOut:Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .end local v2           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #gzOut:Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v0}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    .end local v1           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .restart local v2       #gzOut:Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #gzOut:Ljava/util/zip/GZIPOutputStream;
    .restart local v1       #gzOut:Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "gzip"

    return-object v0
.end method
