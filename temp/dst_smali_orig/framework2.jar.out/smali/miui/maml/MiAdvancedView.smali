.class public Lmiui/maml/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private mListener:Lmiui/maml/SingleRootListener;

.field private mLoggedHardwareRender:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field protected mRendererController:Lmiui/maml/RendererController;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mThread:Lmiui/maml/RenderThread;

.field private mUseExternalRenderThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .parameter "context"
    .parameter "root"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusableInTouchMode(Z)V

    iput-object p2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v0, Lmiui/maml/SingleRootListener;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mListener:Lmiui/maml/SingleRootListener;

    new-instance v0, Lmiui/maml/RendererController;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mListener:Lmiui/maml/SingleRootListener;

    invoke-direct {v0, v1}, Lmiui/maml/RendererController;-><init>(Lmiui/maml/RendererController$Listener;)V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    iput-object p3, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 2
    .parameter "keepResource"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    invoke-virtual {p0, v1}, Lmiui/maml/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    iput-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    goto :goto_0
.end method

.method public doRender()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->postInvalidate()V

    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mListener:Lmiui/maml/SingleRootListener;

    invoke-virtual {v0, p0}, Lmiui/maml/SingleRootListener;->setRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-direct {v0, v1}, Lmiui/maml/RenderThread;-><init>(Lmiui/maml/RendererController;)V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v0, :cond_2

    const-string v0, "MiAdvancedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canvas hardware render: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    :cond_2
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const-string v0, "view_width"

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int v2, p4, p2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    const-string v0, "view_height"

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    sub-int v2, p5, p3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfResume()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    const-string v2, "MiAdvancedView"

    const-string v3, "touch point count > 1, set to ACTION_OUTSIDE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .local v0, b:Z
    iget-boolean v2, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_1
    iget-object v2, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .end local v0           #b:Z
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onPause()V

    goto :goto_0
.end method
