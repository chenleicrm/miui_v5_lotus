.class public Lmiui/net/CloudManager;
.super Ljava/lang/Object;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/net/CloudManager$AsyncFuture;,
        Lmiui/net/CloudManager$ConnectivityResumedReceiver;,
        Lmiui/net/CloudManager$PhoneInfo;,
        Lmiui/net/CloudManager$DevSettingName;,
        Lmiui/net/CloudManager$CloudManagerFuture;,
        Lmiui/net/CloudManager$CmTask;
    }
.end annotation


# static fields
.field public static final ACTIVATE_STATUS_ACTIVATED:I = 0x2

.field public static final ACTIVATE_STATUS_ACTIVATING:I = 0x1

.field public static final ACTIVATE_STATUS_SIM_CHANGED:I = 0x5

.field public static final ACTIVATE_STATUS_SMS_SENT:I = 0x4

.field public static final ACTIVATE_STATUS_UNACTIVATED:I = 0x3

.field private static final CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/telephony/CarrierSelector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field public static final DEVICE_INFO_TOKEN:Ljava/lang/String; = "deviceinfo"

.field public static final ERROR_CODE_ACTIVATE_TIMEOUT:I = 0x2

.field public static final ERROR_CODE_NO_ACCOUNT:I = 0x3

.field public static final ERROR_CODE_SEND_SMS_FAILURE:I = 0x1

.field public static final ERROR_INVALID_CREDENTIAL:I = 0x6

.field public static final ERROR_INVALID_RESPONSE:I = 0x5

.field public static final ERROR_IO:I = 0x4

.field public static final ERROR_SIM_NOT_ACTIVATED:I = 0x7

.field private static final INT_0:Ljava/lang/Integer; = null

.field public static final KEY_ACTIVATE_PHONE:Ljava/lang/String; = "activate_phone"

.field public static final KEY_ACTIVATE_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final KEY_ACTIVATE_STATUS:Ljava/lang/String; = "activate_status"

.field public static final KEY_FIND_DEVICE_TOKEN:Ljava/lang/String; = "find_device_token"

.field public static final KEY_PASSTOKEN:Ljava/lang/String; = "pass_token"

.field public static final KEY_PHONE_TICKET:Ljava/lang/String; = "phone_ticket"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_SECONDARY_SYNC_ON:Ljava/lang/String; = "secondary_sync_on"

.field public static final KEY_SIM_USER_ID:Ljava/lang/String; = "sim_user_id"

.field public static final KEY_SMS_GATEWAY_CHINA_MOBILE:Ljava/lang/String; = "sms_gw_china_mobile"

.field public static final KEY_SMS_GATEWAY_CHINA_TELECOM:Ljava/lang/String; = "sms_gw_china_telecom"

.field public static final KEY_SMS_GATEWAY_CHINA_UNICOM:Ljava/lang/String; = "sms_gw_china_unicom"

.field public static final KEY_SMS_GATEWAY_GLOBAL:Ljava/lang/String; = "sms_gw_global"

.field public static final KEY_USER_SECURITY:Ljava/lang/String; = "user_security"

.field public static final KEY_USER_TOKEN:Ljava/lang/String; = "user_token"

.field public static final NOTIFICATION_ACTIVATE_ERROR:I = 0x10000001

.field public static final SMS_GW_CM:Ljava/lang/String; = "106571203855788"

.field public static final SMS_GW_CT:Ljava/lang/String; = "10659057100335678"

.field public static final SMS_GW_CU:Ljava/lang/String; = "106550200096355788"

.field public static final SMS_GW_GLOBAL:Ljava/lang/String; = "+447786209730"

.field private static final TAG:Ljava/lang/String; = "CloudManager"

.field public static final URL_ACCOUNT_API_V2_BASE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/v2"

.field public static final URL_ACCOUNT_BASE:Ljava/lang/String; = "https://account.xiaomi.com/pass"

.field public static final URL_ACCOUNT_SAFE_API_BASE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/v2/safe"

.field public static final URL_ACOUNT_API_BASE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass"

