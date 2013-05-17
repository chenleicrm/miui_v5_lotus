.class Landroid/media/MediaFile$Injector;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAPE()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "APE"

    const/16 v1, 0x3e9

    const-string v2, "audio/x-monkeys-audio"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static addFLV()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "FLV"

    const/16 v1, 0xc9

    const-string/jumbo v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Landroid/media/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static isFFMpegAudoFileType(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    const/16 v0, 0x3e9

    .line 47
    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isWMAEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
