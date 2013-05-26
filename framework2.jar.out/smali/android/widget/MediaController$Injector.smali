.class Landroid/widget/MediaController$Injector;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static updatePausePlay(ZLandroid/widget/ImageView;)V
    .locals 1
    .parameter "isPlaying"
    .parameter "pauseButton"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    if-eqz p0, :cond_1

    const v0, 0x60202ff

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :cond_0
    return-void

    .line 80
    :cond_1
    const v0, 0x6020300

    goto :goto_0
.end method
