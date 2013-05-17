.class Lmiui/widget/IconPanelActivity$StartReceiver$1;
.super Ljava/lang/Object;
.source "IconPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/IconPanelActivity$StartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lmiui/widget/IconPanelActivity$StartReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iput-object p2, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v1, v1, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget v1, v1, Lmiui/widget/IconPanelActivity;->mStatus:I

    sget v2, Lmiui/widget/IconPanelActivity;->STATUS_UNINITIALIZED:I

    if-eq v1, v2, :cond_0

    const-string v1, "IconPanelActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad status, mStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v3, v3, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget v3, v3, Lmiui/widget/IconPanelActivity;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lmiui/widget/IconPanelActivity;->getHomeLayer(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Lmiui/widget/IconPanelActivity;->shotLayer(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, sreenshot:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v1, v1, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    iget-object v1, v1, Lmiui/widget/IconPanelActivity;->mImageHomeLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v1, Lmiui/widget/IconPanelActivity$BitmapBlurTask;

    iget-object v2, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v2, v2, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-direct {v1, v2}, Lmiui/widget/IconPanelActivity$BitmapBlurTask;-><init>(Lmiui/widget/IconPanelActivity;)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lmiui/widget/IconPanelActivity$BitmapBlurTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v1, v1, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-virtual {v1}, Lmiui/widget/IconPanelActivity;->startOpenAnimation()V

    iget-object v1, p0, Lmiui/widget/IconPanelActivity$StartReceiver$1;->this$1:Lmiui/widget/IconPanelActivity$StartReceiver;

    iget-object v1, v1, Lmiui/widget/IconPanelActivity$StartReceiver;->this$0:Lmiui/widget/IconPanelActivity;

    const-string v2, "ok"

    invoke-static {v1, v2}, Lmiui/widget/IconPanelActivity;->notifyHome(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
