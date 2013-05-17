.class public Lcom/android/server/am/XperiaApplicationDependency;
.super Landroid/app/IApplicationDependency$Stub;
.source "XperiaApplicationDependency.java"


# static fields
.field static final TAG:Ljava/lang/String; = "XperiaApplicationDependency"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mApplicationDependency:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/app/IApplicationDependencyObserver;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .parameter "activityManagerService"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/IApplicationDependency$Stub;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lcom/android/server/am/XperiaApplicationDependency;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(II)V
    .locals 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 44
    monitor-enter p0

    if-eq p1, p2, :cond_1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 47
    .local v0, dependencyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #dependencyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .restart local v0       #dependencyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v2, p0, Lcom/android/server/am/XperiaApplicationDependency;->mObserver:Landroid/app/IApplicationDependencyObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 55
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/XperiaApplicationDependency;->mObserver:Landroid/app/IApplicationDependencyObserver;

    invoke-interface {v2, p1, p2}, Landroid/app/IApplicationDependencyObserver;->onDependencyAdded(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .end local v0           #dependencyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    .restart local v0       #dependencyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "XperiaApplicationDependency"

    const-string v3, "Failed to update application dependency."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 44
    .end local v0           #dependencyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/XperiaApplicationDependency;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_1

    .line 88
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Permission Denial: can\'t dump xperiaappdepinfo from pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " without permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "android.permission.DUMP"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    :try_start_1
    const-string v14, "=== Dependency ===="

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 96
    .local v8, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 97
    .local v7, key:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 98
    .local v3, deps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 100
    .local v11, packageManager:Landroid/content/pm/IPackageManager;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, packages:[Ljava/lang/String;
    move-object v1, v12

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v9, :cond_3

    aget-object v10, v1, v5

    .line 102
    .local v10, pack:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 104
    .end local v10           #pack:Ljava/lang/String;
    :cond_3
    const-string v14, "Depends on:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:I
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 106
    .local v2, dep:Ljava/lang/Integer;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "|--> uid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v11, v14}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 108
    .local v13, packagesDep:[Ljava/lang/String;
    move-object v1, v13

    array-length v9, v1

    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v9, :cond_4

    aget-object v10, v1, v6

    .line 109
    .restart local v10       #pack:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "|------>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 111
    .end local v10           #pack:Ljava/lang/String;
    :cond_4
    const-string v14, "---------------------------"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 114
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #dep:Ljava/lang/Integer;
    .end local v3           #deps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #i$:I
    .end local v7           #key:Ljava/lang/Integer;
    .end local v9           #len$:I
    .end local v11           #packageManager:Landroid/content/pm/IPackageManager;
    .end local v12           #packages:[Ljava/lang/String;
    .end local v13           #packagesDep:[Ljava/lang/String;
    :catch_0
    move-exception v14

    goto/16 :goto_0

    .line 86
    .end local v8           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method public declared-synchronized getDependencyForUid(I)[I
    .locals 5
    .parameter "uid"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/XperiaApplicationDependency;->mApplicationDependency:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 73
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 75
    .local v2, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1           #i:I
    .end local v2           #result:[I
    :cond_0
    const/4 v3, 0x0

    new-array v2, v3, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .restart local v2       #result:[I
    :cond_1
    monitor-exit p0

    return-object v2

    .line 71
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #result:[I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setObserver(Landroid/app/IApplicationDependencyObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/am/XperiaApplicationDependency;->mObserver:Landroid/app/IApplicationDependencyObserver;

    .line 67
    return-void
.end method
