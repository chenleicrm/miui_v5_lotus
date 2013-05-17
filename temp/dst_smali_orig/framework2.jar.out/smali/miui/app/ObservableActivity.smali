.class public Lmiui/app/ObservableActivity;
.super Landroid/app/Activity;
.source "ObservableActivity.java"


# instance fields
.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/ActivityLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Lmiui/app/ActivityLifecycleObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1, p1, p2, p3}, Lmiui/app/ActivityLifecycleObserver;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/ActivityLifecycleObserver;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method protected onDestroy()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/ActivityLifecycleObserver;->onDestroy()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method protected onPause()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/ActivityLifecycleObserver;->onPause()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method protected onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/ActivityLifecycleObserver;->onResume()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method protected onStart()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/ActivityLifecycleObserver;->onStart()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method protected onStop()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v3, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActivityLifecycleObserver;

    .local v1, observer:Lmiui/app/ActivityLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/ActivityLifecycleObserver;->onStop()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/ActivityLifecycleObserver;
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

.method public removeObserver(Lmiui/app/ActivityLifecycleObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/app/ObservableActivity;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
