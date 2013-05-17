.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0xd

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x37

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x19

.field static final TRANSACTION_disableDataConnectivity:I = 0x21

.field static final TRANSACTION_disableLocationUpdates:I = 0x17

.field static final TRANSACTION_disableQos:I = 0x1b

.field static final TRANSACTION_enableApnType:I = 0x18

.field static final TRANSACTION_enableDataConnectivity:I = 0x20

.field static final TRANSACTION_enableLocationUpdates:I = 0x16

.field static final TRANSACTION_enableQos:I = 0x1a

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_getActivePhoneType:I = 0x28

.field static final TRANSACTION_getAllCellInfo:I = 0x33

.field static final TRANSACTION_getCallState:I = 0x25

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x29

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x2a

.field static final TRANSACTION_getCdmaEriText:I = 0x2b

.field static final TRANSACTION_getCellLocation:I = 0x23

.field static final TRANSACTION_getDataActivity:I = 0x26

.field static final TRANSACTION_getDataState:I = 0x27

.field static final TRANSACTION_getIccPin1RetryCount:I = 0x30

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x31

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x24

.field static final TRANSACTION_getNetworkType:I = 0x2e

.field static final TRANSACTION_getQosStatus:I = 0x1f

.field static final TRANSACTION_getVoiceMessageCount:I = 0x2d

.field static final TRANSACTION_handlePinMmi:I = 0x12

.field static final TRANSACTION_hasIccCard:I = 0x2f

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x22

.field static final TRANSACTION_isIccInvalidCard:I = 0x32

.field static final TRANSACTION_isIdle:I = 0xa

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isRadioOn:I = 0xb

.field static final TRANSACTION_isRinging:I = 0x9

.field static final TRANSACTION_isSimPinEnabled:I = 0xc

.field static final TRANSACTION_modifyQos:I = 0x1c

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x2c

.field static final TRANSACTION_openIccLogicalChannel:I = 0x36

.field static final TRANSACTION_resumeQos:I = 0x1e

.field static final TRANSACTION_setDataReadinessChecks:I = 0x38

.field static final TRANSACTION_setRadio:I = 0x14

.field static final TRANSACTION_showCallScreen:I = 0x3

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x4

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0xe

.field static final TRANSACTION_supplyPinReportResult:I = 0x10

.field static final TRANSACTION_supplyPuk:I = 0xf

.field static final TRANSACTION_supplyPukReportResult:I = 0x11

.field static final TRANSACTION_suspendQos:I = 0x1d

.field static final TRANSACTION_toggleRadioOnOff:I = 0x13

.field static final TRANSACTION_transmitIccBasicChannel:I = 0x35

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x34

