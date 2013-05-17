.class Lmiui/util/DensityIndexFile$Builder$Item;
.super Ljava/lang/Object;
.source "DensityIndexFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DensityIndexFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lmiui/util/DensityIndexFile$Builder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field mObjects:[Ljava/lang/Object;

.field final synthetic this$0:Lmiui/util/DensityIndexFile$Builder;


# direct methods
.method public constructor <init>(Lmiui/util/DensityIndexFile$Builder;I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "index"
    .parameter "objects"

    .prologue
    iput-object p1, p0, Lmiui/util/DensityIndexFile$Builder$Item;->this$0:Lmiui/util/DensityIndexFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    iput-object p3, p0, Lmiui/util/DensityIndexFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Lmiui/util/DensityIndexFile$Builder$Item;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/util/DensityIndexFile$Builder$Item;->compareTo(Lmiui/util/DensityIndexFile$Builder$Item;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lmiui/util/DensityIndexFile$Builder$Item;)I
    .locals 2
    .parameter "another"

    .prologue
    iget v0, p0, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    iget v1, p1, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    instance-of v1, p1, Lmiui/util/DensityIndexFile$Builder$Item;

    if-eqz v1, :cond_0

    iget v1, p0, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    check-cast p1, Lmiui/util/DensityIndexFile$Builder$Item;

    .end local p1
    iget v2, p1, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/util/DensityIndexFile$Builder$Item;->mIndex:I

    return v0
.end method
