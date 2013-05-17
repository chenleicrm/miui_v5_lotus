.class public Lmiui/maml/RenderThread;
.super Ljava/lang/Thread;
.source "RenderThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RenderThread"

.field private static sGlobalThread:Lmiui/maml/RenderThread;

.field private static sGlobalThreadLock:Ljava/lang/Object;


# instance fields
.field private mNextUpdateInterval:J

.field private mPaused:Z

.field private mRendererControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/RendererController;",
            ">;"
        }
    .end annotation
.end field

.field private mResumeSignal:Ljava/lang/Object;

.field private mSignaled:Z

.field private mSleepSignal:Ljava/lang/Object;

.field private mStarted:Z

.field private mStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererController;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 33
    const-string v0, "MAML RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 35
    return-void
.end method

.method private doFinish()V
    .locals 5

    .prologue
    .line 341
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 345
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 346
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 347
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 348
    .local v1, c:Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->finish()V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    .end local v1           #c:Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doInit()V
    .locals 7

    .prologue
    .line 272
    iget-object v5, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 288
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 276
    .local v2, currentTime:J
    iget-object v6, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 277
    :try_start_0
    iget-object v5, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 278
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 279
    iget-object v5, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 280
    .local v1, c:Lmiui/maml/RendererController;
    invoke-virtual {v1, v2, v3}, Lmiui/maml/RendererController;->setLastUpdateTime(J)V

    .line 281
    invoke-virtual {v1}, Lmiui/maml/RendererController;->init()V

    .line 282
    iget-boolean v5, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v5, :cond_1

    .line 283
    invoke-virtual {v1, v2, v3}, Lmiui/maml/RendererController;->tick(J)V

    .line 285
    :cond_1
    invoke-virtual {v1}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 287
    .end local v1           #c:Lmiui/maml/RendererController;
    :cond_2
    monitor-exit v6

    goto :goto_0

    .end local v0           #N:I
    .end local v4           #i:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private doPause()V
    .locals 5

    .prologue
    .line 291
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 301
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 295
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 296
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 297
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 298
    .local v1, c:Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->pause()V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v1           #c:Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doResume()V
    .locals 5

    .prologue
    .line 304
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 314
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v4, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 308
    :try_start_0
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 309
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 310
    iget-object v3, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/RendererController;

    .line 311
    .local v1, c:Lmiui/maml/RendererController;
    invoke-virtual {v1}, Lmiui/maml/RendererController;->resume()V

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    .end local v1           #c:Lmiui/maml/RendererController;
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doUpdateFramerate(J)Z
    .locals 10
    .parameter "time"

    .prologue
    .line 320
    iget-object v6, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 321
    const/4 v1, 0x1

    .line 337
    :goto_0
    return v1

    .line 323
    :cond_0
    const/4 v1, 0x1

    .line 324
    .local v1, allPaused:Z
    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, p0, Lmiui/maml/RenderThread;->mNextUpdateInterval:J

    .line 325
    iget-object v7, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 326
    :try_start_0
    iget-object v6, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 327
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 328
    iget-object v6, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/RendererController;

    .line 329
    .local v2, c:Lmiui/maml/RendererController;
    invoke-virtual {v2}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v6

    if-nez v6, :cond_2

    .line 330
    invoke-virtual {v2, p1, p2}, Lmiui/maml/RendererController;->updateFramerate(J)J

    move-result-wide v4

    .line 331
    .local v4, l:J
    iget-wide v8, p0, Lmiui/maml/RenderThread;->mNextUpdateInterval:J

    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    .line 332
    iput-wide v4, p0, Lmiui/maml/RenderThread;->mNextUpdateInterval:J

    .line 333
    :cond_1
    const/4 v1, 0x0

    .line 327
    .end local v4           #l:J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    .end local v2           #c:Lmiui/maml/RendererController;
    :cond_3
    monitor-exit v7

    goto :goto_0

    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public static globalThread()Lmiui/maml/RenderThread;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    return-object v0
.end method

.method public static globalThread(Z)Lmiui/maml/RenderThread;
    .locals 2
    .parameter "ensureStart"

    .prologue
    .line 59
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_1

    .line 60
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lmiui/maml/RenderThread;

    invoke-direct {v0}, Lmiui/maml/RenderThread;-><init>()V

    sput-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    :try_start_1
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_2
    :goto_0
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static globalThreadStop()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_1

    .line 46
    sget-object v1, Lmiui/maml/RenderThread;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lmiui/maml/RenderThread;->sGlobalThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    .line 50
    :cond_0
    monitor-exit v1

    .line 52
    :cond_1
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sleepForFramerate(FJ)V
    .locals 4
    .parameter "framerate"
    .parameter "nextUpdateInterval"

    .prologue
    .line 265
    const/high16 v2, 0x447a

    div-float/2addr v2, p1

    float-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 266
    .local v0, sleepTime:J
    invoke-direct {p0, v0, v1}, Lmiui/maml/RenderThread;->waitSleep(J)V

    .line 268
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    .line 269
    return-void
