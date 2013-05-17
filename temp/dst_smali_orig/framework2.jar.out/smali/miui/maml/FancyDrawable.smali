.class public Lmiui/maml/FancyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FancyDrawable.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lmiui/maml/RendererCore;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    new-instance v0, Lmiui/maml/FancyDrawable$2;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$2;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .parameter "root"
    .parameter "t"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    new-instance v0, Lmiui/maml/FancyDrawable$2;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$2;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/FancyDrawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    return-void
.end method

.method private doPause()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "doPause: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doResume()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string v0, "doResume: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/maml/FancyDrawable;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/maml/FancyDrawable;->fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;
    .locals 2
    .parameter "context"
    .parameter "path"
    .parameter "t"

    .prologue
    invoke-static {p0, p1, p2}, Lmiui/maml/RendererCore;->createFromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/RendererCore;

    move-result-object v0

    .local v0, rc:Lmiui/maml/RendererCore;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lmiui/maml/FancyDrawable;

    invoke-direct {v1, v0}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    goto :goto_0
.end method

.method private init(Lmiui/maml/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->addRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/FancyDrawable;->setIntrinsicSize(II)V

    return-void
.end method

.method private init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .parameter "root"
    .parameter "t"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init  root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    new-instance v0, Lmiui/maml/RendererCore;

    invoke-direct {v0, p1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "info"

    .prologue
    const-string v0, "FancyDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const-string v0, "cleanUp: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->removeRenderable(Lmiui/maml/RendererController$IRenderable;)V

    return-void
.end method

.method public doRender()V
    .locals 4

    .prologue
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, sa:I
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lmiui/maml/FancyDrawable;->mWidth:I

    iget v3, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/FancyDrawable;->mHeight:I

    iget v4, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/FancyDrawable;->mWidth:I

    iget v5, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/FancyDrawable;->mHeight:I

    iget v6, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v2, p1}, Lmiui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #sa:I
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "FancyDrawable"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string v2, "FancyDrawable"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->cleanUp()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    const/4 v0, -0x3

    return v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/FancyDrawable;->mWidth:I

    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/FancyDrawable;->mHeight:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    iput p1, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    iput p2, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    return-void
.end method
