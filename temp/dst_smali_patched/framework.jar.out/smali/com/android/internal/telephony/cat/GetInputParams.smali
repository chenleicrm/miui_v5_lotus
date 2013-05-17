.class Lcom/android/internal/telephony/cat/GetInputParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field input:Lcom/android/internal/telephony/cat/Input;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Input;)V
    .locals 1
    .parameter "cmdDet"
    .parameter "input"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-object p1, v1, Lcom/android/internal/telephony/cat/Input;->icon:Landroid/graphics/Bitmap;

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetInputParams;->input:Lcom/android/internal/telephony/cat/Input;

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/Input;->iconLoadingFailed:Z

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
