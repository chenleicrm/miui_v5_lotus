.class public abstract Lmiui/util/DensityIndexFile;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DensityIndexFile$1;,
        Lmiui/util/DensityIndexFile$Builder;,
        Lmiui/util/DensityIndexFile$Reader;,
        Lmiui/util/DensityIndexFile$FileHeader;,
        Lmiui/util/DensityIndexFile$DescriptionPair;,
        Lmiui/util/DensityIndexFile$DataItemDescription;,
        Lmiui/util/DensityIndexFile$IndexGroupDescription;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DensityIndexFile: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSizeOf(I)B
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .local v1, sizeOf:B
    move v0, p0

    .local v0, size:I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    shr-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    if-ge v1, v3, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    if-le v1, v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Too many data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DensityIndexFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static logo(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DensityIndexFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static readAccordingToSize(Ljava/io/DataInput;I)J
    .locals 5
    .parameter "i"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupport size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    int-to-long v0, v2

    .local v0, data:J
    :goto_0
    return-wide v0

    .end local v0           #data:J
    :pswitch_2
    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    int-to-long v0, v2

    .restart local v0       #data:J
    goto :goto_0

    .end local v0           #data:J
    :pswitch_3
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    int-to-long v0, v2

    .restart local v0       #data:J
    goto :goto_0

    .end local v0           #data:J
    :pswitch_4
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    .restart local v0       #data:J
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static writeAccordingToSize(Ljava/io/DataOutput;IJ)V
    .locals 3
    .parameter "o"
    .parameter "size"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupport size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    return-void

    :pswitch_2
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0

    :pswitch_3
    long-to-int v0, p2

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    :pswitch_4
    invoke-interface {p0, p2, p3}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
