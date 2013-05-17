.class public Lmiui/analytics/XiaomiAnalytics;
.super Ljava/lang/Object;
.source "XiaomiAnalytics.java"


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "_android_version_"

.field private static final APP_VERSION:Ljava/lang/String; = "_app_version_"

.field private static final DEFAULT_EVENT_VALUE:J = 0x0L

.field private static final EVENT_DEFAULT_PARAM:Ljava/lang/String; = "_event_default_param_"

.field private static final MIUI_VERSION:Ljava/lang/String; = "_miui_version_"

.field private static final SESSION_EVENT:Ljava/lang/String; = "_session_event_"

.field private static final TAG:Ljava/lang/String; = "XIAOMIANALYTICS"

.field private static final TIMED_EVENT:Ljava/lang/String; = "_timed_event_"

.field private static final TIMED_EVENT_ID:Ljava/lang/String; = "_timed_event_id_"

.field private static final sInstance:Lmiui/analytics/XiaomiAnalytics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

.field private mTimedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/TrackEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mUseHttps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lmiui/analytics/XiaomiAnalytics;

    invoke-direct {v0}, Lmiui/analytics/XiaomiAnalytics;-><init>()V

    sput-object v0, Lmiui/analytics/XiaomiAnalytics;->sInstance:Lmiui/analytics/XiaomiAnalytics;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    .line 33
    iput-boolean v1, p0, Lmiui/analytics/XiaomiAnalytics;->mUseHttps:Z

    .line 34
    iput-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;

    .line 36
    iput v1, p0, Lmiui/analytics/XiaomiAnalytics;->mCount:I

    .line 39
    return-void
.end method

.method private getAppVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 269
    const-string v3, ""

    .line 271
    .local v3, version:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 272
    .local v2, manager:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 273
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #manager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lmiui/analytics/XiaomiAnalytics;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lmiui/analytics/XiaomiAnalytics;->sInstance:Lmiui/analytics/XiaomiAnalytics;

    return-object v0
.end method

.method private isTrackedReady()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    if-nez v0, :cond_0

    .line 262
    const-string v0, "XIAOMIANALYTICS"

    const-string v1, "method: startSession should be called before tracking events"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized endSession()V
    .locals 5

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/analytics/XiaomiAnalytics;->mCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lmiui/analytics/XiaomiAnalytics;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/analytics/XiaomiAnalytics;->mCount:I

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lmiui/analytics/XiaomiAnalytics;->isTrackedReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_1
    const-string v0, "XIAOMIANALYTICS"

    const-string v1, "end session(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v0}, Lmiui/analytics/PersistenceHelper;->close()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    .line 79
    iget-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTimedEvent(Ljava/lang/String;)V
    .locals 10
    .parameter "eventId"

    .prologue
    .line 218
    iget-object v6, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;

    if-nez v6, :cond_1

    .line 219
    const-string v6, "XIAOMIANALYTICS"

    const-string v7, "there is no timed event"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v3, 0x0

    .line 223
    .local v3, flag:Z
    iget-object v6, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/analytics/TrackEvent;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 224
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/analytics/TrackEvent;

    .line 225
    .local v2, event:Lmiui/analytics/TrackEvent;
    invoke-virtual {v2}, Lmiui/analytics/TrackEvent;->getEventId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    const/4 v3, 0x1

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 228
    .local v0, currentTime:J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v5, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "_timed_event_id_"

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v6, "_timed_event_"

    invoke-virtual {v2}, Lmiui/analytics/TrackEvent;->getTrackTime()J

    move-result-wide v7

    sub-long v7, v0, v7

    invoke-virtual {p0, v6, v5, v7, v8}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;J)V

    .line 231
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 235
    .end local v0           #currentTime:J
    .end local v2           #event:Lmiui/analytics/TrackEvent;
    .end local v5           #parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-nez v3, :cond_0

    .line 236
    const-string v6, "XIAOMIANALYTICS"

    const-string v7, "the ended event (%s) is not timed"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTrackPageView()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lmiui/analytics/XiaomiAnalytics;->isTrackedReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    new-instance v1, Lmiui/analytics/TrackPageViewEvent;

    invoke-direct {v1}, Lmiui/analytics/TrackPageViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lmiui/analytics/PersistenceHelper;->writeEvent(Lmiui/analytics/Event;)V

    goto :goto_0