.field static final TRANSACTION_updateServiceLocation:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 585
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :sswitch_0
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v8

    .line 74
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    .end local v8           #_result:Z
    :sswitch_4
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 83
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v8

    .line 84
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v8, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 85
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 90
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_5
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v8

    .line 92
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v8, :cond_3

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 98
    .end local v8           #_result:Z
    :sswitch_6
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 105
    :sswitch_7
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 112
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v8

    .line 114
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v8, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 120
    .end local v8           #_result:Z
    :sswitch_9
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v8

    .line 122
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 123
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 128
    .end local v8           #_result:Z
    :sswitch_a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v8

    .line 130
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 131
    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    .line 136
    .end local v8           #_result:Z
    :sswitch_b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v8

    .line 138
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 139
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 144
    .end local v8           #_result:Z
    :sswitch_c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v8

    .line 146
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v8, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 147
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 152
    .end local v8           #_result:Z
    :sswitch_d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 159
    :sswitch_e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v8

    .line 163
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 164
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 169
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 175
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v8, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 181
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_10
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)I

    move-result v8

    .line 185
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 191
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_11
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 197
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 203
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_12
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v8

    .line 207
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v8, :cond_b

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :cond_b
    const/4 v0, 0x0

    goto :goto_c

    .line 213
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_13
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    :sswitch_14
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 223
    .local v1, _arg0:Z
    :goto_d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v8

    .line 224
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 222
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 225
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 230
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_15
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 237
    :sswitch_16
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 244
    :sswitch_17
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 251
    :sswitch_18
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v8

    .line 255
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 261
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_19
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v8

    .line 265
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 271
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_1a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 274
    sget-object v0, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec;

    .line 280
    .local v1, _arg0:Lcom/android/internal/telephony/QosSpec;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I

    move-result v8

    .line 282
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 277
    .end local v1           #_arg0:Lcom/android/internal/telephony/QosSpec;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v8           #_result:I
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/android/internal/telephony/QosSpec;
    goto :goto_f

    .line 288
    .end local v1           #_arg0:Lcom/android/internal/telephony/QosSpec;
    :sswitch_1b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 291
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableQos(I)I

    move-result v8

    .line 292
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 298
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_1c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 302
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 303
    sget-object v0, Lcom/android/internal/telephony/QosSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/QosSpec;

    .line 308
    .local v2, _arg1:Lcom/android/internal/telephony/QosSpec;
    :goto_10
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I

    move-result v8

    .line 309
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 306
    .end local v2           #_arg1:Lcom/android/internal/telephony/QosSpec;
    .end local v8           #_result:I
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/internal/telephony/QosSpec;
    goto :goto_10

    .line 315
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/android/internal/telephony/QosSpec;
    :sswitch_1d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->suspendQos(I)I

    move-result v8

    .line 319
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 325
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_1e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->resumeQos(I)I

    move-result v8

    .line 329
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 335
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_1f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getQosStatus(I)I

    move-result v8

    .line 339
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 345
    .end local v1           #_arg0:I
    .end local v8           #_result:I
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v8

    .line 347
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 348
    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 353
    .end local v8           #_result:Z
    :sswitch_21
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v8

    .line 355
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 356
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

    .line 361
    .end local v8           #_result:Z
    :sswitch_22
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v8

    .line 363
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v8, :cond_12

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 364
    :cond_12
    const/4 v0, 0x0

    goto :goto_13

    .line 369
    .end local v8           #_result:Z
    :sswitch_23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v8

    .line 371
    .local v8, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v8, :cond_13

    .line 373
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v0, 0x1

    invoke-virtual {v8, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 379
    :goto_14
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 377
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 383
    .end local v8           #_result:Landroid/os/Bundle;
    :sswitch_24
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v10

    .line 385
    .local v10, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 387
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 391
    .end local v10           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_25
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v8

    .line 393
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 399
    .end local v8           #_result:I
    :sswitch_26
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v8

    .line 401
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 407
    .end local v8           #_result:I
    :sswitch_27
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v8

    .line 409
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 415
    .end local v8           #_result:I
    :sswitch_28
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v8

    .line 417
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 423
    .end local v8           #_result:I
    :sswitch_29
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v8

    .line 425
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 431
    .end local v8           #_result:I
    :sswitch_2a
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v8

    .line 433
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    .end local v8           #_result:I
    :sswitch_2b
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v8

    .line 441
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 447
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_2c
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v8

    .line 449
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    if-eqz v8, :cond_14

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 450
    :cond_14
    const/4 v0, 0x0

    goto :goto_15

    .line 455
    .end local v8           #_result:Z
    :sswitch_2d
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v8

    .line 457
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 463
    .end local v8           #_result:I
    :sswitch_2e
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v8

    .line 465
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 471
    .end local v8           #_result:I
    :sswitch_2f
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v8

    .line 473
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v8, :cond_15

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 474
    :cond_15
    const/4 v0, 0x0

    goto :goto_16

    .line 479
    .end local v8           #_result:Z
    :sswitch_30
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getIccPin1RetryCount()I

    move-result v8

    .line 481
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 487
    .end local v8           #_result:I
    :sswitch_31
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v8

    .line 489
    .restart local v8       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 495
    .end local v8           #_result:I
    :sswitch_32
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIccInvalidCard()Z

    move-result v8

    .line 497
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v8, :cond_16

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 498
    :cond_16
    const/4 v0, 0x0

    goto :goto_17

    .line 503
    .end local v8           #_result:Z
    :sswitch_33
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 505
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 507
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 511
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_34
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 515
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 517
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 519
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 521
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 523
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 525
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 526
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 527
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 533
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 537
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 539
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 541
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 543
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 545
    .restart local v5       #_arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 546
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 547
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 553
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_36
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v8

    .line 557
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 563
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:I
    :sswitch_37
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v8

    .line 567
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v8, :cond_17

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 568
    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    .line 573
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_38
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    .line 577
    .local v1, _arg0:Z
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    .line 579
    .local v2, _arg1:Z
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v3, 0x1

    .line 580
    .local v3, _arg2:Z
    :goto_1b
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataReadinessChecks(ZZZ)V

    .line 581
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 575
    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 577
    .restart local v1       #_arg0:Z
    :cond_19
    const/4 v2, 0x0

    goto :goto_1a

    .line 579
    .restart local v2       #_arg1:Z
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 45
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
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