.end method

.method private waitSleep(J)V
    .locals 3
    .parameter "t"

    .prologue
    .line 251
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v2, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RenderThread;->mSignaled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 256
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private waiteForResume()V
    .locals 2

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addRendererController(Lmiui/maml/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 79
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p1, p0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mStarted:Z

    return v0
.end method

.method public removeRendererController(Lmiui/maml/RendererController;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 89
    iget-object v1, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setRenderThread(Lmiui/maml/RenderThread;)V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 21

    .prologue
    .line 119
    const-string v15, "RenderThread"

    const-string v16, "RenderThread started"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lmiui/maml/RenderThread;->doInit()V

    .line 124
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lmiui/maml/RenderThread;->mStarted:Z

    .line 125
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mStop:Z

    if-nez v15, :cond_2

    .line 126
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v15, :cond_1

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v15, :cond_0

    .line 129
    invoke-direct/range {p0 .. p0}, Lmiui/maml/RenderThread;->doPause()V

    .line 130
    const-string v15, "RenderThread"

    const-string v17, "RenderThread paused, waiting for signal"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct/range {p0 .. p0}, Lmiui/maml/RenderThread;->waiteForResume()V

    .line 132
    const-string v15, "RenderThread"

    const-string v17, "RenderThread resumed"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct/range {p0 .. p0}, Lmiui/maml/RenderThread;->doResume()V

    .line 135
    :cond_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v15, :cond_3

    .line 235
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lmiui/maml/RenderThread;->doFinish()V

    .line 236
    const-string v15, "RenderThread"

    const-string v16, "RenderThread stopped"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 135
    :catchall_0
    move-exception v15

    :try_start_3
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 227
    :catch_0
    move-exception v7

    .line 228
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const-string v15, "RenderThread"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 142
    .local v5, currentTime:J
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lmiui/maml/RenderThread;->doUpdateFramerate(J)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 143
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lmiui/maml/RenderThread;->mPaused:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 230
    .end local v5           #currentTime:J
    :catch_1
    move-exception v7

    .line 231
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 232
    const-string v15, "RenderThread"

    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 147
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #currentTime:J
    :cond_4
    const/4 v13, 0x0

    .line 148
    .local v13, maxFramerate:F
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    .line 149
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 150
    .local v3, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v3, :cond_5

    .line 152
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v15, :cond_6

    .line 224
    :cond_5
    :goto_3
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 225
    :try_start_8
    move-object/from16 v0, p0

    iget-wide v15, v0, Lmiui/maml/RenderThread;->mNextUpdateInterval:J

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v13, v1, v2}, Lmiui/maml/RenderThread;->sleepForFramerate(FJ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 155
    :cond_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/RenderThread;->mRendererControllerList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/RendererController;

    .line 156
    .local v4, c:Lmiui/maml/RendererController;
    invoke-virtual {v4}, Lmiui/maml/RendererController;->isSelfPaused()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 150
    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 159
    :cond_8
    invoke-virtual {v4}, Lmiui/maml/RendererController;->hasInited()Z

    move-result v15

    if-nez v15, :cond_9

    .line 160
    invoke-virtual {v4}, Lmiui/maml/RendererController;->init()V

    .line 163
    :cond_9
    const/4 v12, 0x0

    .line 164
    .local v12, isFramerateDive:Z
    invoke-virtual {v4}, Lmiui/maml/RendererController;->getFramerate()F

    move-result v10

    .line 165
    .local v10, framerate:F
    cmpl-float v15, v10, v13

    if-lez v15, :cond_a

    .line 166
    move v13, v10

    .line 168
    :cond_a
    invoke-virtual {v4}, Lmiui/maml/RendererController;->getCurFramerate()F

    move-result v15

    cmpl-float v15, v15, v10

    if-eqz v15, :cond_c

    .line 174
    invoke-virtual {v4}, Lmiui/maml/RendererController;->getCurFramerate()F

    move-result v15

    const/high16 v17, 0x3f80

    cmpl-float v15, v15, v17

    if-ltz v15, :cond_b

    const/high16 v15, 0x3f80

    cmpg-float v15, v10, v15

    if-gez v15, :cond_b

    .line 175
    const/4 v12, 0x1

    .line 177
    :cond_b
    invoke-virtual {v4, v10}, Lmiui/maml/RendererController;->setCurFramerate(F)V

    .line 178
    const-string v15, "RenderThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "framerate changed: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " at time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v15, 0x0

    cmpl-float v15, v10, v15

    if-eqz v15, :cond_10

    const/high16 v15, 0x447a

    div-float/2addr v15, v10

    :goto_5
    float-to-int v9, v15

    .line 180
    .local v9, frameTime:I
    invoke-virtual {v4, v9}, Lmiui/maml/RendererController;->setFrameTime(I)V

    .line 184
    .end local v9           #frameTime:I
    :cond_c
    const/4 v8, 0x0

    .line 185
    .local v8, event:Landroid/view/MotionEvent;
    const/4 v14, 0x0

    .line 186
    .local v14, ticked:Z
    invoke-virtual {v4}, Lmiui/maml/RendererController;->getMessage()Landroid/view/MotionEvent;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 188
    invoke-virtual {v4, v8}, Lmiui/maml/RendererController;->onTouch(Landroid/view/MotionEvent;)V

    .line 189
    invoke-virtual {v4}, Lmiui/maml/RendererController;->pendingRender()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 190
    invoke-virtual {v4, v5, v6}, Lmiui/maml/RendererController;->tick(J)V

    .line 191
    const/4 v14, 0x1

    .line 192
    invoke-virtual {v4}, Lmiui/maml/RendererController;->hasMessage()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 193
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/RenderThread;->mNextUpdateInterval:J

    .line 199
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mPaused:Z

    if-nez v15, :cond_5

    .line 202
    if-nez v12, :cond_e

    invoke-virtual {v4}, Lmiui/maml/RendererController;->pendingRender()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v4}, Lmiui/maml/RendererController;->getLastUpdateTime()J

    move-result-wide v17

    sub-long v17, v5, v17

    invoke-virtual {v4}, Lmiui/maml/RendererController;->getFrameTime()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-gtz v15, :cond_e

    invoke-virtual {v4}, Lmiui/maml/RendererController;->shouldUpdate()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 204
    :cond_e
    if-nez v14, :cond_f

    .line 205
    invoke-virtual {v4, v5, v6}, Lmiui/maml/RendererController;->tick(J)V

    .line 207
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/maml/RenderThread;->mPaused:Z

    if-eqz v15, :cond_11

    .line 210
    invoke-virtual {v4}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 212
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/RenderThread;->mNextUpdateInterval:J

    goto/16 :goto_3

    .line 224
    .end local v3           #N:I
    .end local v4           #c:Lmiui/maml/RendererController;
    .end local v8           #event:Landroid/view/MotionEvent;
    .end local v10           #framerate:F
    .end local v11           #i:I
    .end local v12           #isFramerateDive:Z
    .end local v14           #ticked:Z
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v15
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1

    .line 179
    .restart local v3       #N:I
    .restart local v4       #c:Lmiui/maml/RendererController;
    .restart local v10       #framerate:F
    .restart local v11       #i:I
    .restart local v12       #isFramerateDive:Z
    :cond_10
    const/high16 v15, 0x4f00

    goto :goto_5

    .line 216
    .restart local v8       #event:Landroid/view/MotionEvent;
    .restart local v14       #ticked:Z
    :cond_11
    :try_start_b
    invoke-virtual {v4}, Lmiui/maml/RendererController;->doRender()V

    .line 217
    invoke-virtual {v4, v5, v6}, Lmiui/maml/RendererController;->setLastUpdateTime(J)V

    .line 219
    invoke-virtual {v4}, Lmiui/maml/RendererController;->shouldUpdate()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 220
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/RenderThread;->mNextUpdateInterval:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_4
.end method

.method public setPaused(Z)V
    .locals 2
    .parameter "pause"

    .prologue
    .line 100
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mPaused:Z

    if-ne v0, p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iput-boolean p1, p0, Lmiui/maml/RenderThread;->mPaused:Z

    .line 105
    if-nez p1, :cond_1

    .line 106
    iget-object v0, p0, Lmiui/maml/RenderThread;->mResumeSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 108
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStop()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mStop:Z

    .line 113
    invoke-virtual {p0}, Lmiui/maml/RenderThread;->signal()V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 115
    return-void
.end method

.method public signal()V
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmiui/maml/RenderThread;->mSignaled:Z

    .line 246
    iget-object v0, p0, Lmiui/maml/RenderThread;->mSleepSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 247
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
