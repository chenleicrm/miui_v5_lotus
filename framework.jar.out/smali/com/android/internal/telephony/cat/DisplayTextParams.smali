.class Lcom/android/internal/telephony/cat/DisplayTextParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 60
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v1, :cond_1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconLoadingFailed:Z

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
