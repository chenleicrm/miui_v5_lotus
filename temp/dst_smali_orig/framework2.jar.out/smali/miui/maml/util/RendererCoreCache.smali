.class public Lmiui/maml/util/RendererCoreCache;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Lmiui/maml/RendererCore$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;,
        Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCoreCache"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60


# instance fields
.field private mCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache;->mExtHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .locals 7
    .parameter "key"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v0, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v0, :cond_1

    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: the key does not exist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide v3, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    sub-long v1, v3, v5

    .local v1, t:J
    iget-wide v3, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .end local v1           #t:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .restart local v1       #t:J
    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    const-wide/16 v1, 0x0

    :cond_3
    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v5, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache resheduled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 5
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "loader"
    .parameter "path"
    .parameter "h"

    .prologue
    invoke-virtual {p0, p1, p3, p4}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v1

    .local v1, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v1, :cond_0

    move-object v2, v1

    .end local v1           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .local v2, ri:Ljava/lang/Object;
    :goto_0
    return-object v2

    .end local v2           #ri:Ljava/lang/Object;
    .restart local v1       #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_0
    const/4 v0, 0x0

    .local v0, r:Lmiui/maml/RendererCore;
    if-eqz p5, :cond_2

    invoke-static {p2, p5, p7}, Lmiui/maml/RendererCore;->create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    :goto_1
    new-instance v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .end local v1           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    invoke-direct {v1, v0}, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;-><init>(Lmiui/maml/RendererCore;)V

    .restart local v1       #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-wide p3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->setOnReleaseListener(Lmiui/maml/RendererCore$OnReleaseListener;)V

    new-instance v3, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {v3, p0, p1}, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;-><init>(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object v3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    :cond_1
    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .restart local v2       #ri:Ljava/lang/Object;
    goto :goto_0

    .end local v2           #ri:Ljava/lang/Object;
    :cond_2
    invoke-static {p2, p6, p7}, Lmiui/maml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Lmiui/maml/RendererCore;)V
    .locals 6
    .parameter "rc"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnRendererCoreReleased: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, key:Ljava/lang/Object;
    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v2, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    iget-object v3, v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v1}, Lmiui/maml/util/RendererCoreCache;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 3
    .parameter "key"
    .parameter "cacheTime"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v0, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-wide p2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v0           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 7
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "path"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 8
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "path"
    .parameter "h"

    .prologue
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 7
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "loader"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 8
    .parameter "key"
    .parameter "context"
    .parameter "cacheTime"
    .parameter "loader"
    .parameter "h"

    .prologue
    monitor-enter p0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 5
    .parameter "key"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v0, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iget-wide v1, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduled release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v3, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
