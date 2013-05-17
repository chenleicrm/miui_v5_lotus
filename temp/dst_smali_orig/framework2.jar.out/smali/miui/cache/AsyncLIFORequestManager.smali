.class public Lmiui/cache/AsyncLIFORequestManager;
.super Lmiui/cache/RequestManager;
.source "AsyncLIFORequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cache/AsyncLIFORequestManager$Worker;,
        Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,
        Lmiui/cache/AsyncLIFORequestManager$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cache/RequestManager",
        "<TK;TV;TR;>;"
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HOLDER_POOL_LIMIT:I = 0x14

.field private static final MSG_RESPONSE:I = 0x1

.field static final QUEUE_POOL_LIMIT:I = 0xa

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final mAutoTrim:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
            "<TK;TV;TR;>;>;"
        }
    .end annotation
.end field

.field private mQueuePool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Lmiui/cache/AsyncLIFORequestManager$QueueHolder",
            "<TK;TV;TR;>;>;"
        }
    .end annotation
.end field

.field private final mRemoveKeyToKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TR;TK;>;"
        }
    .end annotation
.end field

.field mResponsePool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final mWorkThreadCount:I

.field private mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/AsyncLIFORequestManager$Worker",
            "<TK;TV;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/cache/AsyncLIFORequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/cache/AsyncLIFORequestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .parameter "maxSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lmiui/cache/AsyncLIFORequestManager;-><init>(ILjava/lang/Object;IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;IZ)V
    .locals 2
    .parameter "maxSize"
    .parameter
    .parameter "threadCount"
    .parameter "autoTrim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;IZ)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, p1, p2}, Lmiui/cache/RequestManager;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lmiui/cache/AsyncLIFORequestManager$1;

    invoke-direct {v0, p0}, Lmiui/cache/AsyncLIFORequestManager$1;-><init>(Lmiui/cache/AsyncLIFORequestManager;)V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mResponsePool:Landroid/util/Pool;

    new-instance v0, Lmiui/cache/AsyncLIFORequestManager$2;

    invoke-direct {v0, p0}, Lmiui/cache/AsyncLIFORequestManager$2;-><init>(Lmiui/cache/AsyncLIFORequestManager;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mQueuePool:Landroid/util/Pool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mRemoveKeyToKey:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    new-instance v0, Lmiui/cache/AsyncLIFORequestManager$3;

    invoke-direct {v0, p0}, Lmiui/cache/AsyncLIFORequestManager$3;-><init>(Lmiui/cache/AsyncLIFORequestManager;)V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mHandler:Landroid/os/Handler;

    iput p3, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorkThreadCount:I

    iput-boolean p4, p0, Lmiui/cache/AsyncLIFORequestManager;->mAutoTrim:Z

    return-void
.end method

.method static onComputeAsync(Landroid/os/Handler;Lmiui/cache/RequestManager$Request;Landroid/util/Pool;)V
    .locals 4
    .parameter "handler"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;",
            "Landroid/util/Pool",
            "<",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .local p1, request:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    .local p2, pool:Landroid/util/Pool;,"Landroid/util/Pool<Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;>;"
    invoke-interface {p1}, Lmiui/cache/RequestManager$Request;->computAsync()Ljava/lang/Object;

    move-result-object v2

    .local v2, v:Ljava/lang/Object;,"TV;"
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-interface {p2}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Lmiui/cache/AsyncLIFORequestManager$Response;

    .local v0, holder:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    invoke-interface {p1}, Lmiui/cache/RequestManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lmiui/cache/AsyncLIFORequestManager$Response;->mKey:Ljava/lang/Object;

    iput-object v2, v0, Lmiui/cache/AsyncLIFORequestManager$Response;->mValue:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private trimPendings(Lmiui/cache/RequestManager$Request;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    .local p1, request:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mRemoveKeyToKey:Ljava/util/HashMap;

    invoke-interface {p1}, Lmiui/cache/RequestManager$Request;->getRemoveKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1}, Lmiui/cache/RequestManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, oldKey:Ljava/lang/Object;,"TK;"
    if-eqz v5, :cond_2

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .local v1, holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    if-eqz v1, :cond_2

    iget-object v3, v1, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    .local v3, ll:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    iget-object v6, v1, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, lit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/RequestManager$Request;

    .local v0, first:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/cache/RequestManager$Request;

    .local v4, node:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    invoke-interface {v4}, Lmiui/cache/RequestManager$Request;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Lmiui/cache/RequestManager$Request;->onRemoved()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .end local v4           #node:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-interface {v0}, Lmiui/cache/RequestManager$Request;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    invoke-virtual {v6, v0}, Lmiui/cache/AsyncLIFORequestManager$Worker;->remove(Lmiui/cache/RequestManager$Request;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Lmiui/cache/RequestManager$Request;->onRemoved()V

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mQueuePool:Landroid/util/Pool;

    invoke-interface {v6, v1}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .end local v0           #first:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    .end local v1           #holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    .end local v2           #lit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    .end local v3           #ll:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method dumpPendings(Ljava/lang/String;)V
    .locals 8
    .parameter "desc"

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pending size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, mit:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  pending "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .local v0, holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    iget-object v6, v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, lit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .end local v0           #holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    .end local v3           #lit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    :cond_1
    sget-object v6, Lmiui/cache/AsyncLIFORequestManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onComputeCompleted(Lmiui/cache/AsyncLIFORequestManager$Response;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/AsyncLIFORequestManager$Response",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    .local p1, response:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    iget-object v2, p1, Lmiui/cache/AsyncLIFORequestManager$Response;->mKey:Ljava/lang/Object;

    .local v2, key:Ljava/lang/Object;,"TK;"
    iget-object v4, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    .local v4, pendings:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;>;"
    iget-object v7, p1, Lmiui/cache/AsyncLIFORequestManager$Response;->mValue:Ljava/lang/Object;

    .local v7, value:Ljava/lang/Object;,"TV;"
    if-nez v7, :cond_0

    iget-object v7, p0, Lmiui/cache/AsyncLIFORequestManager;->mDefaultValue:Ljava/lang/Object;

    :cond_0
    const/4 v3, 0x0

    .local v3, needCache:Z
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .local v0, holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    if-eqz v0, :cond_2

    iget-object v5, v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    .local v5, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/cache/RequestManager$Request;

    invoke-interface {v8}, Lmiui/cache/RequestManager$Request;->needCache()Z

    move-result v3

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/cache/RequestManager$Request;

    .local v6, r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmiui/cache/RequestManager$Request;->onCompleted(Ljava/lang/Object;Z)V

    goto :goto_0

    .end local v6           #r:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    :cond_1
    iget-object v8, p0, Lmiui/cache/AsyncLIFORequestManager;->mQueuePool:Landroid/util/Pool;

    invoke-interface {v8, v0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    :cond_2
    if-eqz v3, :cond_3

    iget-object v8, p0, Lmiui/cache/AsyncLIFORequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v8, v2, v7}, Lmiui/cache/RequestManager$BackupCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    iget-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/cache/AsyncLIFORequestManager$Worker;->setActive(Z)V

    return-void
.end method

.method protected onQuit()V
    .locals 3

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    invoke-virtual {v2}, Lmiui/cache/AsyncLIFORequestManager$Worker;->quit()V

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v2, v1}, Lmiui/cache/RequestManager$BackupCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1           #key:Ljava/lang/Object;,"TK;"
    :cond_1
    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method protected onRequest(Lmiui/cache/RequestManager$Request;Z)Z
    .locals 7
    .parameter
    .parameter "forceUpdate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    .local p1, request:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, isCached:Z
    invoke-interface {p1}, Lmiui/cache/RequestManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v2

    .local v2, key:Ljava/lang/Object;,"TK;"
    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v6, v2}, Lmiui/cache/RequestManager$BackupCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v4, v:Ljava/lang/Object;,"TV;"
    iget-boolean v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mAutoTrim:Z

    if-eqz v6, :cond_0

    invoke-direct {p0, p1}, Lmiui/cache/AsyncLIFORequestManager;->trimPendings(Lmiui/cache/RequestManager$Request;)V

    :cond_0
    if-eqz v4, :cond_4

    const/4 v1, 0x1

    if-nez p2, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-interface {p1, v4, v5}, Lmiui/cache/RequestManager$Request;->onCompleted(Ljava/lang/Object;Z)V

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object v5, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .local v0, holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    if-nez v0, :cond_5

    iget-object v5, p0, Lmiui/cache/AsyncLIFORequestManager;->mQueuePool:Landroid/util/Pool;

    invoke-interface {v5}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    .end local v0           #holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    check-cast v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;

    .restart local v0       #holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    iget-object v5, v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/cache/AsyncLIFORequestManager;->mPendingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    invoke-virtual {v5, p1}, Lmiui/cache/AsyncLIFORequestManager$Worker;->execute(Lmiui/cache/RequestManager$Request;)V

    .end local v0           #holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    :cond_3
    :goto_1
    return v1

    :cond_4
    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mDefaultValue:Ljava/lang/Object;

    invoke-interface {p1, v6, v5}, Lmiui/cache/RequestManager$Request;->onCompleted(Ljava/lang/Object;Z)V

    goto :goto_0

    .restart local v0       #holder:Lmiui/cache/AsyncLIFORequestManager$QueueHolder;,"Lmiui/cache/AsyncLIFORequestManager$QueueHolder<TK;TV;TR;>;"
    :cond_5
    iget-object v3, v0, Lmiui/cache/AsyncLIFORequestManager$QueueHolder;->mQueue:Ljava/util/LinkedList;

    .local v3, queue:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lmiui/cache/RequestManager$Request<TK;TV;TR;>;>;"
    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/cache/RequestManager$Request;

    invoke-virtual {v6, v5}, Lmiui/cache/AsyncLIFORequestManager$Worker;->schedule(Lmiui/cache/RequestManager$Request;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    iget-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/cache/AsyncLIFORequestManager$Worker;->setActive(Z)V

    return-void
.end method

.method protected onSetup()V
    .locals 4

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager;,"Lmiui/cache/AsyncLIFORequestManager<TK;TV;TR;>;"
    new-instance v0, Lmiui/cache/AsyncLIFORequestManager$Worker;

    iget v1, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorkThreadCount:I

    iget-object v2, p0, Lmiui/cache/AsyncLIFORequestManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/cache/AsyncLIFORequestManager;->mResponsePool:Landroid/util/Pool;

    invoke-direct {v0, v1, v2, v3}, Lmiui/cache/AsyncLIFORequestManager$Worker;-><init>(ILandroid/os/Handler;Landroid/util/Pool;)V

    iput-object v0, p0, Lmiui/cache/AsyncLIFORequestManager;->mWorker:Lmiui/cache/AsyncLIFORequestManager$Worker;

    return-void
.end method
