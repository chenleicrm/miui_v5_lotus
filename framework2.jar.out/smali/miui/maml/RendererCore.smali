.class public Lmiui/maml/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mListener:Lmiui/maml/SingleRootListener;

.field private mMultipleRenderable:Lmiui/maml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRendererController:Lmiui/maml/RendererController;

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mThread:Lmiui/maml/RenderThread;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lmiui/maml/MultipleRenderable;

    invoke-direct {v0}, Lmiui/maml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    .line 31
    invoke-direct {p0, p1}, Lmiui/maml/RendererCore;->attach(Lmiui/maml/ScreenElementRoot;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 1
    .parameter "root"
    .parameter "t"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lmiui/maml/MultipleRenderable;

    invoke-direct {v0}, Lmiui/maml/MultipleRenderable;-><init>()V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/maml/RendererCore;->attach(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 36
    return-void
.end method

.method private attach(Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiui/maml/RendererCore;->attach(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .line 145
    return-void
.end method

.method private attach(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 3
    .parameter "root"
    .parameter "t"

    .prologue
    .line 148
    iput-object p2, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    .line 149
    iput-object p1, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 150
    new-instance v0, Lmiui/maml/SingleRootListener;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-direct {v0, v1, v2}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mListener:Lmiui/maml/SingleRootListener;

    .line 151
    new-instance v0, Lmiui/maml/RendererController;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mListener:Lmiui/maml/SingleRootListener;

    invoke-direct {v0, v1}, Lmiui/maml/RendererController;-><init>(Lmiui/maml/RendererController$Listener;)V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    .line 152
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfPause()V

    .line 153
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    .line 154
    iget-object v0, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 155
    return-void
.end method

.method public static create(Landroid/content/Context;Lmiui/maml/ResourceLoader;)Lmiui/maml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, v0}, Lmiui/maml/RendererCore;->create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)Lmiui/maml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "h"

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lmiui/maml/RendererCore;->create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/RenderThread;)Lmiui/maml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "t"

    .prologue
    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lmiui/maml/RendererCore;->create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;
    .locals 8
    .parameter "context"
    .parameter "loader"
    .parameter "t"
    .parameter "h"

    .prologue
    .line 74
    new-instance v0, Lmiui/maml/LifecycleResourceManager;

    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x57e40

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lmiui/maml/LifecycleResourceManager;-><init>(Lmiui/maml/ResourceLoader;JJ)V

    .line 76
    .local v0, rm:Lmiui/maml/LifecycleResourceManager;
    new-instance v6, Lmiui/maml/ScreenContext;

    invoke-direct {v6, p0, v0, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Landroid/os/Handler;)V

    .line 77
    .local v6, mElementContext:Lmiui/maml/ScreenContext;
    new-instance v7, Lmiui/maml/ScreenElementRoot;

    invoke-direct {v7, v6}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    .line 78
    .local v7, root:Lmiui/maml/ScreenElementRoot;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    .line 79
    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/RendererCore;

    invoke-direct {v1, v7, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    goto :goto_0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/maml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, v0}, Lmiui/maml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lmiui/maml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "h"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lmiui/maml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/RendererCore;
    .locals 1
    .parameter "context"
    .parameter "path"
    .parameter "t"

    .prologue
    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lmiui/maml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v0

    return-object v0
.end method

.method public static createFromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;
    .locals 3
    .parameter "context"
    .parameter "path"
    .parameter "t"
    .parameter "h"

    .prologue
    .line 51
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    :cond_2
    const/4 v1, 0x0

    .line 59
    :goto_0
    return-object v1

    .line 57
    :cond_3
    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    invoke-direct {v1, p1}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lmiui/maml/util/ZipResourceLoader;->setLocal(Ljava/util/Locale;)Lmiui/maml/ResourceLoader;

    move-result-object v0

    .line 59
    .local v0, loader:Lmiui/maml/ResourceLoader;
    invoke-static {p0, v0, p2, p3}, Lmiui/maml/RendererCore;->create(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/RenderThread;Landroid/os/Handler;)Lmiui/maml/RendererCore;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->add(Lmiui/maml/RendererController$IRenderable;)V

    .line 94
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfResume()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z

    .line 159
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, v3}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    .line 162
    iput-object v3, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 164
    :cond_0
    iget-object v0, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    .line 166
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    .line 167
    iput-object v3, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    .line 168
    iput-object v3, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    .line 170
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lmiui/maml/RendererCore;->cleanUp()V

    .line 175
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 176
    return-void
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public declared-synchronized pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    iget-object v1, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v1, p1}, Lmiui/maml/MultipleRenderable;->pause(Lmiui/maml/RendererController$IRenderable;)I

    move-result v0

    .line 118
    .local v0, active:I
    if-nez v0, :cond_0

    .line 119
    const-string v1, "RendererCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "self pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v1}, Lmiui/maml/RendererController;->selfPause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    .end local v0           #active:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->remove(Lmiui/maml/RendererController$IRenderable;)V

    .line 104
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v2}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0}, Lmiui/maml/MultipleRenderable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfPause()V

    .line 107
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererCore$OnReleaseListener;

    invoke-interface {v0, p0}, Lmiui/maml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lmiui/maml/RendererCore;)V

    .line 109
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RendererCore;->mReleased:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 138
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/RendererCore;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public declared-synchronized resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/RendererCore;->mCleaned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/RendererCore;->mMultipleRenderable:Lmiui/maml/MultipleRenderable;

    invoke-virtual {v0, p1}, Lmiui/maml/MultipleRenderable;->resume(Lmiui/maml/RendererController$IRenderable;)I

    .line 129
    const-string v0, "RendererCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "self resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lmiui/maml/RendererCore;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnReleaseListener(Lmiui/maml/RendererCore$OnReleaseListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method
