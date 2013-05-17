.class Landroid/net/wifi/WifiStateMachine$WpsRunningState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsRunningState"
.end annotation


# instance fields
.field private mSourceMessage:Landroid/os/Message;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3543
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 3549
    const v0, 0xc365

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3550
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$15100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 3551
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 3626
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const v6, 0x2500c

    .line 3555
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 3621
    :goto_0
    return v2

    .line 3557
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/StateChangeResult;

    .line 3558
    .local v0, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 3559
    .local v1, supState:Landroid/net/wifi/SupplicantState;
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_0

    .line 3560
    const-string v2, "WifiStateMachine"

    const-string v4, "WPS set up successful"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    .line 3562
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->loadConfiguredNetworks()V

    .line 3563
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$5200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v2

    iget v4, v0, Landroid/net/wifi/StateChangeResult;->networkId:I

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWpsInfo:Landroid/net/wifi/WpsInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsInfo;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/wifi/WifiConfigStore;->updateIpAndProxyFromWpsConfig(ILandroid/net/wifi/WpsInfo;)V

    .line 3564
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const v5, 0x2500d

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 3565
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 3566
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 3567
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$15200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .end local v0           #stateChangeResult:Landroid/net/wifi/StateChangeResult;
    .end local v1           #supState:Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_1
    move v2, v3

    .line 3621
    goto :goto_0

    .line 3571
    :sswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v5, 0x3

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3573
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 3574
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 3575
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$15300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3579
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    iget v5, p1, Landroid/os/Message;->arg1:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3580
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 3581
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 3582
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$15400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3585
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    const/4 v5, 0x7

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, v4, v6, v5}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    .line 3587
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 3588
    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->mSourceMessage:Landroid/os/Message;

    .line 3589
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$15500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3592
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v6, v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 3595
    :sswitch_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$1400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNative;->cancelWps()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3596
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x25010

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v4}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    .line 3600
    :goto_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$15600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3598
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v5, 0x2500f

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v4, p1, v5, v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_2

    .line 3612
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/net/wifi/WifiStateMachine;->access$15700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 3616
    :sswitch_7
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WpsRunningState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6400(Landroid/net/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 3555
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000e -> :sswitch_6
        0x20036 -> :sswitch_6
        0x20048 -> :sswitch_6
        0x2004b -> :sswitch_6
        0x2004c -> :sswitch_6
        0x24003 -> :sswitch_6
        0x24004 -> :sswitch_7
        0x24006 -> :sswitch_0
        0x24009 -> :sswitch_2
        0x2400a -> :sswitch_1
        0x2400b -> :sswitch_3
        0x25001 -> :sswitch_6
        0x2500a -> :sswitch_4
        0x2500e -> :sswitch_5
    .end sparse-switch
.end method
