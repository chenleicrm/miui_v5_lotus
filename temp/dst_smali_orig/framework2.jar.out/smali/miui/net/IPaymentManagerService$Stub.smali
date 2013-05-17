.class public abstract Lmiui/net/IPaymentManagerService$Stub;
.super Landroid/os/Binder;
.source "IPaymentManagerService.java"

# interfaces
.implements Lmiui/net/IPaymentManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/IPaymentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/IPaymentManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.net.IPaymentManagerService"

.field static final TRANSACTION_getMiliBalance:I = 0x6

.field static final TRANSACTION_payForOrder:I = 0x1

.field static final TRANSACTION_recharge:I = 0x5

.field static final TRANSACTION_showMiliCenter:I = 0x2

.field static final TRANSACTION_showPayRecord:I = 0x4

.field static final TRANSACTION_showRechargeRecord:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.net.IPaymentManagerService"

    invoke-virtual {p0, p0, v0}, Lmiui/net/IPaymentManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/net/IPaymentManagerService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "miui.net.IPaymentManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/net/IPaymentManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/net/IPaymentManagerService;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/net/IPaymentManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/net/IPaymentManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IPaymentManagerResponse;

    move-result-object v0

    .local v0, _arg0:Lmiui/net/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .local v1, _arg1:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .local v3, _arg3:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/net/IPaymentManagerService$Stub;->payForOrder(Lmiui/net/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_1

    .restart local v2       #_arg2:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/Bundle;
    goto :goto_2

    .end local v0           #_arg0:Lmiui/net/IPaymentManagerResponse;
    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Landroid/os/Bundle;
    :sswitch_2
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .local v0, _arg0:Landroid/accounts/Account;
    :goto_3
    invoke-virtual {p0, v0}, Lmiui/net/IPaymentManagerService$Stub;->showMiliCenter(Landroid/accounts/Account;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Landroid/accounts/Account;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_3

    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_3
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0       #_arg0:Landroid/accounts/Account;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/IPaymentManagerService$Stub;->showRechargeRecord(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_4

    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_4
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0       #_arg0:Landroid/accounts/Account;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/IPaymentManagerService$Stub;->showPayRecord(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_5

    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_5
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .restart local v0       #_arg0:Landroid/accounts/Account;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/IPaymentManagerService$Stub;->recharge(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_6

    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_6
    const-string v5, "miui.net.IPaymentManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/IPaymentManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IPaymentManagerResponse;

    move-result-object v0

    .local v0, _arg0:Lmiui/net/IPaymentManagerResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .local v1, _arg1:Landroid/accounts/Account;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .local v3, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/net/IPaymentManagerService$Stub;->getMiliBalance(Lmiui/net/IPaymentManagerResponse;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg1:Landroid/accounts/Account;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/accounts/Account;
    goto :goto_7

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
