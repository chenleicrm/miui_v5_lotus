.class public Lcom/android/internal/telephony/uicc/AnrRecord;
.super Ljava/lang/Object;
.source "AnrRecord.java"


# static fields
.field private static final ANR_EXT1_INDEX:I = 0xe

.field private static final ANR_NUMBER_LENGTH_INDEX:I = 0x1

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field private mExt1EfId:I

.field private mExt1RecordIndex:I

.field private mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 2
    .parameter "record"
    .parameter "recordIndex"
    .parameter "ext1EfId"

    .prologue
    const/16 v1, 0xff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1EfId:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1RecordIndex:I

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AnrRecord;->parseRecord([B)V

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 3
    .parameter "record"

    .prologue
    const/16 v2, 0xe

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    array-length v1, p1

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v0, v1, 0xff

    .local v0, numberLength:I
    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1RecordIndex:I

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    array-length v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    if-ne v0, v3, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {p1, v3, v1}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExt1EfId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1EfId:I

    return v0
.end method

.method public getExt1RecordIndex()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1RecordIndex:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1RecordIndex:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AnrRecord;->mExt1RecordIndex:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
