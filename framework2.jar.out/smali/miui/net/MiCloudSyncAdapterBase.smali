.class public abstract Lmiui/net/MiCloudSyncAdapterBase;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "MiCloudSyncAdapterBase.java"


# static fields
.field public static final ACTION_RESUME_SYNC:Ljava/lang/String; = "com.miui.net.RESUME_SYNC"

.field private static final BAD_REQUEST_LIMIT_PER_DAY:I = 0x64

.field public static final PREF_RESUME_SYNC_TIME:Ljava/lang/String; = "ResumeSyncTime_%s"

.field private static final PREF_TOKEN_EXPIRED_COUNT:Ljava/lang/String; = "TokenExpiredCount_%s"

.field private static final PREF_TOKEN_EXPIRED_DAY:Ljava/lang/String; = "TokenExpiredDay_%s"

.field private static final RESUME_SYNC_INTERVAL:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "MiCloudSyncAdapterBase"


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected final mAuthType:Ljava/lang/String;

.field protected mAuthority:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mExtToken:Lmiui/net/ExtendedAuthToken;

.field protected mExtTokenStr:Ljava/lang/String;

.field protected mNumber:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSyncResult:Landroid/content/SyncResult;

.field protected mTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "autoInitialize"
    .parameter "authType"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 66
    iput-object p1, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/net/MiCloudSyncAdapterBase;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iput-object p3, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private handle5xx()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http 5xx error. Suspending sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct {p0}, Lmiui/net/MiCloudSyncAdapterBase;->suspendSync()V

    .line 212
    return-void
.end method

.method private handleBadRequest()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http bad request error. Suspending sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lmiui/net/MiCloudSyncAdapterBase;->suspendSync()V

    .line 173
    return-void
.end method

.method private handleForbidden()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http forbidden error. Turning off sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v0, 0x60c0131

    invoke-direct {p0, v0}, Lmiui/net/MiCloudSyncAdapterBase;->turnOffSyncAndNotify(I)V

    .line 202
    return-void
.end method

.method private handleNotAcceptable()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "MiCloudSyncAdapterBase"

    const-string v1, "Http not-acceptable error. Turniong off sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v0, 0x60c0132

    invoke-direct {p0, v0}, Lmiui/net/MiCloudSyncAdapterBase;->turnOffSyncAndNotify(I)V

    .line 207
    return-void
.end method

