.class public abstract Lmiui/cache/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cache/RequestManager$BackupCache;,
        Lmiui/cache/RequestManager$DataCache;,
        Lmiui/cache/RequestManager$Request;,
        Lmiui/cache/RequestManager$Detacher;
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mCache:Lmiui/cache/RequestManager$BackupCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/RequestManager$BackupCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected mResumed:Z

.field protected mSetuped:Z


# direct methods
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
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    .local p2, defaultValue:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    iput-boolean v0, p0, Lmiui/cache/RequestManager;->mResumed:Z

    new-instance v0, Lmiui/cache/RequestManager$BackupCache;

    invoke-direct {v0, p1, p2}, Lmiui/cache/RequestManager$BackupCache;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lmiui/cache/RequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    iput-object p2, p0, Lmiui/cache/RequestManager;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static create(ILjava/lang/Object;)Lmiui/cache/RequestManager;
    .locals 1
    .parameter "maxSize"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(ITV;)",
            "Lmiui/cache/RequestManager",
            "<TK;TV;TR;>;"
        }
    .end annotation

    .prologue
    .local p1, exclude:Ljava/lang/Object;,"TV;"
    new-instance v0, Lmiui/cache/AsyncLIFORequestManager;

    invoke-direct {v0, p0, p1}, Lmiui/cache/AsyncLIFORequestManager;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public isResumed()Z
    .locals 1

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    iget-boolean v0, p0, Lmiui/cache/RequestManager;->mResumed:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    iget-boolean v0, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    return v0
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onQuit()V
.end method

.method protected abstract onRequest(Lmiui/cache/RequestManager$Request;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;Z)Z"
        }
    .end annotation
.end method

.method protected abstract onResume()V
.end method

.method protected abstract onSetup()V
.end method

.method public pause()V
    .locals 1

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    iget-boolean v0, p0, Lmiui/cache/RequestManager;->mResumed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/cache/RequestManager;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/cache/RequestManager;->mResumed:Z

    :cond_0
    return-void
.end method

.method public quit(Lmiui/cache/RequestManager$Detacher;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Detacher",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    .local p1, detacher:Lmiui/cache/RequestManager$Detacher;,"Lmiui/cache/RequestManager$Detacher<TV;>;"
    iget-boolean v4, p0, Lmiui/cache/RequestManager;->mResumed:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmiui/cache/RequestManager;->pause()V

    :cond_0
    iget-boolean v4, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lmiui/cache/RequestManager;->onQuit()V

    iget-object v0, p0, Lmiui/cache/RequestManager;->mDefaultValue:Ljava/lang/Object;

    .local v0, dft:Ljava/lang/Object;,"TV;"
    if-eqz p1, :cond_3

    iget-object v4, p0, Lmiui/cache/RequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v4}, Lmiui/cache/RequestManager$BackupCache;->values()Ljava/util/Collection;

    move-result-object v3

    .local v3, values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, v:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_1

    invoke-interface {p1, v2}, Lmiui/cache/RequestManager$Detacher;->onDetach(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #v:Ljava/lang/Object;,"TV;"
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lmiui/cache/RequestManager$Detacher;->onDetach(Ljava/lang/Object;)V

    .end local v3           #values:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_3
    iget-object v4, p0, Lmiui/cache/RequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v4}, Lmiui/cache/RequestManager$BackupCache;->quit()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    .end local v0           #dft:Ljava/lang/Object;,"TV;"
    :cond_4
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lmiui/cache/RequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v0, p1}, Lmiui/cache/RequestManager$BackupCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    iget-object v0, p0, Lmiui/cache/RequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v0}, Lmiui/cache/RequestManager$BackupCache;->removeAll()V

    return-void
.end method

.method public request(Lmiui/cache/RequestManager$Request;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/cache/RequestManager$Request",
            "<TK;TV;TR;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    .local p1, request:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/cache/RequestManager;->request(Lmiui/cache/RequestManager$Request;Z)Z

    move-result v0

    return v0
.end method

.method public request(Lmiui/cache/RequestManager$Request;Z)Z
    .locals 4
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
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    .local p1, request:Lmiui/cache/RequestManager$Request;,"Lmiui/cache/RequestManager$Request<TK;TV;TR;>;"
    const/4 v0, 0x0

    .local v0, isCached:Z
    invoke-interface {p1}, Lmiui/cache/RequestManager$Request;->getKey()Ljava/lang/Object;

    move-result-object v1

    .local v1, key:Ljava/lang/Object;,"TK;"
    if-nez v1, :cond_0

    iget-object v2, p0, Lmiui/cache/RequestManager;->mDefaultValue:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Lmiui/cache/RequestManager$Request;->onCompleted(Ljava/lang/Object;Z)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/cache/RequestManager;->onRequest(Lmiui/cache/RequestManager$Request;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    iget-boolean v0, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/cache/RequestManager;->mResumed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/cache/RequestManager;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cache/RequestManager;->mResumed:Z

    :cond_0
    return-void
.end method

.method public setup(Z)V
    .locals 1
    .parameter "resumeImmediately"

    .prologue
    .local p0, this:Lmiui/cache/RequestManager;,"Lmiui/cache/RequestManager<TK;TV;TR;>;"
    iget-boolean v0, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/cache/RequestManager;->mCache:Lmiui/cache/RequestManager$BackupCache;

    invoke-virtual {v0}, Lmiui/cache/RequestManager$BackupCache;->setup()V

    invoke-virtual {p0}, Lmiui/cache/RequestManager;->onSetup()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cache/RequestManager;->mSetuped:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/cache/RequestManager;->resume()V

    :cond_0
    return-void
.end method
