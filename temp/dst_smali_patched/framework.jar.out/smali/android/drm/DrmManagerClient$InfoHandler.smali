.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final ERROR_EVENT_TYPE:I = 0x2

.field public static final INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .local v3, info:Landroid/drm/DrmInfoEvent;
    const/4 v1, 0x0

    .local v1, error:Landroid/drm/DrmErrorEvent;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    const-string v7, "DrmManagerClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v7}, Landroid/drm/DrmInfoEvent;->getUniqueId()I

    move-result v6

    .local v6, uniqueId:I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v7}, Landroid/drm/DrmInfoEvent;->getType()I

    move-result v4

    .local v4, infoType:I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmInfoEvent;

    invoke-virtual {v7}, Landroid/drm/DrmInfoEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    .local v5, message:Ljava/lang/String;
    sparse-switch v4, :sswitch_data_0

    :goto_1
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$700(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object v7

    iget-object v8, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v7, v8, v3}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-static {v5}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #info:Landroid/drm/DrmInfoEvent;
    check-cast v3, Landroid/drm/DrmInfoEvent;

    .restart local v3       #info:Landroid/drm/DrmInfoEvent;
    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #info:Landroid/drm/DrmInfoEvent;
    check-cast v3, Landroid/drm/DrmInfoEvent;

    .restart local v3       #info:Landroid/drm/DrmInfoEvent;
    goto :goto_1

    .end local v4           #infoType:I
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #uniqueId:I
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmErrorEvent;

    invoke-virtual {v7}, Landroid/drm/DrmErrorEvent;->getUniqueId()I

    move-result v6

    .restart local v6       #uniqueId:I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmErrorEvent;

    invoke-virtual {v7}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    .local v2, errorType:I
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/drm/DrmErrorEvent;

    invoke-virtual {v7}, Landroid/drm/DrmErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #message:Ljava/lang/String;
    packed-switch v2, :pswitch_data_1

    :goto_3
    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    iget-object v7, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    #getter for: Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;
    invoke-static {v7}, Landroid/drm/DrmManagerClient;->access$600(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v7

    iget-object v8, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v7, v8, v1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #error:Landroid/drm/DrmErrorEvent;
    check-cast v1, Landroid/drm/DrmErrorEvent;

    .restart local v1       #error:Landroid/drm/DrmErrorEvent;
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_1
        0xbbb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
