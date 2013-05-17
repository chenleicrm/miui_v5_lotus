.class Landroid/view/VolumePanel$5;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->listenToRuntimeSkinChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v2, 0x3e7

    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    iget-object v1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-virtual {v1, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
