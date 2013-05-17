.class Lcom/android/internal/telephony/cat/CallSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field callMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "callMsg"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p3, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconLoadingFailed:Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconLoadingFailed:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
