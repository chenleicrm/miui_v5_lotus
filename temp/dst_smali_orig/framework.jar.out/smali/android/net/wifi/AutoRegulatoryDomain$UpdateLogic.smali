.class final Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
.super Landroid/os/Handler;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/AutoRegulatoryDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateLogic"
.end annotation


# static fields
.field private static final ACTION_HYSTERESIS_TIMER:Ljava/lang/String; = "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

.field private static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "00"

.field public static final EVENT_HYSTERESIS_ALARM:I = 0x0

.field public static final EVENT_START:I = 0x2

.field public static final EVENT_STOP:I = 0x3

.field public static final EVENT_UPDATE:I = 0x1

.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AutoRegulatoryDomain"

.field private static final UPDATE_HYSTERESIS_TIME:I = 0x1b7740


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHysteresisAlarmManager:Landroid/app/AlarmManager;

.field private final mHysteresisIntent:Landroid/app/PendingIntent;

.field private mHysteresisTimerStarted:Z

.field private mLastSetCountryCode:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 4
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    iput-boolean v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    const-string v1, "00"

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    new-instance v1, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic$1;-><init>(Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;)V

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v0, hysteresisIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x5

    iget-object v6, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .local v4, plmn:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .local v5, simState:I
    if-ne v5, v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_0

    const-string v6, "AutoRegulatoryDomain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PLMN = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, mcc:Ljava/lang/String;
    if-eqz v2, :cond_0

    const/16 v6, 0xa

    :try_start_0
    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, mccInteger:I
    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v0           #countryCode:Ljava/lang/String;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mccInteger:I
    .end local v4           #plmn:Ljava/lang/String;
    .end local v5           #simState:I
    :goto_0
    return-object v6

    .restart local v2       #mcc:Ljava/lang/String;
    .restart local v4       #plmn:Ljava/lang/String;
    .restart local v5       #simState:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "AutoRegulatoryDomain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformated mcc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #mcc:Ljava/lang/String;
    .end local v4           #plmn:Ljava/lang/String;
    .end local v5           #simState:I
    :cond_0
    const-string v6, "00"

    goto :goto_0
.end method

.method private setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "force"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    const-string v0, "AutoRegulatoryDomain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regulatory domain changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private startHysteresisTimer()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v2, "AutoRegulatoryDomain"

    const-string v3, "Starting hysteresis timer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long v0, v2, v4

    .local v0, timeout:J
    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iput-boolean v6, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    .end local v0           #timeout:J
    :cond_0
    return-void
.end method

.method private stopHysteresisTimer()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "AutoRegulatoryDomain"

    const-string v1, "Stopping hysteresis timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mHysteresisTimerStarted:Z

    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 2
    .parameter "force"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->setCountryCode(Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->stopHysteresisTimer()V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mLastSetCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->startHysteresisTimer()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .local v1, msgHandled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const-string v3, "AutoRegulatoryDomain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cannot be handled in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_2

    const-string v2, "started"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state. Message discarded!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_0
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v4}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->update(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.sonyericsson.intent.action.HYSTERESIS_TIMER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v4, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :pswitch_1
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->stopHysteresisTimer()V

    iget-object v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v5, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->update(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->mStarted:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, v4}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->update(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "stopped"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
