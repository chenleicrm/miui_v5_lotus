.class final Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;
.super Ljava/lang/Object;
.source "IccCustProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCustProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimValue"
.end annotation


# instance fields
.field private final mResultMessage:I

.field private final mSimBit:I

.field private final mSimByte:I

.field private final mSimFile:I

.field private volatile mSimFileValue:[B

.field private volatile mSimFlagValue:I

.field private final mSimFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;III)V
    .locals 1
    .parameter "resultMessage"
    .parameter "simFolder"
    .parameter "simFile"
    .parameter "simByte"
    .parameter "simBit"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFlagValue:I

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFileValue:[B

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mResultMessage:I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFolder:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFile:I

    iput p4, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimByte:I

    iput p5, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimBit:I

    return-void
.end method


# virtual methods
.method public getFileResult()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFileValue:[B

    return-object v0
.end method

.method public getFlagResult()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFlagValue:I

    return v0
.end method

.method public getResultMessage()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mResultMessage:I

    return v0
.end method

.method public getSimBit()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimBit:I

    return v0
.end method

.method public getSimByte()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimByte:I

    return v0
.end method

.method public getSimFile()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFile:I

    return v0
.end method

.method public getSimFolder()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFolder:Ljava/lang/String;

    return-object v0
.end method

.method public setFileResult([B)V
    .locals 0
    .parameter "result"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFileValue:[B

    return-void
.end method

.method public setFlagResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccCustProvider$SimValue;->mSimFlagValue:I

    return-void
.end method
