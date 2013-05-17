.class public Lmiui/provider/dataupdate/AntiSpamUtils;
.super Ljava/lang/Object;
.source "AntiSpamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/dataupdate/AntiSpamUtils$CatTitleLanguage;,
        Lmiui/provider/dataupdate/AntiSpamUtils$QueryJson;,
        Lmiui/provider/dataupdate/AntiSpamUtils$Url;
    }
.end annotation


# static fields
.field public static final AES_SECRET_KEY:Ljava/lang/String; = "d101b17c77ff93cs"

.field private static final CLOUD_ANTISPAM_CAT_ID_COLUMN:I = 0x0

.field private static final CLOUD_ANTISPAM_CAT_TITLE_COLUMN:I = 0x1

.field private static final CLOUD_ANTISPAM_COUNT:I = 0x2

.field private static final CLOUD_ANTISPAM_PROJECTION:[Ljava/lang/String; = null

.field private static final CLOUD_ANTISPAM_PROVIDER:I = 0x3

.field public static final CLOUD_PROVIDER_MIUI:I = 0x0

.field public static final CLOUD_PROVIDER_SOUGOU:I = 0x1

.field private static final MARKEDNUMBER_CAT_ID_COLUMN:I = 0x0

.field private static final MARKEDNUMBER_CAT_TITLE_COLUMN:I = 0x1

.field private static final MARKEDNUMBER_COUNT_COLUMN:I = 0x3

.field private static final MARKEDNUMBER_JOIN_TITLE_COLUMN:I = 0x4

.field private static final MARKEDNUMBER_PROJECTION:[Ljava/lang/String; = null

.field private static final MARKEDNUMBER_SOURCE_COLUMN:I = 0x2

.field private static final MARKEDNUMBER_TITLE_TYPE_COLUMN:I = 0x5

.field public static final PROVIDER_114:I = 0x67

.field public static final PROVIDER_LOCAL:I = 0x64

.field public static final PROVIDER_MIUI:I = 0x65

.field public static final PROVIDER_SOUGOU:I = 0x66

.field public static final TAG:Ljava/lang/String; = "AntiSpamUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cat_id"

    aput-object v1, v0, v3

    const-string v1, "cat_title"

    aput-object v1, v0, v4

    const-string v1, "source"

    aput-object v1, v0, v5

    const-string v1, "count"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/provider/dataupdate/AntiSpamUtils;->MARKEDNUMBER_PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "cat_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "count"

    aput-object v1, v0, v5

    const-string v1, "provider"

    aput-object v1, v0, v6

    sput-object v0, Lmiui/provider/dataupdate/AntiSpamUtils;->CLOUD_ANTISPAM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertProvider(I)I
    .locals 1
    .parameter "provider"

    .prologue
    if-nez p0, :cond_0

    const/16 p0, 0x65

    :goto_0
    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0x66

    goto :goto_0

    :cond_1
    const/16 p0, 0x65

    goto :goto_0
.end method

.method private static getConnectResultData(Ljava/net/URL;)Lorg/json/JSONObject;
    .locals 12
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .local v4, json:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .local v2, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .local v7, responseCode:I
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .end local v6           #line:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #responseCode:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v3, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    move-object v10, v4

    :goto_3
    return-object v10

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #responseCode:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4           #json:Lorg/json/JSONObject;
    .local v5, json:Lorg/json/JSONObject;
    :try_start_3
    const-string v10, "code"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v8

    .local v8, resultCode:I
    if-eqz v8, :cond_2

    const/4 v4, 0x0

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v10, v4

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_3

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #responseCode:I
    .end local v8           #resultCode:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .local v3, e:Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v7       #responseCode:I
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v3

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #responseCode:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #responseCode:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v8       #resultCode:I
    :cond_2
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getConnectResultDataFrom114(Ljava/net/URL;)Lorg/json/JSONObject;
    .locals 13
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .local v3, data:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .local v2, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .local v7, responseCode:I
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .end local v6           #line:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #responseCode:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v4, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    move-object v10, v3

    :goto_3
    return-object v10

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #responseCode:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v5, json:Lorg/json/JSONObject;
    const-string v10, "response"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "rows"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .local v8, resultRows:I
    if-nez v8, :cond_2

    const-string v10, "AntiSpamUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "query number error from 114: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "error"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v10, 0x0

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #responseCode:I
    .end local v8           #resultRows:I
    .end local v9           #sb:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    .local v4, e:Lorg/json/JSONException;
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v7       #responseCode:I
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v7           #responseCode:I
    :catch_3
    move-exception v4

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #conn:Ljava/net/HttpURLConnection;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #responseCode:I
    .restart local v8       #resultRows:I
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_2
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lmiui/util/CoderUtils;->encodeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isCloudAntispamAvailable()Z
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCloudAntispamEnable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {}, Lmiui/provider/dataupdate/AntiSpamUtils;->isCloudAntispamAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/provider/ExtraSettings$System;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighSpeedDataConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .local v2, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result v1

    .local v1, netWorkClass:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v3, 0x1

    .end local v1           #netWorkClass:I
    :cond_0
    return v3
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_0

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

.method private static queryFrom114(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;
    .locals 19
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v16, 0x0

    .local v16, json:Lorg/json/JSONObject;
    invoke-static/range {p0 .. p0}, Lmiui/provider/dataupdate/AntiSpamUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .local v14, imei:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v17

    .local v17, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v10

    .local v10, areaCode:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v13

    .local v13, effectiveNumber:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_0
    :try_start_0
    new-instance v18, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://116.228.55.155:6060/dataquery/query?sid=801&restype=json&tel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "371a729d6b9b71d9a56531dca9842274735dda605b7d26c4d99b922929b7c30ce06be0fd58a71500"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v18, url:Ljava/net/URL;
    invoke-static/range {v18 .. v18}, Lmiui/provider/dataupdate/AntiSpamUtils;->getConnectResultDataFrom114(Ljava/net/URL;)Lorg/json/JSONObject;

    move-result-object v16

    if-eqz v16, :cond_3

    const-string v1, "docs"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .local v11, data:Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .local v15, item:Lorg/json/JSONObject;
    const-string v1, "name"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "province"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, province:Ljava/lang/String;
    const-string v5, ""

    .local v5, city:Ljava/lang/String;
    const-string v1, "city"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "city"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v1, "addr"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, addr:Ljava/lang/String;
    const-string v1, "type"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, type:Ljava/lang/String;
    const-string v1, "coord"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, coord:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60c023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, tag:Ljava/lang/String;
    new-instance v1, Lmiui/provider/dataupdate/MarkedNumberItem;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lmiui/provider/dataupdate/MarkedNumberItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #name:Ljava/lang/String;
    .end local v4           #province:Ljava/lang/String;
    .end local v5           #city:Ljava/lang/String;
    .end local v6           #addr:Ljava/lang/String;
    .end local v7           #type:Ljava/lang/String;
    .end local v8           #coord:Ljava/lang/String;
    .end local v9           #tag:Ljava/lang/String;
    .end local v11           #data:Lorg/json/JSONArray;
    .end local v15           #item:Lorg/json/JSONObject;
    .end local v18           #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .restart local v3       #name:Ljava/lang/String;
    .restart local v11       #data:Lorg/json/JSONArray;
    .restart local v15       #item:Lorg/json/JSONObject;
    .restart local v18       #url:Ljava/net/URL;
    :cond_2
    const-string v1, "AntiSpamUtils"

    const-string v2, "no valid incoming number query result from 114."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #name:Ljava/lang/String;
    .end local v11           #data:Lorg/json/JSONArray;
    .end local v15           #item:Lorg/json/JSONObject;
    .end local v18           #url:Ljava/net/URL;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v11       #data:Lorg/json/JSONArray;
    .restart local v18       #url:Ljava/net/URL;
    :cond_4
    const-string v1, "AntiSpamUtils"

    const-string v2, "the length of data in result is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v11           #data:Lorg/json/JSONArray;
    .end local v18           #url:Ljava/net/URL;
    :catch_0
    move-exception v12

    .local v12, e:Ljava/net/MalformedURLException;
    invoke-virtual {v12}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .end local v12           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v12

    .local v12, e:Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static queryFromCloud(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    invoke-static {p0}, Lmiui/provider/dataupdate/AntiSpamUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lmiui/provider/dataupdate/AntiSpamUtils;->isHighSpeedDataConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {p0, p1}, Lmiui/provider/dataupdate/AntiSpamUtils;->queryFromMiui(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;

    move-result-object v0

    .local v0, item:Lmiui/provider/dataupdate/MarkedNumberItem;
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lmiui/provider/dataupdate/AntiSpamUtils;->queryFrom114(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "AntiSpamUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCatTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lmiui/provider/dataupdate/MarkedNumberItem;->getProvider()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryFromLocal(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;
    .locals 30
    .parameter "context"
    .parameter "number"

    .prologue
    const/16 v25, 0x0

    .local v25, item:Lmiui/provider/dataupdate/MarkedNumberItem;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lmiui/provider/dataupdate/AntiSpamUtils;->MARKEDNUMBER_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .local v23, cursor:Landroid/database/Cursor;
    if-eqz v23, :cond_2

    :try_start_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .local v13, catId:I
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, catTitle:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .local v28, titleString:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .local v15, count:I
    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .local v29, type:I
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    if-lez v13, :cond_0

    move-object/from16 v4, v28

    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_0

    :try_start_1
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v28}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v27, titleJSON:Lorg/json/JSONObject;
    if-eqz v27, :cond_0

    const-string v3, "zh_CN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v26

    .local v26, lg:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .end local v26           #lg:Ljava/lang/String;
    .end local v27           #titleJSON:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v3, 0x2

    :try_start_2
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, provider:I
    const/16 v3, 0x64

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    const/16 v16, 0x64

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v3, 0x67

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x60c023a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, tag:Ljava/lang/String;
    new-instance v2, Lmiui/provider/dataupdate/MarkedNumberItem;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v10}, Lmiui/provider/dataupdate/MarkedNumberItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4           #catTitle:Ljava/lang/String;
    .end local v10           #tag:Ljava/lang/String;
    .end local v13           #catId:I
    .end local v15           #count:I
    .end local v16           #provider:I
    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .end local v28           #titleString:Ljava/lang/String;
    .end local v29           #type:I
    .local v2, item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :goto_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    move-object/from16 v25, v2

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :cond_2
    if-nez v25, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v3, Lmiui/provider/dataupdate/AntiSpam$CloudAntiSpam;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    sget-object v19, Lmiui/provider/dataupdate/AntiSpamUtils;->CLOUD_ANTISPAM_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    if-eqz v23, :cond_8

    :try_start_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .restart local v13       #catId:I
    const-string v4, ""

    .restart local v4       #catTitle:Ljava/lang/String;
    new-instance v27, Lorg/json/JSONObject;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .restart local v27       #titleJSON:Lorg/json/JSONObject;
    if-eqz v27, :cond_3

    const-string v3, "zh_CN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26       #lg:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .end local v26           #lg:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .restart local v15       #count:I
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .restart local v16       #provider:I
    const/4 v10, 0x0

    .restart local v10       #tag:Ljava/lang/String;
    const/16 v3, 0x66

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x60c0239

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_4
    new-instance v2, Lmiui/provider/dataupdate/MarkedNumberItem;

    move-object v11, v2

    move-object/from16 v12, p1

    move-object v14, v4

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lmiui/provider/dataupdate/MarkedNumberItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4           #catTitle:Ljava/lang/String;
    .end local v10           #tag:Ljava/lang/String;
    .end local v13           #catId:I
    .end local v15           #count:I
    .end local v16           #provider:I
    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .end local v27           #titleJSON:Lorg/json/JSONObject;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :goto_3
    return-object v2

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v4       #catTitle:Ljava/lang/String;
    .restart local v13       #catId:I
    .restart local v15       #count:I
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v28       #titleString:Ljava/lang/String;
    .restart local v29       #type:I
    :catch_0
    move-exception v24

    .local v24, e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .end local v4           #catTitle:Ljava/lang/String;
    .end local v13           #catId:I
    .end local v15           #count:I
    .end local v24           #e:Lorg/json/JSONException;
    .end local v28           #titleString:Ljava/lang/String;
    .end local v29           #type:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v4       #catTitle:Ljava/lang/String;
    .restart local v13       #catId:I
    .restart local v15       #count:I
    .restart local v16       #provider:I
    .restart local v28       #titleString:Ljava/lang/String;
    .restart local v29       #type:I
    :cond_5
    const/16 v3, 0x66

    move/from16 v0, v16

    if-ne v0, v3, :cond_6

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x60c0239

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #tag:Ljava/lang/String;
    new-instance v2, Lmiui/provider/dataupdate/MarkedNumberItem;

    move-object v11, v2

    move-object/from16 v12, p1

    move-object v14, v4

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lmiui/provider/dataupdate/MarkedNumberItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    goto/16 :goto_1

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .end local v10           #tag:Ljava/lang/String;
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :cond_6
    new-instance v2, Lmiui/provider/dataupdate/MarkedNumberItem;

    const/16 v17, 0x0

    move-object v11, v2

    move-object/from16 v12, p1

    move-object v14, v4

    invoke-direct/range {v11 .. v17}, Lmiui/provider/dataupdate/MarkedNumberItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    goto/16 :goto_1

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .end local v4           #catTitle:Ljava/lang/String;
    .end local v13           #catId:I
    .end local v15           #count:I
    .end local v16           #provider:I
    .end local v28           #titleString:Ljava/lang/String;
    .end local v29           #type:I
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :catch_1
    move-exception v24

    .restart local v24       #e:Lorg/json/JSONException;
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    move-object/from16 v2, v25

    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    goto :goto_3

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .end local v24           #e:Lorg/json/JSONException;
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :catchall_1
    move-exception v3

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_7
    move-object/from16 v2, v25

    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    goto :goto_2

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :cond_8
    move-object/from16 v2, v25

    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    goto :goto_3

    .end local v2           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v25       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    :cond_9
    move-object/from16 v2, v25

    .end local v25           #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    .restart local v2       #item:Lmiui/provider/dataupdate/MarkedNumberItem;
    goto/16 :goto_1
.end method

.method private static queryFromMiui(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;
    .locals 14
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v10, 0x0

    .local v10, json:Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p0}, Lmiui/provider/dataupdate/AntiSpamUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .local v9, imei:Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.comm.miui.com/spbook/atd/noInfo?no="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .local v12, url:Ljava/net/URL;
    invoke-static {v12}, Lmiui/provider/dataupdate/AntiSpamUtils;->getConnectResultData(Ljava/net/URL;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v0, "data"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, preData:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    const-string v0, "d101b17c77ff93cs"

    invoke-static {v11, v0}, Lmiui/util/CoderUtils;->base6AesDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v7, data:Lorg/json/JSONObject;
    const-string v0, "catTitle"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "catId"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, catId:I
    const-string v0, "catTitle"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, catTitle:Ljava/lang/String;
    const-string v0, "count"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, count:I
    const-string v0, "provider"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lmiui/provider/dataupdate/AntiSpamUtils;->convertProvider(I)I

    move-result v5

    .local v5, provider:I
    const/4 v6, 0x0

    .local v6, tag:Ljava/lang/String;
    const/16 v0, 0x66

    if-ne v5, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60c0239

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v0, Lmiui/provider/dataupdate/MarkedNumberItem;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiui/provider/dataupdate/MarkedNumberItem;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    .end local v2           #catId:I
    .end local v3           #catTitle:Ljava/lang/String;
    .end local v4           #count:I
    .end local v5           #provider:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #data:Lorg/json/JSONObject;
    .end local v9           #imei:Ljava/lang/String;
    .end local v11           #preData:Ljava/lang/String;
    .end local v12           #url:Ljava/net/URL;
    :goto_0
    return-object v0

    .restart local v7       #data:Lorg/json/JSONObject;
    .restart local v9       #imei:Ljava/lang/String;
    .restart local v11       #preData:Ljava/lang/String;
    .restart local v12       #url:Ljava/net/URL;
    :cond_1
    const-string v0, "AntiSpamUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no valid incoming number query result:"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v7           #data:Lorg/json/JSONObject;
    .end local v9           #imei:Ljava/lang/String;
    .end local v11           #preData:Ljava/lang/String;
    .end local v12           #url:Ljava/net/URL;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, e:Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .end local v8           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v8

    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveQueryResult(Landroid/content/Context;Lmiui/provider/dataupdate/MarkedNumberItem;Z)V
    .locals 9
    .parameter "context"
    .parameter "item"
    .parameter "isCached"

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    .local v2, number:Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCatTitle()Ljava/lang/String;

    move-result-object v4

    .local v4, title:Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCatId()I

    move-result v1

    .local v1, id:I
    invoke-virtual {p1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getProvider()I

    move-result v3

    .local v3, provider:I
    invoke-virtual {p1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCount()I

    move-result v0

    .local v0, count:I
    if-eqz p2, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "cat_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cat_title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "source"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void

    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .restart local v5       #values:Landroid/content/ContentValues;
    const-string v6, "number"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cat_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cat_title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "source"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lmiui/provider/dataupdate/AntiSpam$MarkedNumber;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