.method private handleUnauthorized()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 176
    const-string v9, "TokenExpiredCount_%s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, prefTokenExpiredCount:Ljava/lang/String;
    const-string v9, "TokenExpiredDay_%s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, prefTokenxpiredDay:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 180
    .local v4, sp:Landroid/content/SharedPreferences;
    const-wide/16 v9, 0x0

    invoke-interface {v4, v3, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 181
    .local v7, tokenExpiredDay:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    div-long v5, v9, v11

    .line 182
    .local v5, today:J
    const/4 v0, 0x0

    .line 183
    .local v0, count:I
    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    .line 184
    invoke-interface {v4, v2, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 187
    const-string v9, "MiCloudSyncAdapterBase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Http unauthorized error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times today."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/16 v9, 0x64

    if-lt v0, v9, :cond_1

    .line 189
    const-string v9, "MiCloudSyncAdapterBase"

    const-string v10, "Http unauthorized error reached limit. Turning off sync."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const v9, 0x60c0134

    invoke-direct {p0, v9}, Lmiui/net/MiCloudSyncAdapterBase;->turnOffSyncAndNotify(I)V

    .line 191
    const/4 v0, 0x0

    .line 193
    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 194
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 196
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method

.method private suspendSync()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 241
    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 243
    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 244
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    add-long v5, v8, v10

    .line 246
    .local v5, resumeTime:J
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.miui.net.RESUME_SYNC"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "authority"

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v8, "account"

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 249
    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v8, v12, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 250
    .local v3, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v13, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 252
    invoke-virtual {p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 253
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v8, "ResumeSyncTime_%s"

    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, prefResumeSyncTime:Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 256
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method

.method private turnOffSyncAndNotify(I)V
    .locals 13
    .parameter "messageId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 215
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 216
    .local v6, pm:Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v6, v7, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 217
    .local v5, pi:Landroid/content/pm/ProviderInfo;
    invoke-virtual {v5, v6}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 219
    .local v1, label:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, intent:Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".SYNC_SETTINGS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v7, "authority"

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v7, "account"

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v7, v11, v0, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 225
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x108007c

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const v9, 0x60c0133

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 232
    .local v2, n:Landroid/app/Notification;
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 233
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-virtual {v3, v11, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 235
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v7, v8, v11}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 237
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v8, p0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method protected getPhoneInfo()Z
    .locals 13

    .prologue
    const-wide/16 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 262
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, sid:Ljava/lang/String;
    const-string v7, "MiCloudSyncAdapterBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhoneInfo: sid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3, v6}, Lmiui/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 305
    :goto_0
    return v5

    .line 268
    :cond_0
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/net/CloudManager;->getActivatedPhoneNumber()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v1

    .line 269
    .local v1, c:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    if-nez v1, :cond_1

    .line 270
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: Null CloudManagerFuture."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :cond_1
    iput-object v10, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTicket:Ljava/lang/String;

    .line 274
    iput-object v10, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumber:Ljava/lang/String;

    .line 276
    :try_start_0
    invoke-interface {v1}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 277
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 278
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: Null CloudManagerFuture bundle."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 294
    .end local v0           #b:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Ljava/io/IOException;
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iget-object v6, p0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v6, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v7, v11

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 281
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v7, "phone_ticket"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTicket:Ljava/lang/String;

    .line 282
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTicket:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: Null or empty ticket."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 297
    .end local v0           #b:Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 298
    .local v2, e:Lmiui/net/exception/OperationCancelledException;
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 286
    .end local v2           #e:Lmiui/net/exception/OperationCancelledException;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_3
    :try_start_2
    const-string v7, "activate_phone"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumber:Ljava/lang/String;

    .line 287
    iget-object v7, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 288
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: Null or empty number."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 299
    .end local v0           #b:Landroid/os/Bundle;
    :catch_2
    move-exception v2

    .line 300
    .local v2, e:Lmiui/net/exception/CloudServiceFailureException;
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    iget-object v6, p0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v6, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v7, v11

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_0

    .line 291
    .end local v2           #e:Lmiui/net/exception/CloudServiceFailureException;
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_4
    :try_start_3
    const-string v7, "MiCloudSyncAdapterBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPhoneInfo: ticket="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mTicket:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "number="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/net/MiCloudSyncAdapterBase;->mNumber:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lmiui/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lmiui/net/exception/OperationCancelledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lmiui/net/exception/CloudServiceFailureException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lmiui/net/exception/NoActivateAccountException; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v6

    .line 293
    goto/16 :goto_0

    .line 302
    .end local v0           #b:Landroid/os/Bundle;
    :catch_3
    move-exception v2

    .line 303
    .local v2, e:Lmiui/net/exception/NoActivateAccountException;
    const-string v6, "MiCloudSyncAdapterBase"

    const-string v7, "getPhoneInfo: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected abstract onPerformMiCloudSync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/net/exception/MiCloudServerException;
        }
    .end annotation
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 21
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 74
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    .line 76
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 79
    .local v20, sp:Landroid/content/SharedPreferences;
    const-string v3, "ResumeSyncTime_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 80
    .local v13, prefResumeSyncTime:Ljava/lang/String;
    const-wide/16 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v13, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 81
    .local v16, resumeTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v14, v16, v3

    .line 82
    .local v14, remaining:J
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-lez v3, :cond_1

    .line 83
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync suspended. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    div-long v5, v14, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds to resume."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: The suspension of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync is expired now."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 90
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v3, 0x0

    invoke-interface {v10, v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 95
    .local v2, am:Landroid/accounts/AccountManager;
    const/16 v19, 0x0

    .line 96
    .local v19, retryCount:I
    const/4 v12, 0x1

    .line 99
    .local v12, maxRetryCount:I
    :cond_3
    const/16 v18, 0x0

    .line 101
    .local v18, retry:Z
    :try_start_0
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: getting auth token. authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAuthType:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v11

    .line 103
    .local v11, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    if-nez v11, :cond_4

    .line 104
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Null future."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 113
    .end local v11           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_0
    move-exception v9

    .line 114
    .local v9, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 107
    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    .restart local v11       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_4
    :try_start_1
    invoke-interface {v11}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 108
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Null future result."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 116
    .end local v11           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_1
    move-exception v9

    .line 117
    .local v9, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 111
    .end local v9           #e:Landroid/accounts/AuthenticatorException;
    .restart local v11       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_5
    :try_start_2
    invoke-interface {v11}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "authtoken"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    .line 126
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: No ext token string."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    .end local v11           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :catch_2
    move-exception v9

    .line 120
    .local v9, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    iget-object v3, v3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/content/SyncStats;->numIoExceptions:J

    .line 121
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 129
    .end local v9           #e:Ljava/io/IOException;
    .restart local v11       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v3}, Lmiui/net/ExtendedAuthToken;->parse(Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtToken:Lmiui/net/ExtendedAuthToken;

    if-nez v3, :cond_7

    .line 131
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync: Cannot parse ext token."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 136
    :cond_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->onPerformMiCloudSync()V
    :try_end_3
    .catch Lmiui/net/exception/MiCloudServerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    :cond_8
    :goto_1
    if-eqz v18, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_0

    .line 137
    :catch_3
    move-exception v9

    .line 138
    .local v9, e:Lmiui/net/exception/MiCloudServerException;
    const-string v3, "MiCloudSyncAdapterBase"

    const-string v4, "onPerformSync"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    iget v3, v9, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    packed-switch v3, :pswitch_data_0

    .line 159
    :pswitch_0
    iget v3, v9, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 160
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handle5xx()V

    goto :goto_1

    .line 141
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleBadRequest()V

    goto :goto_1

    .line 144
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleUnauthorized()V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/net/MiCloudSyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 147
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 148
    const/16 v18, 0x1

    .line 149
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 153
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleForbidden()V

    goto :goto_1

    .line 156
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lmiui/net/MiCloudSyncAdapterBase;->handleNotAcceptable()V

    goto :goto_1

    .line 162
    :cond_9
    const-string v3, "MiCloudSyncAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized server error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v9, Lmiui/net/exception/MiCloudServerException;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