.end method

.method public setUseHttps(Z)V
    .locals 1
    .parameter "useHttps"

    .prologue
    .line 255
    iget-boolean v0, p0, Lmiui/analytics/XiaomiAnalytics;->mUseHttps:Z

    if-eq p1, v0, :cond_0

    .line 256
    iput-boolean p1, p0, Lmiui/analytics/XiaomiAnalytics;->mUseHttps:Z

    .line 258
    :cond_0
    return-void
.end method

.method public declared-synchronized startSession(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 51
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v1, p0, Lmiui/analytics/XiaomiAnalytics;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmiui/analytics/XiaomiAnalytics;->mCount:I

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Lmiui/analytics/PersistenceHelper;

    invoke-direct {v1}, Lmiui/analytics/PersistenceHelper;-><init>()V

    iput-object v1, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    .line 54
    iget-object v1, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    iget-object v2, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lmiui/analytics/PersistenceHelper;->writeOpen(Landroid/content/Context;)V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, mapParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_android_version_"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "_miui_version_"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "_app_version_"

    invoke-direct {p0}, Lmiui/analytics/XiaomiAnalytics;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "_session_event_"

    invoke-virtual {p0, v1, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const-string v1, "XIAOMIANALYTICS"

    const-string v2, "start session(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmiui/analytics/XiaomiAnalytics;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v0           #mapParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public trackError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "errorId"
    .parameter "message"
    .parameter "errorClass"

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_0
    const-string v0, "XIAOMIANALYTICS"

    const-string v1, "the id or error class of loged event is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    invoke-direct {p0}, Lmiui/analytics/XiaomiAnalytics;->isTrackedReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    if-nez p2, :cond_3

    .line 99
    const-string p2, ""

    .line 101
    :cond_3
    iget-object v0, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    new-instance v1, Lmiui/analytics/LogEvent;

    invoke-direct {v1, p1, p2, p3}, Lmiui/analytics/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiui/analytics/PersistenceHelper;->writeEvent(Lmiui/analytics/Event;)V

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "eventId"

    .prologue
    .line 110
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 111
    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 6
    .parameter "eventId"
    .parameter "value"

    .prologue
    .line 120
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 121
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "eventId"
    .parameter "parameter"

    .prologue
    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_event_default_param_"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0, p1, v0}, Lmiui/analytics/XiaomiAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "eventId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 131
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 6
    .parameter "eventId"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 142
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .parameter "eventId"
    .parameter
    .parameter "timed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 175
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V
    .locals 3
    .parameter "eventId"
    .parameter
    .parameter "timed"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const-string v1, "XIAOMIANALYTICS"

    const-string v2, "the id of tracked event is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-direct {p0}, Lmiui/analytics/XiaomiAnalytics;->isTrackedReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Lmiui/analytics/TrackEvent;

    invoke-direct {v0, p1, p2, p4, p5}, Lmiui/analytics/TrackEvent;-><init>(Ljava/lang/String;Ljava/util/Map;J)V

    .line 207
    .local v0, event:Lmiui/analytics/TrackEvent;
    iget-object v1, p0, Lmiui/analytics/XiaomiAnalytics;->mPersistenceHelper:Lmiui/analytics/PersistenceHelper;

    invoke-virtual {v1, v0}, Lmiui/analytics/PersistenceHelper;->writeEvent(Lmiui/analytics/Event;)V

    .line 208
    if-eqz p3, :cond_0

    .line 209
    iget-object v1, p0, Lmiui/analytics/XiaomiAnalytics;->mTimedEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public trackTimedEvent(Ljava/lang/String;Z)V
    .locals 6
    .parameter "eventId"
    .parameter "timed"

    .prologue
    .line 152
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 153
    return-void
.end method

.method public trackTimedEvent(Ljava/lang/String;ZJ)V
    .locals 6
    .parameter "eventId"
    .parameter "timed"
    .parameter "value"

    .prologue
    .line 163
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lmiui/analytics/XiaomiAnalytics;->trackTimedEvent(Ljava/lang/String;Ljava/util/Map;ZJ)V

    .line 164
    return-void
.end method
