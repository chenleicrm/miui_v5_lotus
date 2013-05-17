.class public Lmiui/app/ObservableFragment;
.super Landroid/app/Fragment;
.source "ObservableFragment.java"


# instance fields
.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/app/FragmentLifecycleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addObserver(Lmiui/app/FragmentLifecycleObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/FragmentLifecycleObserver;->onActivityCreated(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1, p2, p3}, Lmiui/app/FragmentLifecycleObserver;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/FragmentLifecycleObserver;->onAttach(Landroid/app/Activity;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1, p1}, Lmiui/app/FragmentLifecycleObserver;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onDestroy()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onDestroy()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onPause()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onPause()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onResume()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onStart()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onStart()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public onStop()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v3, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/FragmentLifecycleObserver;

    .local v1, observer:Lmiui/app/FragmentLifecycleObserver;
    invoke-interface {v1}, Lmiui/app/FragmentLifecycleObserver;->onStop()V

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/app/FragmentLifecycleObserver;
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

.method public removeObserver(Lmiui/app/FragmentLifecycleObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/app/ObservableFragment;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