.field public static final URL_CALL_LOG_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_CONTACT_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_DEV_BASE:Ljava/lang/String; = "http://api.device.xiaomi.net"

.field public static final URL_DEV_SETTING:Ljava/lang/String; = "/udi/v1/user/%s/device/%s/setting"

.field public static final URL_FIND_DEVICE_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_GALLERY_BASE:Ljava/lang/String; = "http://galleryapi.micloud.xiaomi.net"

.field public static final URL_MMS_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_NOTE_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field public static final URL_RICH_MEDIA_BASE:Ljava/lang/String; = "http://fileapi.micloud.xiaomi.net"

.field public static final URL_WIFI_BASE:Ljava/lang/String; = "http://api.micloud.xiaomi.net"

.field private static mUserAgent:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lmiui/telephony/CarrierSelector;

    invoke-direct {v0}, Lmiui/telephony/CarrierSelector;-><init>()V

    sput-object v0, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    .line 199
    sget-object v0, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_MOBILE:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "106571203855788"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_UNICOM:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "106550200096355788"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 203
    sget-object v0, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_TELECOM:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "10659057100335678"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v1, Lmiui/telephony/CarrierSelector$CARRIER;->DEFAULT:Lmiui/telephony/CarrierSelector$CARRIER;

    const-string v2, "+447786209730"

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/net/CloudManager;->INT_0:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lmiui/net/CloudManager;->mContext:Landroid/content/Context;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lmiui/net/CloudManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/net/CloudManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static convertDevSettingValues(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 794
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 795
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 796
    .local v5, name:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lmiui/util/ObjectUtils;->convertObjectToJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 797
    .local v6, value:Ljava/lang/Object;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 799
    .local v4, jobj:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "name"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v7, "value"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 801
    :catch_0
    move-exception v1

    .line 802
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 806
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 840
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 841
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 842
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 845
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lmiui/net/CloudManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 220
    new-instance v0, Lmiui/net/CloudManager;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-static {p0}, Lmiui/telephony/ExtraTelephonyManager;->blockingGetDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Lmiui/net/CloudCoder;->hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResourceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/telephony/exception/IllegalDeviceException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    sget-object v1, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    .local v0, sb:Ljava/lang/StringBuilder;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v1, "; MIUI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    .line 631
    :cond_0
    sget-object v1, Lmiui/net/CloudManager;->mUserAgent:Ljava/lang/String;

    return-object v1
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 833
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 835
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 836
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSimSupported(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 678
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 680
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, mccmnc:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return v4

    .line 684
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    .line 685
    const-string v4, "CloudManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported mcc mnc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 686
    goto :goto_0

    .line 688
    :cond_2
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, mcc:Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, mnc:Ljava/lang/String;
    sget-object v6, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    invoke-virtual {v6, v0, v2}, Lmiui/telephony/CarrierSelector;->selectValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public static selectSmsGateway(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x3

    .line 635
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 637
    .local v10, tm:Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v0

    .line 639
    .local v0, cloudMgr:Lmiui/net/CloudManager;
    :try_start_0
    invoke-virtual {v0}, Lmiui/net/CloudManager;->getSmsGateway()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v11

    invoke-interface {v11}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 640
    .local v9, result:Landroid/os/Bundle;
    const-string v11, "sms_gw_china_mobile"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, cm:Ljava/lang/String;
    const-string v11, "sms_gw_china_unicom"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, cu:Ljava/lang/String;
    const-string v11, "sms_gw_china_telecom"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, ct:Ljava/lang/String;
    const-string v11, "sms_gw_global"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, global:Ljava/lang/String;
    sget-object v11, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v12, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_MOBILE:Lmiui/telephony/CarrierSelector$CARRIER;

    invoke-virtual {v11, v12, v1}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 649
    sget-object v11, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v12, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_UNICOM:Lmiui/telephony/CarrierSelector$CARRIER;

    invoke-virtual {v11, v12, v3}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 650
    sget-object v11, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v12, Lmiui/telephony/CarrierSelector$CARRIER;->CHINA_TELECOM:Lmiui/telephony/CarrierSelector$CARRIER;

    invoke-virtual {v11, v12, v2}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V

    .line 652
    sget-object v11, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    sget-object v12, Lmiui/telephony/CarrierSelector$CARRIER;->DEFAULT:Lmiui/telephony/CarrierSelector$CARRIER;

    invoke-virtual {v11, v12, v5}, Lmiui/telephony/CarrierSelector;->register(Lmiui/telephony/CarrierSelector$CARRIER;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    .end local v1           #cm:Ljava/lang/String;
    .end local v2           #ct:Ljava/lang/String;
    .end local v3           #cu:Ljava/lang/String;
    .end local v5           #global:Ljava/lang/String;
    .end local v9           #result:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    .line 661
    .local v7, mccmnc:Ljava/lang/String;
    const-string v11, "CloudManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "device mccmnc:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-ge v11, v12, :cond_1

    .line 664
    :cond_0
    const-string v11, "CloudManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "illegal mcc mnc: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v11, 0x0

    .line 669
    :goto_1
    return-object v11

    .line 653
    .end local v7           #mccmnc:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 654
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "CloudManager"

    const-string v12, "error when get sms gateway"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 667
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #mccmnc:Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v7, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, mcc:Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 669
    .local v8, mnc:Ljava/lang/String;
    sget-object v11, Lmiui/net/CloudManager;->CARRIER_SELECTOR:Lmiui/telephony/CarrierSelector;

    const/4 v12, 0x1

    invoke-virtual {v11, v6, v8, v12}, Lmiui/telephony/CarrierSelector;->selectValue(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1
.end method

.method public static uploadDeviceInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 14
    .parameter "context"
    .parameter "userId"
    .parameter "token"
    .parameter "security"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/AuthenticationFailureException;
        }
    .end annotation

    .prologue
    .line 751
    .local p4, devSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Lmiui/net/CloudManager;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, devId:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://api.device.xiaomi.net"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/udi/v1/user/%s/device/%s/setting"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 759
    .local v9, url:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 760
    .local v3, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "serviceToken"

    move-object/from16 v0, p2

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string v10, "userId"

    invoke-interface {v3, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 764
    .local v7, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p4 .. p4}, Lmiui/net/CloudManager;->convertDevSettingValues(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    .line 765
    .local v2, content:Lorg/json/JSONArray;
    const-string v10, "content"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-static {v9, v7, v3, v10, v0}, Lmiui/net/SecureRequest;->postAsMap(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/net/SimpleRequest$MapContent;

    move-result-object v8

    .line 768
    .local v8, resp:Lmiui/net/SimpleRequest$MapContent;
    const-string v10, "code"

    invoke-virtual {v8, v10}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 769
    .local v1, code:Ljava/lang/Object;
    const-string v10, "description"

    invoke-virtual {v8, v10}, Lmiui/net/SimpleRequest$MapContent;->getFromBody(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 770
    .local v4, description:Ljava/lang/Object;
    sget-object v10, Lmiui/net/CloudManager;->INT_0:Ljava/lang/Integer;

    invoke-virtual {v10, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 771
    const/4 v10, 0x1

    .line 788
    .end local v1           #code:Ljava/lang/Object;
    .end local v2           #content:Lorg/json/JSONArray;
    .end local v3           #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #description:Ljava/lang/Object;
    .end local v5           #devId:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #resp:Lmiui/net/SimpleRequest$MapContent;
    .end local v9           #url:Ljava/lang/String;
    :goto_0
    return v10

    .line 773
    .restart local v1       #code:Ljava/lang/Object;
    .restart local v2       #content:Lorg/json/JSONArray;
    .restart local v3       #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #description:Ljava/lang/Object;
    .restart local v5       #devId:Ljava/lang/String;
    .restart local v7       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8       #resp:Lmiui/net/SimpleRequest$MapContent;
    .restart local v9       #url:Ljava/lang/String;
    :cond_0
    const-string v10, "CloudManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed upload dev settings, code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/CipherException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lmiui/telephony/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_4

    .line 788
    .end local v1           #code:Ljava/lang/Object;
    .end local v2           #content:Lorg/json/JSONArray;
    .end local v3           #cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #description:Ljava/lang/Object;
    .end local v5           #devId:Ljava/lang/String;
    .end local v7           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #resp:Lmiui/net/SimpleRequest$MapContent;
    .end local v9           #url:Ljava/lang/String;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v6

    .line 777
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 778
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 779
    .local v6, e:Lmiui/net/exception/AccessDeniedException;
    invoke-virtual {v6}, Lmiui/net/exception/AccessDeniedException;->printStackTrace()V

    goto :goto_1

    .line 780
    .end local v6           #e:Lmiui/net/exception/AccessDeniedException;
    :catch_2
    move-exception v6

    .line 781
    .local v6, e:Lmiui/net/exception/InvalidResponseException;
    invoke-virtual {v6}, Lmiui/net/exception/InvalidResponseException;->printStackTrace()V

    goto :goto_1

    .line 782
    .end local v6           #e:Lmiui/net/exception/InvalidResponseException;
    :catch_3
    move-exception v6

    .line 783
    .local v6, e:Lmiui/net/exception/CipherException;
    invoke-virtual {v6}, Lmiui/net/exception/CipherException;->printStackTrace()V

    goto :goto_1

    .line 784
    .end local v6           #e:Lmiui/net/exception/CipherException;
    :catch_4
    move-exception v6

    .line 785
    .local v6, e:Lmiui/telephony/exception/IllegalDeviceException;
    invoke-virtual {v6}, Lmiui/telephony/exception/IllegalDeviceException;->printStackTrace()V

    goto :goto_1
.end method

.method public static waitUntilNetworkConnected(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {p0}, Lmiui/net/CloudManager;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 812
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lmiui/net/CloudManager$ConnectivityResumedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;-><init>(Landroid/content/Context;Lmiui/net/CloudManager$1;)V

    .line 816
    .local v1, r:Lmiui/net/CloudManager$ConnectivityResumedReceiver;
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    const-string v2, "CloudManager"

    const-string v3, "waiting network..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :try_start_0
    invoke-virtual {v1}, Lmiui/net/CloudManager$ConnectivityResumedReceiver;->await()V

    .line 823
    const-string v2, "CloudManager"

    const-string v3, "network is OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 830
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v2

    .line 828
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw v2
.end method


# virtual methods
.method public cancelNotification(I)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "notificationId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lmiui/net/CloudManager$8;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$8;-><init>(Lmiui/net/CloudManager;I)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$8;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public checkUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 2
    .parameter "userId"
    .parameter "password"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    new-instance v0, Lmiui/net/CloudManager$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/net/CloudManager$10;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$10;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivateStatus()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lmiui/net/CloudManager$7;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$7;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$7;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedPhoneNumber()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Lmiui/net/CloudManager$1;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$1;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$1;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getActivatedSimUser()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lmiui/net/CloudManager$12;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$12;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$12;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getFindDeviceToken()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lmiui/net/CloudManager$6;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$6;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$6;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSimAuthToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lmiui/net/CloudManager$9;

    invoke-direct {v0, p0, p1}, Lmiui/net/CloudManager$9;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$9;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSmsGateway()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lmiui/net/CloudManager$3;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$3;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$3;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getSubSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lmiui/net/CloudManager$2;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$2;-><init>(Lmiui/net/CloudManager;Landroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$2;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getUserSecurity()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Lmiui/net/CloudManager$4;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$4;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$4;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public invalidateUserSecurity(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .parameter "token"
    .parameter "security"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Lmiui/net/CloudManager$5;

    invoke-direct {v0, p0, p1, p2}, Lmiui/net/CloudManager$5;-><init>(Lmiui/net/CloudManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$5;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public startActivateSim()Lmiui/net/CloudManager$CloudManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/net/CloudManager$CloudManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Lmiui/net/CloudManager$11;

    invoke-direct {v0, p0}, Lmiui/net/CloudManager$11;-><init>(Lmiui/net/CloudManager;)V

    invoke-virtual {v0}, Lmiui/net/CloudManager$11;->start()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v0

    return-object v0
.end method
