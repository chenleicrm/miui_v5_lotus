.class Landroid/server/BluetoothBondState$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothBondState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothBondState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothBondState;


# direct methods
.method constructor <init>(Landroid/server/BluetoothBondState;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Landroid/server/BluetoothBondState$2;->this$0:Landroid/server/BluetoothBondState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 500
    if-nez p2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 505
    .local v2, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, address:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothBondState$2;->this$0:Landroid/server/BluetoothBondState;

    #getter for: Landroid/server/BluetoothBondState;->mPairingRequestRcvd:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/server/BluetoothBondState;->access$200(Landroid/server/BluetoothBondState;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
