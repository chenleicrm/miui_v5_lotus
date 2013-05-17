.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UsimFH"


# instance fields
.field private volatile mLocalPhoneBookExist:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->mLocalPhoneBookExist:Z

    return-void
.end method

.method private getEFPathForPhoneBook()Ljava/lang/String;
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->mLocalPhoneBookExist:Z

    if-eqz v0, :cond_0

    const-string v0, "3F007FFF5F3A"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "3F007F105F3A"

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "UsimFileHandler finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .locals 1
    .parameter "efid"

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getEFPathForPhoneBook()Ljava/lang/String;

    move-result-object v0

    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getEFPathForPhoneBook()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_1
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLocalPhoneBookExist(Z)V
    .locals 0
    .parameter "exist"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UsimFileHandler;->mLocalPhoneBookExist:Z

    return-void
.end method
