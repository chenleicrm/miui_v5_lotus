.class Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbShareNetStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/UsbShareNetStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbShareNetStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/UsbShareNetStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/UsbShareNetStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/UsbShareNetStateTracker;Landroid/net/UsbShareNetStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;-><init>(Landroid/net/UsbShareNetStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, action:Ljava/lang/String;
    const-string/jumbo v3, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v4, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    const-string/jumbo v3, "networkinfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4, v3}, Landroid/net/UsbShareNetStateTracker;->access$102(Landroid/net/UsbShareNetStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 191
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/UsbShareNetStateTracker;->access$100(Landroid/net/UsbShareNetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 192
    .local v2, state:Landroid/net/NetworkInfo$State;
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3}, Landroid/net/UsbShareNetStateTracker;->access$200(Landroid/net/UsbShareNetStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 193
    const-string v3, "UsbShareNetStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoring same state change, state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local v2           #state:Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v2       #state:Landroid/net/NetworkInfo$State;
    :cond_1
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #setter for: Landroid/net/UsbShareNetStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v3, v2}, Landroid/net/UsbShareNetStateTracker;->access$202(Landroid/net/UsbShareNetStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 199
    iget-object v4, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    const-string v3, "linkProperties"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    #setter for: Landroid/net/UsbShareNetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v3}, Landroid/net/UsbShareNetStateTracker;->access$302(Landroid/net/UsbShareNetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 200
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3}, Landroid/net/UsbShareNetStateTracker;->access$300(Landroid/net/UsbShareNetStateTracker;)Landroid/net/LinkProperties;

    move-result-object v3

    if-nez v3, :cond_2

    .line 201
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/UsbShareNetStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v4}, Landroid/net/UsbShareNetStateTracker;->access$302(Landroid/net/UsbShareNetStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 204
    :cond_2
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/UsbShareNetStateTracker;->access$400(Landroid/net/UsbShareNetStateTracker;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/UsbShareNetStateTracker;->access$100(Landroid/net/UsbShareNetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 205
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 207
    iget-object v3, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/net/UsbShareNetStateTracker;->access$400(Landroid/net/UsbShareNetStateTracker;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/UsbShareNetStateTracker$UsbShareNetStateReceiver;->this$0:Landroid/net/UsbShareNetStateTracker;

    #getter for: Landroid/net/UsbShareNetStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/UsbShareNetStateTracker;->access$100(Landroid/net/UsbShareNetStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
