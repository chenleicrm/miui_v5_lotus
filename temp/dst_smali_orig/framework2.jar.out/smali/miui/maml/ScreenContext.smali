.class public Lmiui/maml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# static fields
.field public static final MAML_PREFERENCES:Ljava/lang/String; = "MamlPreferences"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mController:Lmiui/maml/RendererController;

.field public final mFactory:Lmiui/maml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mParent:Lmiui/maml/ScreenContext;

.field public final mResourceManager:Lmiui/maml/ResourceManager;

.field public final mVariables:Lmiui/maml/data/Variables;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V
    .locals 1
    .parameter "context"
    .parameter "loader"

    .prologue
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "loader"
    .parameter "h"

    .prologue
    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    new-instance v1, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v1}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"

    .prologue
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"
    .parameter "h"

    .prologue
    new-instance v0, Lmiui/maml/ResourceManager;

    invoke-direct {v0, p2}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V
    .locals 2
    .parameter "context"
    .parameter "resourceMgr"

    .prologue
    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "h"

    .prologue
    new-instance v0, Lmiui/maml/elements/ScreenElementFactory;

    invoke-direct {v0}, Lmiui/maml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"

    .prologue
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"
    .parameter "h"

    .prologue
    new-instance v5, Lmiui/maml/data/Variables;

    invoke-direct {v5}, Lmiui/maml/data/Variables;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;Lmiui/maml/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/maml/ResourceManager;Lmiui/maml/elements/ScreenElementFactory;Landroid/os/Handler;Lmiui/maml/data/Variables;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"
    .parameter "h"
    .parameter "v"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, rawContext:Landroid/content/Context;
    if-eqz v0, :cond_0

    .end local v0           #rawContext:Landroid/content/Context;
    :goto_0
    iput-object v0, p0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object p3, p0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    iput-object p4, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    return-void

    .restart local v0       #rawContext:Landroid/content/Context;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->doneRender()V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRenderController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->requestUpdate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method

.method public setExtraResource(I)V
    .locals 1
    .parameter "sw"

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->setExtraResource(I)V

    return-void
.end method

.method public setParentContext(Lmiui/maml/ScreenContext;)V
    .locals 0
    .parameter "parent"

    .prologue
    iput-object p1, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    return-void
.end method

.method public setRenderController(Lmiui/maml/RendererController;)V
    .locals 0
    .parameter "controller"

    .prologue
    iput-object p1, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    return-void
.end method

.method public setResourceDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->setResourceDensity(I)V

    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->setTargetDensity(I)V

    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->shouldUpdate()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ScreenContext;->mParent:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->shouldUpdate()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
