.class public Lmiui/maml/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Lmiui/maml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/RendererController$IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V
    .locals 2
    .parameter "root"
    .parameter "renderable"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "renderable is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 20
    invoke-virtual {p0, p1}, Lmiui/maml/SingleRootListener;->setRoot(Lmiui/maml/ScreenElementRoot;)V

    .line 21
    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/RendererController$IRenderable;

    .line 82
    .local v0, r:Lmiui/maml/RendererController$IRenderable;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lmiui/maml/RendererController$IRenderable;->doRender()V

    .line 84
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->finish()V

    .line 38
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 43
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-string v1, "SingleRootListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 55
    const-string v1, "SingleRootListener"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->pause()V

    .line 62
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->resume()V

    .line 67
    return-void
.end method

.method public setRenderable(Lmiui/maml/RendererController$IRenderable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "root is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public setRoot(Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "root is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 27
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ScreenElementRoot;->tick(J)V

    .line 72
    return-void
.end method

.method public updateFramerate(J)J
    .locals 2
    .parameter "time"

    .prologue
    .line 76
    iget-object v0, p0, Lmiui/maml/SingleRootListener;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/ScreenElementRoot;->updateFramerate(J)J

    move-result-wide v0

    return-wide v0
.end method
