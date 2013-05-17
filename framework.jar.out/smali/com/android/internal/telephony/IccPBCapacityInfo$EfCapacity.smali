.class public final Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;
.super Ljava/lang/Object;
.source "IccPBCapacityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPBCapacityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EfCapacity"
.end annotation


# instance fields
.field emptyNumber:I

.field length:I

.field final tag:I

.field totalNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    .line 136
    return-void
.end method


# virtual methods
.method public readParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v0, strBuilder:Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "dest"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->emptyNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/android/internal/telephony/IccPBCapacityInfo$EfCapacity;->totalNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void
.end method
