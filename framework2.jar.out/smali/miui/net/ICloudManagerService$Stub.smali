.class public abstract Lmiui/net/ICloudManagerService$Stub;
.super Landroid/os/Binder;
.source "ICloudManagerService.java"

# interfaces
.implements Lmiui/net/ICloudManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/ICloudManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/ICloudManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.net.ICloudManagerService"

.field static final TRANSACTION_cancelNotification:I = 0x8

.field static final TRANSACTION_checkUser:I = 0x9

.field static final TRANSACTION_getActivatedPhone:I = 0x1

.field static final TRANSACTION_getActivatedSimUser:I = 0xc

.field static final TRANSACTION_getActivatedStatus:I = 0x2

.field static final TRANSACTION_getFindDeviceToken:I = 0x7

.field static final TRANSACTION_getSimAuthToken:I = 0xa

.field static final TRANSACTION_getSmsGateway:I = 0x4

.field static final TRANSACTION_getSubSyncAutomatically:I = 0x3

.field static final TRANSACTION_getUserSecurity:I = 0x5

.field static final TRANSACTION_invalidateUserSecurity:I = 0x6

.field static final TRANSACTION_startActivateSim:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "miui.net.ICloudManagerService"

    invoke-virtual {p0, p0, v0}, Lmiui/net/ICloudManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "miui.net.ICloudManagerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/net/ICloudManagerService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lmiui/net/ICloudManagerService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lmiui/net/ICloudManagerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/net/ICloudManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 53
    .local v0, _arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getActivatedPhone(Lmiui/net/ICloudManagerResponse;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_2
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 62
    .restart local v0       #_arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getActivatedStatus(Lmiui/net/ICloudManagerResponse;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_3
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    sget-object v5, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 77
    .local v0, _arg0:Landroid/accounts/Account;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    .line 80
    .local v2, _arg2:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/ICloudManagerService$Stub;->getSubSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Landroid/accounts/Account;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lmiui/net/ICloudManagerResponse;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/accounts/Account;
    goto :goto_1

    .line 86
    .end local v0           #_arg0:Landroid/accounts/Account;
    :sswitch_4
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 89
    .local v0, _arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getSmsGateway(Lmiui/net/ICloudManagerResponse;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_5
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 98
    .restart local v0       #_arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getUserSecurity(Lmiui/net/ICloudManagerResponse;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_6
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    .line 111
    .restart local v2       #_arg2:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2}, Lmiui/net/ICloudManagerService$Stub;->invalidateUserSecurity(Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 117
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Lmiui/net/ICloudManagerResponse;
    :sswitch_7
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 120
    .local v0, _arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getFindDeviceToken(Lmiui/net/ICloudManagerResponse;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_8
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 131
    .local v1, _arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->cancelNotification(ILmiui/net/ICloudManagerResponse;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_9
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v3

    .line 146
    .local v3, _arg3:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1, v2, v3}, Lmiui/net/ICloudManagerService$Stub;->checkUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 152
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_arg3:Lmiui/net/ICloudManagerResponse;
    :sswitch_a
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    .line 157
    .local v1, _arg1:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0, v1}, Lmiui/net/ICloudManagerService$Stub;->getSimAuthToken(Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 163
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Lmiui/net/ICloudManagerResponse;
    :sswitch_b
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 166
    .local v0, _arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->startActivateSim(Lmiui/net/ICloudManagerResponse;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:Lmiui/net/ICloudManagerResponse;
    :sswitch_c
    const-string v5, "miui.net.ICloudManagerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lmiui/net/ICloudManagerResponse$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/ICloudManagerResponse;

    move-result-object v0

    .line 175
    .restart local v0       #_arg0:Lmiui/net/ICloudManagerResponse;
    invoke-virtual {p0, v0}, Lmiui/net/ICloudManagerService$Stub;->getActivatedSimUser(Lmiui/net/ICloudManagerResponse;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
