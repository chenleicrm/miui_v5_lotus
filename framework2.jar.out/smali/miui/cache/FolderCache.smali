.class public Lmiui/cache/FolderCache;
.super Ljava/lang/Object;
.source "FolderCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cache/FolderCache$FileInfo;,
        Lmiui/cache/FolderCache$FolderInfo;
    }
.end annotation


# instance fields
.field private folderCache:Lmiui/cache/DataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/cache/DataCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lmiui/cache/FolderCache$FolderInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lmiui/cache/DataCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lmiui/cache/DataCache;-><init>(I)V

    iput-object v0, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    .line 36
    return-void
.end method


# virtual methods
.method protected buildFileInfo(Ljava/lang/String;Lmiui/cache/FolderCache$FolderInfo;)Lmiui/cache/FolderCache$FileInfo;
    .locals 4
    .parameter "filePath"
    .parameter "folderInfo"

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 102
    .local v1, fileInfo:Lmiui/cache/FolderCache$FileInfo;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lmiui/cache/FolderCache;->newFileInfo()Lmiui/cache/FolderCache$FileInfo;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmiui/cache/FolderCache$FileInfo;->name:Ljava/lang/String;

    .line 105
    iput-object p1, v1, Lmiui/cache/FolderCache$FileInfo;->path:Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/cache/FolderCache$FileInfo;->modifiedTime:J

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lmiui/cache/FolderCache$FileInfo;->length:J

    .line 109
    :cond_0
    return-object v1
.end method

.method protected buildFolderInfo(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;
    .locals 8
    .parameter "folderPath"

    .prologue
    .line 76
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, folder:Ljava/io/File;
    const/4 v4, 0x0

    .line 78
    .local v4, folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {p0}, Lmiui/cache/FolderCache;->newFolderInfo()Lmiui/cache/FolderCache$FolderInfo;

    move-result-object v4

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lmiui/cache/FolderCache$FolderInfo;->name:Ljava/lang/String;

    .line 81
    iput-object p1, v4, Lmiui/cache/FolderCache$FolderInfo;->path:Ljava/lang/String;

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v4, Lmiui/cache/FolderCache$FolderInfo;->modifiedTime:J

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, files:[Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v6, 0x0

    :goto_0
    iput v6, v4, Lmiui/cache/FolderCache$FolderInfo;->filesCount:I

    .line 85
    new-instance v6, Ljava/util/HashMap;

    iget v7, v4, Lmiui/cache/FolderCache$FolderInfo;->filesCount:I

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, v4, Lmiui/cache/FolderCache$FolderInfo;->files:Ljava/util/Map;

    .line 86
    if-eqz v2, :cond_2

    .line 87
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lmiui/cache/FolderCache;->buildFileInfo(Ljava/lang/String;Lmiui/cache/FolderCache$FolderInfo;)Lmiui/cache/FolderCache$FileInfo;

    move-result-object v0

    .line 90
    .local v0, fileInfo:Lmiui/cache/FolderCache$FileInfo;
    if-eqz v0, :cond_0

    .line 91
    iget-object v6, v4, Lmiui/cache/FolderCache$FolderInfo;->files:Ljava/util/Map;

    invoke-virtual {p0, v1, v4}, Lmiui/cache/FolderCache;->buildFileInfo(Ljava/lang/String;Lmiui/cache/FolderCache$FolderInfo;)Lmiui/cache/FolderCache$FileInfo;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v0           #fileInfo:Lmiui/cache/FolderCache$FileInfo;
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #i:I
    :cond_1
    array-length v6, v2

    goto :goto_0

    .line 96
    .end local v2           #files:[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public get(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;
    .locals 4
    .parameter "folderPath"

    .prologue
    .line 39
    invoke-static {p1}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v2, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    invoke-virtual {v2, p1}, Lmiui/cache/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 41
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lmiui/cache/FolderCache$FolderInfo;>;"
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 42
    .local v0, folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/cache/FolderCache;->needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Lmiui/cache/FolderCache;->needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lmiui/cache/FolderCache;->buildFolderInfo(Ljava/lang/String;)Lmiui/cache/FolderCache$FolderInfo;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v2, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v3}, Lmiui/cache/DataCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    return-object v0

    .line 41
    .end local v0           #folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/cache/FolderCache$FolderInfo;

    move-object v0, v2

    goto :goto_0

    .line 50
    .restart local v0       #folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isCacheDirty(Ljava/lang/String;)Z
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 56
    invoke-static {p1}, Lmiui/os/ExtraFileUtils;->standardizeFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v2, p0, Lmiui/cache/FolderCache;->folderCache:Lmiui/cache/DataCache;

    invoke-virtual {v2, p1}, Lmiui/cache/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 58
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lmiui/cache/FolderCache$FolderInfo;>;"
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 59
    .local v0, folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/cache/FolderCache;->needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z

    move-result v2

    return v2

    .line 58
    .end local v0           #folderInfo:Lmiui/cache/FolderCache$FolderInfo;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/cache/FolderCache$FolderInfo;

    move-object v0, v2

    goto :goto_0
.end method

.method protected needRefresh(Lmiui/cache/FolderCache$FolderInfo;)Z
    .locals 8
    .parameter "folderInfo"

    .prologue
    const/4 v5, 0x0

    .line 63
    if-eqz p1, :cond_1

    .line 64
    new-instance v2, Ljava/io/File;

    iget-object v6, p1, Lmiui/cache/FolderCache$FolderInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, folder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 66
    .local v3, modifiedTime:J
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, files:[Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, v5

    .line 68
    .local v1, filesCount:I
    :goto_0
    iget-wide v6, p1, Lmiui/cache/FolderCache$FolderInfo;->modifiedTime:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_1

    iget v6, p1, Lmiui/cache/FolderCache$FolderInfo;->filesCount:I

    if-ne v6, v1, :cond_1

    .line 72
    .end local v0           #files:[Ljava/lang/String;
    .end local v1           #filesCount:I
    .end local v2           #folder:Ljava/io/File;
    .end local v3           #modifiedTime:J
    :goto_1
    return v5

    .line 67
    .restart local v0       #files:[Ljava/lang/String;
    .restart local v2       #folder:Ljava/io/File;
    .restart local v3       #modifiedTime:J
    :cond_0
    array-length v1, v0

    goto :goto_0

    .line 72
    .end local v0           #files:[Ljava/lang/String;
    .end local v2           #folder:Ljava/io/File;
    .end local v3           #modifiedTime:J
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method protected newFileInfo()Lmiui/cache/FolderCache$FileInfo;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lmiui/cache/FolderCache$FileInfo;

    invoke-direct {v0}, Lmiui/cache/FolderCache$FileInfo;-><init>()V

    return-object v0
.end method

.method protected newFolderInfo()Lmiui/cache/FolderCache$FolderInfo;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lmiui/cache/FolderCache$FolderInfo;

    invoke-direct {v0}, Lmiui/cache/FolderCache$FolderInfo;-><init>()V

    return-object v0
.end method
