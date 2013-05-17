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

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 37
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusable(Z)V

    .line 38
    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->setFocusableInTouchMode(Z)V

    .line 39
    iput-object p2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 40
    new-instance v0, Lmiui/maml/SingleRootListener;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lmiui/maml/SingleRootListener;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RendererController$IRenderable;)V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mListener:Lmiui/maml/SingleRootListener;

    .line 41
    new-instance v0, Lmiui/maml/RendererController;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mListener:Lmiui/maml/SingleRootListener;

    invoke-direct {v0, v1}, Lmiui/maml/RendererController;-><init>(Lmiui/maml/RendererController$Listener;)V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    .line 42
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .locals 2
    .parameter "context"
    .parameter "root"
    .parameter "t"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lmiui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lmiui/maml/ScreenElementRoot;)V

    .line 48
    if-eqz p3, :cond_0

    .line 49
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    .line 51
    iput-object p3, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 52
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/MiAdvancedView;->cleanUp(Z)V

    .line 68
    return-void
.end method

.method public cleanUp(Z)V
    .locals 2
    .parameter "keepResource"

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lmiui/maml/MiAdvancedView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    .line 75
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 76
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->setStop()V

    .line 78
    iput-object v1, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->removeRendererController(Lmiui/maml/RendererController;)V

    .line 81
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->finish()V

    goto :goto_0
.end method

.method public doRender()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->postInvalidate()V

    .line 190
    return-void
.end method

.method public final getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mListener:Lmiui/maml/SingleRootListener;

    invoke-virtual {v0, p0}, Lmiui/maml/SingleRootListener;->setRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 60
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setRenderController(Lmiui/maml/RendererController;)V

    .line 61
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 62
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->addRendererController(Lmiui/maml/RendererController;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 146
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lmiui/maml/RenderThread;

    iget-object v1, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-direct {v0, v1}, Lmiui/maml/RenderThread;-><init>(Lmiui/maml/RendererController;)V

    iput-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    .line 148
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    iget-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 149
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->start()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 156
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 131
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0}, Lmiui/maml/RenderThread;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v0, :cond_2

    .line 135
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

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 139
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
    .line 170
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

    .line 172
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

    .line 174
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 160
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 161
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->selfPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lmiui/maml/MiAdvancedView;->mPaused:Z

    .line 178
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    if-eqz v0, :cond_0

    .line 179
    iget-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mUseExternalRenderThread:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lmiui/maml/MiAdvancedView;->mThread:Lmiui/maml/RenderThread;

    invoke-virtual {v0, v1}, Lmiui/maml/RenderThread;->setPaused(Z)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
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

    .line 112
    iget-object v2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 114
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 115
    const-string v2, "MiAdvancedView"

    const-string v3, "touch point count > 1, set to ACTION_OUTSIDE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v2, p0, Lmiui/maml/MiAdvancedView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    .line 119
    .local v0, b:Z
    iget-boolean v2, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v2, v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 121
    iput-boolean v0, p0, Lmiui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 124
    :cond_1
    iget-object v2, p0, Lmiui/maml/MiAdvancedView;->mRendererController:Lmiui/maml/RendererController;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/RendererController;->postMessage(Landroid/view/MotionEvent;)V

    .line 127
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
    .line 102
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    if-nez p1, :cond_1

    .line 104
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onResume()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/MiAdvancedView;->onPause()V

    goto :goto_0
.end method
