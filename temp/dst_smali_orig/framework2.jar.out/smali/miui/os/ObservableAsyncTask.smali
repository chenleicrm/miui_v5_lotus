.class public abstract Lmiui/os/ObservableAsyncTask;
.super Landroid/os/AsyncTask;
.source "ObservableAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/os/AsyncTaskObserver",
            "<TParams;TProgress;TResult;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Lmiui/os/AsyncTaskObserver;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/AsyncTaskObserver",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1}, Lmiui/os/AsyncTaskObserver;->onCancelled()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1, p1}, Lmiui/os/AsyncTaskObserver;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1}, Lmiui/os/AsyncTaskObserver;->onPreExecute()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1, p1}, Lmiui/os/AsyncTaskObserver;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public removeObserver(Lmiui/os/AsyncTaskObserver;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/AsyncTaskObserver",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
