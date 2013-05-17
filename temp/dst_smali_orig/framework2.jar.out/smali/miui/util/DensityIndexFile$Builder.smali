.class public Lmiui/util/DensityIndexFile$Builder;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/DensityIndexFile$Builder$IndexData;,
        Lmiui/util/DensityIndexFile$Builder$DataItemHolder;,
        Lmiui/util/DensityIndexFile$Builder$Item;
    }
.end annotation


# instance fields
.field mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

.field mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

.field mIndexDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/DensityIndexFile$Builder$IndexData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    return-void
.end method

.method private build()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, dataCount:I
    new-instance v8, Lmiui/util/DensityIndexFile$FileHeader;

    invoke-direct {v8, v0}, Lmiui/util/DensityIndexFile$FileHeader;-><init>(I)V

    iput-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$IndexData;

    .local v2, idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    new-instance v9, Lmiui/util/DensityIndexFile$DescriptionPair;

    invoke-direct {v9, v10, v11, v10, v11}, Lmiui/util/DensityIndexFile$DescriptionPair;-><init>(JJ)V

    aput-object v9, v8, v4

    const/4 v5, 0x0

    .local v5, length:I
    const/4 v5, 0x0

    :goto_1
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_0

    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-array v8, v5, [Lmiui/util/DensityIndexFile$IndexGroupDescription;

    iput-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    if-ge v1, v8, :cond_2

    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/DensityIndexFile$Builder$Item;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DensityIndexFile$Builder$Item;

    iget v7, v8, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    .local v7, minIndex:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DensityIndexFile$Builder$Item;

    iget v8, v8, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    add-int/lit8 v6, v8, 0x1

    .local v6, maxIndex:I
    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    new-instance v9, Lmiui/util/DensityIndexFile$IndexGroupDescription;

    invoke-direct {v9, v7, v6, v10, v11}, Lmiui/util/DensityIndexFile$IndexGroupDescription;-><init>(IIJ)V

    aput-object v9, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/DensityIndexFile$Builder$Item;>;"
    .end local v6           #maxIndex:I
    .end local v7           #minIndex:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    .end local v5           #length:I
    :cond_3
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lmiui/util/DensityIndexFile$Builder;->writeAll(Ljava/io/DataOutput;)I

    return-void
.end method

.method private checkCurrentIndexingDataKind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Please add a data kind before adding group"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkCurrentIndexingGroup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->checkCurrentIndexingDataKind()V

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Please add a data group before adding data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private writeAll(Ljava/io/DataOutput;)I
    .locals 11
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .local v7, written:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    array-length v8, v8

    if-ge v4, v8, :cond_f

    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    invoke-virtual {v8, p1}, Lmiui/util/DensityIndexFile$FileHeader;->write(Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    aget-object v8, v8, v4

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$DescriptionPair;->mIndexGroupDescriptionOffset:J

    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/DensityIndexFile$Builder$IndexData;

    .local v1, idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    if-eqz p1, :cond_0

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_0
    add-int/lit8 v7, v7, 0x4

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Lmiui/util/DensityIndexFile$IndexGroupDescription;->write(Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lmiui/util/DensityIndexFile$Builder;->mFileHeader:Lmiui/util/DensityIndexFile$FileHeader;

    iget-object v8, v8, Lmiui/util/DensityIndexFile$FileHeader;->mDescriptionOffsets:[Lmiui/util/DensityIndexFile$DescriptionPair;

    aget-object v8, v8, v4

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$DescriptionPair;->mDataItemDescriptionOffset:J

    if-eqz p1, :cond_2

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_2
    add-int/lit8 v7, v7, 0x4

    const/4 v0, 0x0

    :goto_2
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_3

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v0

    invoke-virtual {v8, p1}, Lmiui/util/DensityIndexFile$DataItemDescription;->write(Ljava/io/DataOutput;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_4

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v0

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mOffset:J

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v9, v8, v0

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v8}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v9, p1, v8}, Lmiui/util/DensityIndexFile$DataItemDescription;->writeDataItems(Ljava/io/DataOutput;Ljava/util/List;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    array-length v8, v8

    if-ge v0, v8, :cond_e

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    int-to-long v9, v7

    iput-wide v9, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mOffset:J

    if-nez p1, :cond_7

    const/4 v6, 0x0

    .local v6, sizeOfItem:I
    const/4 v5, 0x0

    .local v5, m:I
    :goto_5
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v5, v8, :cond_5

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    iget v8, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMaxIndex:I

    iget-object v9, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v9, v9, v0

    iget v9, v9, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMinIndex:I

    sub-int/2addr v8, v9

    mul-int/2addr v8, v6

    add-int/2addr v7, v8

    .end local v5           #m:I
    .end local v6           #sizeOfItem:I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    iget v3, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMinIndex:I

    .local v3, j:I
    :goto_6
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexGroupDescriptions:[Lmiui/util/DensityIndexFile$IndexGroupDescription;

    aget-object v8, v8, v0

    iget v8, v8, Lmiui/util/DensityIndexFile$IndexGroupDescription;->mMaxIndex:I

    if-ge v3, v8, :cond_6

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$Item;

    .local v2, item:Lmiui/util/DensityIndexFile$Builder$Item;
    if-nez v2, :cond_8

    iget-object v2, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DensityIndexFile$Builder$Item;

    :cond_8
    const/4 v5, 0x0

    .restart local v5       #m:I
    :goto_7
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v8, v8

    if-ge v5, v8, :cond_d

    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeByte(I)V

    :cond_9
    :goto_8
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_8

    :cond_b
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/4 v9, 0x4

    if-ne v8, v9, :cond_c

    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v8}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_8

    :cond_c
    iget-object v8, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v8, v8, v5

    iget-byte v8, v8, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    const/16 v9, 0x8

    if-ne v8, v9, :cond_9

    iget-object v8, v2, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    aget-object v8, v8, v5

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {p1, v8, v9}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_8

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .end local v2           #item:Lmiui/util/DensityIndexFile$Builder$Item;
    .end local v3           #j:I
    .end local v5           #m:I
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .end local v0           #i:I
    .end local v1           #idk:Lmiui/util/DensityIndexFile$Builder$IndexData;
    :cond_f
    return v7
.end method


# virtual methods
.method public varargs add(I[Ljava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->checkCurrentIndexingGroup()V

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    array-length v2, v2

    array-length v3, p2

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Different number of objects inputted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v2, v2, v0

    iget-byte v2, v2, Lmiui/util/DensityIndexFile$DataItemDescription;->mType:B

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unsupported type of objects inputted"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Byte;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be byte"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Short;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be short"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_3
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be String"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :pswitch_5
    aget-object v2, p2, v0

    instance-of v2, v2, [B

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be byte[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto :goto_1

    :pswitch_6
    aget-object v2, p2, v0

    instance-of v2, v2, [S

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be short[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto/16 :goto_1

    :pswitch_7
    aget-object v2, p2, v0

    instance-of v2, v2, [I

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be int[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto/16 :goto_1

    :pswitch_8
    aget-object v2, p2, v0

    instance-of v2, v2, [J

    if-nez v2, :cond_6

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be long[]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    aget-object v3, v2, v0

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    invoke-virtual {v2}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->size()I

    move-result v2

    invoke-static {v2}, Lmiui/util/DensityIndexFile;->getSizeOf(I)B

    move-result v2

    iput-byte v2, v3, Lmiui/util/DensityIndexFile$DataItemDescription;->mIndexSize:B

    goto/16 :goto_1

    :cond_7
    new-instance v1, Lmiui/util/DensityIndexFile$Builder$Item;

    invoke-direct {v1, p0, p1, p2}, Lmiui/util/DensityIndexFile$Builder$Item;-><init>(Lmiui/util/DensityIndexFile$Builder;I[Ljava/lang/Object;)V

    .local v1, item:Lmiui/util/DensityIndexFile$Builder$Item;
    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v2, v2, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v3, v3, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public addGroup([I[[Ljava/lang/Object;)V
    .locals 3
    .parameter "indexes"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->checkCurrentIndexingDataKind()V

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmiui/util/DensityIndexFile$Builder;->newGroup()V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lmiui/util/DensityIndexFile$Builder;->add(I[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Different number between indexes and objects"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public varargs addKind([Ljava/lang/Object;)V
    .locals 9
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lmiui/util/DensityIndexFile$Builder$IndexData;

    array-length v4, p1

    invoke-direct {v0, v4}, Lmiui/util/DensityIndexFile$Builder$IndexData;-><init>(I)V

    iput-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mIndexDataList:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_9

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    new-instance v4, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;-><init>(Lmiui/util/DensityIndexFile$Builder;Lmiui/util/DensityIndexFile$1;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .local v1, type:B
    const/4 v2, 0x1

    .local v2, indexSize:B
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    :goto_1
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v8, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemDescriptions:[Lmiui/util/DensityIndexFile$DataItemDescription;

    new-instance v0, Lmiui/util/DensityIndexFile$DataItemDescription;

    const-wide/16 v5, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lmiui/util/DensityIndexFile$DataItemDescription;-><init>(BBBBJ)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x4

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    const/16 v2, 0x8

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    goto :goto_1

    :cond_3
    aget-object v0, p1, v7

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto :goto_1

    :cond_4
    aget-object v0, p1, v7

    instance-of v0, v0, [B

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    :cond_5
    aget-object v0, p1, v7

    instance-of v0, v0, [S

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    :cond_6
    aget-object v0, p1, v7

    instance-of v0, v0, [I

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    :cond_7
    aget-object v0, p1, v7

    instance-of v0, v0, [J

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDataItemHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;

    aget-object v4, p1, v7

    invoke-virtual {v0, v4}, Lmiui/util/DensityIndexFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    goto/16 :goto_1

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported type of object["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] inputted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v1           #type:B
    .end local v2           #indexSize:B
    :cond_9
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    new-instance v3, Lmiui/util/DensityIndexFile$Builder$Item;

    const/4 v4, -0x1

    invoke-direct {v3, p0, v4, p1}, Lmiui/util/DensityIndexFile$Builder$Item;-><init>(Lmiui/util/DensityIndexFile$Builder;I[Ljava/lang/Object;)V

    iput-object v3, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mDefaultValue:Lmiui/util/DensityIndexFile$Builder$Item;

    return-void
.end method

.method public newGroup()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v1, v1, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/util/DensityIndexFile$Builder;->mCurrentIndexData:Lmiui/util/DensityIndexFile$Builder$IndexData;

    iget-object v0, v0, Lmiui/util/DensityIndexFile$Builder$IndexData;->mIndexDataGroups:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lmiui/util/DensityIndexFile$Builder;->build()V

    const/4 v1, 0x0

    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    .local v0, done:Z
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-direct {p0, v2}, Lmiui/util/DensityIndexFile$Builder;->writeAll(Ljava/io/DataOutput;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-nez v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    return-void

    .end local v2           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    if-nez v0, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    throw v3

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #dos:Ljava/io/DataOutputStream;
    .restart local v1       #dos:Ljava/io/DataOutputStream;
    goto :goto_0
.end method
