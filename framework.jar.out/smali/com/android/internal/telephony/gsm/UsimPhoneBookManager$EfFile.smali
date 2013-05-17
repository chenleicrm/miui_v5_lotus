.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EfFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    }
.end annotation


# instance fields
.field private mEfId:I

.field private mEfType:I

.field private mFileType:I

.field private mNumberOfRecords:I

.field private mRecordSize:I

.field private mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "fileType"
    .parameter "efType"
    .parameter "efId"

    .prologue
    const/4 v0, 0x0

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    .line 967
    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    .line 972
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    .line 973
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    .line 974
    iput p3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    .line 976
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->initEfRecordState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 956
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    return-object v0
.end method

.method public static getRawEmptyRecord(II)[B
    .locals 3
    .parameter "recordLength"
    .parameter "efType"

    .prologue
    const/4 v2, 0x0

    .line 1020
    new-array v0, p0, [B

    .line 1022
    .local v0, emptyRecord:[B
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1024
    const/16 v1, 0xc2

    if-ne p1, v1, :cond_0

    .line 1027
    aput-byte v2, v0, v2

    .line 1029
    :cond_0
    return-object v0
.end method

.method private initEfRecordState()V
    .locals 2

    .prologue
    .line 1060
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    if-lez v0, :cond_0

    .line 1061
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    iget v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    .line 1065
    :goto_0
    return-void

    .line 1063
    :cond_0
    const-string v0, "GSM"

    const-string/jumbo v1, "the mNumberOfRecords is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getEfId()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfId:I

    return v0
.end method

.method public getEfType()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    return v0
.end method

.method public getFileType()I
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mFileType:I

    return v0
.end method

.method public getNumberOfRecords()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    return v0
.end method

.method public isRecordEmpty([B)Z
    .locals 7
    .parameter "record"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1039
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v3

    .line 1041
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v5, 0xc1

    if-ne v4, v5, :cond_3

    .line 1043
    array-length v1, p1

    .line 1044
    .local v1, recordLength:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1045
    aget-byte v4, p1, v0

    if-eq v4, v6, :cond_2

    move v3, v2

    .line 1046
    goto :goto_0

    .line 1044
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1049
    .end local v0           #index:I
    .end local v1           #recordLength:I
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mEfType:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_6

    .line 1051
    aget-byte v4, p1, v2

    if-eq v4, v6, :cond_4

    aget-byte v4, p1, v2

    if-nez v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    move v3, v2

    goto :goto_0

    .line 1054
    :cond_6
    aget-byte v4, p1, v2

    if-eq v4, v6, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method public setRecordState(IZ)V
    .locals 1
    .parameter "recordIndex"
    .parameter "state"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordStateInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile$RecordStateInfo;->setRecordState(IZ)V

    .line 1077
    return-void
.end method

.method public updateRecSizeInfo(II)V
    .locals 0
    .parameter "numberOfRecords"
    .parameter "recordSize"

    .prologue
    .line 994
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mNumberOfRecords:I

    .line 995
    iput p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$EfFile;->mRecordSize:I

    .line 996
    return-void
.end method
