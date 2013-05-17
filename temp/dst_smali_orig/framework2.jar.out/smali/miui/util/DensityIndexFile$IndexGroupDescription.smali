.class Lmiui/util/DensityIndexFile$IndexGroupDescription;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexGroupDescription"
.end annotation


# instance fields
.field mMaxIndex:I

.field mMinIndex:I

.field mOffset:J


# direct methods
.method constructor <init>(IIJ)V
    .locals 0
    .parameter "minIndex"
    .parameter "maxIndex"
    .parameter "offset"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMinIndex:I

    iput p2, p0, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMaxIndex:I

    iput-wide p3, p0, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mOffset:J

    return-void
.end method

.method static read(Ljava/io/DataInput;)Lmiui/util/DensityIndexFile$IndexGroupDescription;
    .locals 5
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .local v1, minIndex:I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .local v0, maxIndex:I
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    .local v2, offset:J
    new-instance v4, Lmiui/util/DensityIndexFile$IndexGroupDescription;

    invoke-direct {v4, v1, v0, v2, v3}, Lmiui/util/DensityIndexFile$IndexGroupDescription;-><init>(IIJ)V

    return-object v4
.end method


# virtual methods
.method write(Ljava/io/DataOutput;)I
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMinIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMaxIndex:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v0, p0, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mOffset:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    :cond_0
    const/16 v0, 0x10

    return v0
.end method
