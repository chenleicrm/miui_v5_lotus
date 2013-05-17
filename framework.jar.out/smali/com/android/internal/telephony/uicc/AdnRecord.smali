.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field public static final ADN_CAPABILITY_ID:I = 0xc

.field public static final ADN_DIALING_NUMBER_END:I = 0xb

.field public static final ADN_DIALING_NUMBER_START:I = 0x2

.field public static final ADN_EXTENSION_ID:I = 0xd

.field public static final ADN_TON_AND_NPI:I = 0x1

.field public static final ANR_ADDITIONAL_NUMBER_ID:I = 0x0

.field public static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field public static final ANR_CAPABILITY_ID:I = 0xd

.field public static final ANR_DIALING_NUMBER_END:I = 0xc

.field public static final ANR_DIALING_NUMBER_START:I = 0x3

.field public static final ANR_EXTENSION_ID:I = 0xe

.field public static final ANR_TON_AND_NPI:I = 0x2

.field public static final BCD_NUMBER_MAX_LENGTH:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field public static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field public static final EXT_RECORD_TYPE_MASK:I = 0x3

.field public static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field public static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field public static final TON_AND_NPI_LENGTH:I = 0x1


# instance fields
.field alphaTag:Ljava/lang/String;

.field anrNumbers:[Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 158
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 159
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 160
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 162
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 163
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 144
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 145
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 146
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 147
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrNumbers"

    .prologue
    .line 153
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 126
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 127
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 128
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 136
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anrNumbers"

    .prologue
    const/4 v1, 0x0

    .line 140
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 123
    return-void
.end method

.method private static canBeGsmEncoded(Ljava/lang/String;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    if-nez p0, :cond_0

    move v2, v3

    .line 425
    .local v2, str_len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 426
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    .end local v1           #i:I
    .end local v2           #str_len:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .restart local v1       #i:I
    .restart local v2       #str_len:I
    :cond_1
    move v3, v4

    .line 430
    :goto_2
    return v3

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, ee:Lcom/android/internal/telephony/EncodeException;
    goto :goto_2
.end method

.method private static encode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 394
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->canBeGsmEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->encodeUnicode0x80(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static encodeUnicode0x80(Ljava/lang/String;)[B
    .locals 5
    .parameter "s"

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 407
    .local v1, result:[B
    :try_start_0
    const-string/jumbo v3, "utf16-be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 408
    .local v2, stringBytes:[B
    array-length v0, v2

    .line 409
    .local v0, length:I
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [B

    .line 410
    const/4 v3, 0x0

    const/16 v4, -0x80

    aput-byte v4, v1, v3

    .line 411
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v0           #length:I
    .end local v2           #stringBytes:[B
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getEmptyAdnRecordCount(Ljava/util/ArrayList;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, adnLikeRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v1, 0x0

    .line 602
    .local v1, emptyNum:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 603
    .local v0, adnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v0           #adnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    return v1
.end method

.method public static getUsedCount(ILjava/util/ArrayList;)[I
    .locals 7
    .parameter "efid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, phoneBookRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v2, 0x0

    .line 621
    .local v2, usedAdnCount:I
    const/4 v3, 0x0

    .line 622
    .local v3, usedAnrCount:I
    const/4 v4, 0x0

    .line 623
    .local v4, usedEmailCount:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 624
    .local v0, adnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEfId()I

    move-result v5

    if-ne p0, v5, :cond_0

    .line 626
    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 627
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 630
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyAnrs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 631
    add-int/lit8 v3, v3, 0x1

    .line 634
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyEmails()Z

    move-result v5

    if-nez v5, :cond_0

    .line 635
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 638
    .end local v0           #adnRecord:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v6, 0x2

    aput v4, v5, v6

    return-object v5
.end method

.method private isEmptyContent([Ljava/lang/String;)Z
    .locals 6
    .parameter "strs"

    .prologue
    const/4 v4, 0x1

    .line 582
    if-eqz p1, :cond_0

    array-length v5, p1

    if-gtz v5, :cond_1

    .line 589
    :cond_0
    :goto_0
    return v4

    .line 584
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 585
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 586
    const/4 v4, 0x0

    goto :goto_0

    .line 584
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 472
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 475
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 477
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 479
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 481
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 508
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 492
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 496
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 498
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 499
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 502
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 504
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 505
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 506
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 217
    if-ne p0, p1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 220
    :cond_0
    if-nez p0, :cond_1

    .line 221
    const-string p0, ""

    .line 223
    :cond_1
    if-nez p1, :cond_2

    .line 224
    const-string p1, ""

    .line 226
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addAnr(Ljava/lang/String;)V
    .locals 5
    .parameter "anrNumber"

    .prologue
    const/4 v3, 0x0

    .line 521
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1

    .line 523
    .local v0, newLen:I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 524
    .local v1, oldAnrNumbers:[Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 525
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aput-object p1, v2, v4

    .line 526
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    :cond_0
    return-void

    .line 521
    .end local v0           #newLen:I
    .end local v1           #oldAnrNumbers:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_0
.end method

.method public addEmail(Ljava/lang/String;)V
    .locals 5
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    .line 532
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int/lit8 v0, v2, 0x1

    .line 534
    .local v0, newLen:I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 535
    .local v1, oldEmails:[Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 536
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aput-object p1, v2, v4

    .line 537
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :cond_0
    return-void

    .line 532
    .end local v0           #newLen:I
    .end local v1           #oldEmails:[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    array-length v2, v2

    goto :goto_0
.end method

.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 440
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 449
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 10
    .parameter "recordSize"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 261
    add-int/lit8 v3, p1, -0xe

    .line 264
    .local v3, footerOffset:I
    new-array v0, p1, [B

    .line 265
    .local v0, adnString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 266
    aput-byte v8, v0, v4

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    const-string v5, "GSM"

    const-string v6, "[buildAdnString] Empty dialing number"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0           #adnString:[B
    :cond_1
    :goto_1
    return-object v0

    .line 272
    .restart local v0       #adnString:[B
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_3

    .line 274
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Max length of dialing number is 20"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 276
    goto :goto_1

    .line 277
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 278
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 280
    goto :goto_1

    .line 282
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 283
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 284
    .local v1, bcdNumber:[B
    array-length v6, v1

    const/16 v7, 0xb

    if-le v6, v7, :cond_5

    .line 285
    const-string v6, "GSM"

    const-string v7, "[buildAdnString] Max length of BCD number is 11"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 286
    goto :goto_1

    .line 288
    :cond_5
    add-int/lit8 v6, v3, 0x1

    array-length v7, v1

    invoke-static {v1, v9, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    add-int/lit8 v6, v3, 0x0

    array-length v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 294
    .end local v1           #bcdNumber:[B
    :cond_6
    add-int/lit8 v6, v3, 0xc

    aput-byte v8, v0, v6

    .line 296
    add-int/lit8 v6, v3, 0xd

    aput-byte v8, v0, v6

    .line 299
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 300
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->encode(Ljava/lang/String;)[B

    move-result-object v2

    .line 301
    .local v2, byteTag:[B
    array-length v6, v2

    if-le v6, v3, :cond_7

    .line 302
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max byte length of tag is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 303
    goto/16 :goto_1

    .line 306
    :cond_7
    array-length v5, v2

    invoke-static {v2, v9, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1
.end method

.method public buildAnrString(ILjava/lang/String;)[B
    .locals 6
    .parameter "recordSize"
    .parameter "anrNumber"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 323
    new-array v0, p1, [B

    .line 324
    .local v0, anrNumberData:[B
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 326
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    const-string v2, "GSM"

    const-string v3, "[buildAnrString] Empty dialing anr number"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0           #anrNumberData:[B
    :goto_0
    return-object v0

    .line 331
    .restart local v0       #anrNumberData:[B
    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 332
    .local v1, bcdNumber:[B
    array-length v2, v1

    const/16 v3, 0xb

    if-le v2, v3, :cond_1

    .line 333
    const-string v2, "GSM"

    const-string v3, "[buildAnrString] Max length of BCD number is 11"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :cond_1
    const/4 v2, 0x2

    array-length v3, v1

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    aput-byte v5, v0, v5

    .line 340
    const/4 v2, 0x1

    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 343
    const/16 v2, 0xd

    aput-byte v4, v0, v2

    .line 344
    const/16 v2, 0xe

    aput-byte v4, v0, v2

    goto :goto_0
.end method

.method public buildEmailString(ILjava/lang/String;Z)[B
    .locals 6
    .parameter "recordSize"
    .parameter "email"
    .parameter "isEmailType2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 360
    new-array v1, p1, [B

    .line 361
    .local v1, emailData:[B
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 363
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 364
    const-string v3, "GSM"

    const-string v4, "[buildEmailString] Empty email"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v1           #emailData:[B
    :cond_0
    :goto_0
    return-object v1

    .line 367
    .restart local v1       #emailData:[B
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->encode(Ljava/lang/String;)[B

    move-result-object v0

    .line 371
    .local v0, byteData:[B
    if-eqz p3, :cond_2

    add-int/lit8 v2, p1, -0x2

    .line 373
    .local v2, maxEmailLength:I
    :goto_1
    array-length v3, v0

    if-le v3, v2, :cond_3

    .line 374
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[buildEmailString] Max byte length of email is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    goto :goto_0

    .end local v2           #maxEmailLength:I
    :cond_2
    move v2, p1

    .line 371
    goto :goto_1

    .line 377
    .restart local v2       #maxEmailLength:I
    :cond_3
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    if-eqz p3, :cond_0

    .line 381
    aput-byte v4, v1, v2

    .line 383
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v3

    goto :goto_0
.end method

.method public deleteAllAnr()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .line 643
    return-void
.end method

.method public deleteAllEmail()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 647
    return-void
.end method

.method public deleteExt1()V
    .locals 1

    .prologue
    .line 650
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 651
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getAllAnr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getAllAnrAsOneString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 547
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 554
    :goto_0
    return-object v5

    .line 549
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v4, strBuilder:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 551
    .local v3, singleAnr:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    .end local v3           #singleAnr:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfId()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 212
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyEmails()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyAnrs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyAnrs()Z
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAllAnr()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyContent([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmptyEmails()Z
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmptyContent([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "alphatag"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", All ANRs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAnrNumber(ILjava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "anrNumber"

    .prologue
    .line 570
    if-gez p1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0

    .line 577
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->addAnr(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEmail(ILjava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "email"

    .prologue
    .line 558
    if-gez p1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->addEmail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 241
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrNumbers:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 247
    return-void
.end method
