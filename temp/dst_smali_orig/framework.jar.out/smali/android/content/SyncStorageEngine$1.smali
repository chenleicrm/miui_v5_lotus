.class Landroid/content/SyncStorageEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncStorageEngine;


# direct methods
.method constructor <init>(Landroid/content/SyncStorageEngine;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "LOADED"

    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/content/SyncStorageEngine;->access$000(Landroid/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/content/SyncStorageEngine;->access$100(Landroid/content/SyncStorageEngine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x111003d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .local v2, newDefault:Z
    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mMasterSyncAutoDefault:Z
    invoke-static {v5}, Landroid/content/SyncStorageEngine;->access$200(Landroid/content/SyncStorageEngine;)Z

    move-result v5

    if-eq v2, v5, :cond_0

    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #setter for: Landroid/content/SyncStorageEngine;->mMasterSyncAutoDefault:Z
    invoke-static {v5, v2}, Landroid/content/SyncStorageEngine;->access$202(Landroid/content/SyncStorageEngine;Z)Z

    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/content/SyncStorageEngine;->access$300(Landroid/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, numberOfUsers:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;
    invoke-static {v5}, Landroid/content/SyncStorageEngine;->access$300(Landroid/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .local v4, userId:I
    iget-object v5, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    iget-object v7, p0, Landroid/content/SyncStorageEngine$1;->this$0:Landroid/content/SyncStorageEngine;

    #getter for: Landroid/content/SyncStorageEngine;->mMasterSyncAutoDefault:Z
    invoke-static {v7}, Landroid/content/SyncStorageEngine;->access$200(Landroid/content/SyncStorageEngine;)Z

    move-result v7

    invoke-virtual {v5, v7, v4}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v3           #numberOfUsers:I
    .end local v4           #userId:I
    :cond_0
    monitor-exit v6

    .end local v2           #newDefault:Z
    :cond_1
    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
