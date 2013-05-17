.class Lmiui/maml/elements/MusicControlScreenElement$4;
.super Ljava/lang/Object;
.source "MusicControlScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/MusicControlScreenElement;->onButtonUp(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;

.field final synthetic val$_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iput-object p2, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 482
    const-string v1, "music_pause"

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 484
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 485
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v1, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$1202(Lmiui/maml/elements/MusicControlScreenElement;I)I

    .line 486
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v1, v1, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 489
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 502
    :cond_1
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v1}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 503
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1400(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1400(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 507
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    return-void

    .line 490
    .end local v0           #handler:Landroid/os/Handler;
    :cond_2
    const-string v1, "music_play"

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->val$_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 492
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 493
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/4 v2, 0x2

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I
    invoke-static {v1, v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$1202(Lmiui/maml/elements/MusicControlScreenElement;I)I

    .line 494
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v1, v1, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_3

    .line 495
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 497
    :cond_3
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/high16 v2, 0x41f0

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 498
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement$4;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v1}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto :goto_0
.end method
