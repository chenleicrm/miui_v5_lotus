.class Lcom/android/internal/telephony/cat/LaunchBrowserParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "url"
    .parameter "mode"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 83
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 84
    iput-object p4, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 85
    iput-object p3, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->url:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "icon"

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v1, :cond_1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-boolean v0, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconLoadingFailed:Z

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
