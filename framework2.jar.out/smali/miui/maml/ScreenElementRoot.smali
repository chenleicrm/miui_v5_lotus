.class public Lmiui/maml/ScreenElementRoot;
.super Lmiui/maml/elements/ScreenElement;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/InteractiveListener;


# static fields
.field private static final CALCULATE_FRAME_RATE:Z = true

.field private static final DEFAULT_RES_DENSITY:I = 0xf0

.field private static final DEFAULT_SCREEN_WIDTH:I = 0x1e0

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenElementRoot"

.field private static final ROOT_NAME:Ljava/lang/String; = "__root"

.field private static final VARIABLE_VIEW_HEIGHT:Ljava/lang/String; = "view_height"

.field private static final VARIABLE_VIEW_WIDTH:Ljava/lang/String; = "view_width"


# instance fields
.field private DEFAULT_FRAME_RATE:F

.field private mCheckPoint:J

.field protected mContext:Lmiui/maml/ScreenContext;

.field private mDefaultResourceDensity:I

.field private mDefaultScreenWidth:I

.field protected mElementGroup:Lmiui/maml/elements/ElementGroup;

.field private mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

.field private mFinished:Z

.field protected mFrameRate:F

.field private mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mFramerateControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field private mHeight:F

.field private mKeepResource:Z

.field private mNeedDisallowInterceptTouchEvent:Z

.field private mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mNoAutoScale:Z

.field protected mNormalFrameRate:F

.field private mPreTickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ITicker;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mSoundManager:Lmiui/maml/SoundManager;

.field private mTargetDensity:I

.field private mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchX:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchY:Lmiui/maml/util/IndexedNumberVariable;

.field protected mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

.field private mWidth:F


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v0}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 52
    const/high16 v0, 0x41f0

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 56
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    iput v0, p0, Lmiui/maml/ScreenElementRoot;->mNormalFrameRate:F

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    .line 119
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    .line 120
    iput-object p0, p0, Lmiui/maml/ScreenElementRoot;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 121
    new-instance v0, Lmiui/maml/data/VariableUpdaterManager;

    invoke-direct {v0, p1}, Lmiui/maml/data/VariableUpdaterManager;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 122
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    .line 123
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    .line 124
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_x"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    .line 125
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_y"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    .line 126
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "touch_begin_time"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 127
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "intercept_sys_touch"

    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 129
    new-instance v0, Lmiui/maml/SoundManager;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v0, v1, v2}, Lmiui/maml/SoundManager;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    iput-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    .line 130
    return-void
.end method

.method private loadRawAttrs(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "root"

    .prologue
    .line 401
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 402
    .local v2, nnm:Lorg/w3c/dom/NamedNodeMap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 403
    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 404
    .local v1, item:Lorg/w3c/dom/Node;
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    .end local v1           #item:Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method private processUseVariableUpdater(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 411
    const-string v1, "useVariableUpdater"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, updater:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {p0, v1}, Lmiui/maml/ScreenElementRoot;->onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableUpdaterManager;->addFromTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resolveResource(Lorg/w3c/dom/Element;I)V
    .locals 12
    .parameter "root"
    .parameter "screenWidth"

    .prologue
    .line 422
    const-string v11, "extraResourcesScreenWidth"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, extraResources:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 424
    const-string v11, ","

    invoke-virtual {v4, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, resources:[Ljava/lang/String;
    const v7, 0x7fffffff

    .line 426
    .local v7, minDiff:I
    const/4 v1, 0x0

    .line 427
    .local v1, closestSw:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v10, v0, v5

    .line 429
    .local v10, swStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 430
    .local v9, sw:I
    sub-int v11, p2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 431
    .local v3, diff:I
    if-ge v3, v7, :cond_2

    .line 432
    move v7, v3

    .line 433
    move v1, v9

    .line 434
    if-nez v3, :cond_2

    .line 441
    .end local v3           #diff:I
    .end local v9           #sw:I
    .end local v10           #swStr:Ljava/lang/String;
    :cond_0
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    sub-int v11, p2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 442
    .local v2, defaultDiff:I
    if-lt v2, v7, :cond_1

    .line 443
    iget-object v11, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v11, v1}, Lmiui/maml/ScreenContext;->setExtraResource(I)V

    .line 446
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #closestSw:I
    .end local v2           #defaultDiff:I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #minDiff:I
    .end local v8           #resources:[Ljava/lang/String;
    :cond_1
    return-void

    .line 437
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #closestSw:I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #minDiff:I
    .restart local v8       #resources:[Ljava/lang/String;
    .restart local v10       #swStr:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 427
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 600
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 601
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 603
    :cond_0
    return-void
.end method

.method public addFramerateController(Lmiui/maml/elements/FramerateController;)V
    .locals 1
    .parameter "framerateController"

    .prologue
    .line 580
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method public addPreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 622
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    return-void
.end method

.method public createFramerateToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 193
    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 198
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :cond_1
    :goto_1
    iget v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 208
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->doneRender()V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 202
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 204
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->doneRender()V

    .line 589
    return-void
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 1
    .parameter "name"

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0, p1}, Lmiui/maml/data/VariableBinderManager;->findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 181
    const-string v0, "__root"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    :goto_1
    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 531
    :goto_0
    monitor-exit p0

    return-void

    .line 514
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 517
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->finish()V

    .line 520
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->finish()V

    .line 523
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_4

    .line 524
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->finish()V

    .line 526
    :cond_4
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0}, Lmiui/maml/SoundManager;->release()V

    .line 528
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-boolean v1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    invoke-virtual {v0, v1}, Lmiui/maml/ResourceManager;->finish(Z)V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    return-object v0
.end method

.method public getDefaultScreenWidth()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    return v0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    return v0
.end method

.method public getRawAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 164
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mRawAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResourceDensity()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    return v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 485
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 486
    const-string v0, "ScreenElementRoot"

    const-string v1, "scale not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/high16 v0, 0x3f80

    .line 490
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    goto :goto_0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    return v0
.end method

.method public getTargetDensity()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    return v0
.end method

.method public haptic(I)V
    .locals 0
    .parameter "effectId"

    .prologue
    .line 463
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    .line 214
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 217
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v0, v1, v2}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 220
    const-string v0, "raw_screen_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 221
    const-string v0, "raw_screen_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 222
    const-string v0, "screen_width"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 223
    const-string v0, "screen_height"

    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v2, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 227
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->init()V

    .line 231
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->init()V

    .line 235
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->init()V

    .line 239
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 242
    :cond_3
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->reset()V

    .line 243
    iget v0, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/ScreenElementRoot;->requestFramerate(F)V

    .line 244
    return-void
.end method

.method public load()Z
    .locals 15

    .prologue
    .line 327
    :try_start_0
    iget-object v11, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v11, v11, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v11}, Lmiui/maml/ResourceManager;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 328
    .local v4, root:Lorg/w3c/dom/Element;
    if-nez v4, :cond_0

    .line 329
    const/4 v11, 0x0

    .line 397
    .end local v4           #root:Lorg/w3c/dom/Element;
    :goto_0
    return v11

    .line 332
    .restart local v4       #root:Lorg/w3c/dom/Element;
    :cond_0
    invoke-direct {p0, v4}, Lmiui/maml/ScreenElementRoot;->loadRawAttrs(Lorg/w3c/dom/Element;)V

    .line 333
    const-string v11, "frameRate"

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    invoke-static {v4, v11, v12}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v11

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mNormalFrameRate:F

    .line 334
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mNormalFrameRate:F

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mFrameRate:F

    .line 335
    const-string v11, "noAutoScale"

    invoke-interface {v4, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lmiui/maml/ScreenElementRoot;->mNoAutoScale:Z

    .line 336
    const-string v11, "screenWidth"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v9

    .line 337
    .local v9, width:I
    if-lez v9, :cond_6

    .end local v9           #width:I
    :goto_1
    iput v9, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    .line 338
    const-string v11, "resDensity"

    const/4 v12, -0x1

    invoke-static {v4, v11, v12}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v11

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 340
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 341
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    mul-int/lit16 v11, v11, 0xf0

    div-int/lit16 v11, v11, 0x1e0

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    .line 343
    :cond_1
    iget-object v11, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenContext;->setResourceDensity(I)V

    .line 344
    new-instance v11, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v11, v4, p0}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v11, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    .line 346
    const-string v11, "VariableBinders"

    invoke-static {v4, v11}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 348
    .local v0, binders:Lorg/w3c/dom/Element;
    new-instance v11, Lmiui/maml/data/VariableBinderManager;

    invoke-direct {v11, v0, p0}, Lmiui/maml/data/VariableBinderManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v11, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    .line 350
    const-string v11, "ExternalCommands"

    invoke-static {v4, v11}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 351
    .local v1, commands:Lorg/w3c/dom/Element;
    if-eqz v1, :cond_2

    .line 352
    new-instance v11, Lmiui/maml/ExternalCommandManager;

    invoke-direct {v11, v1, p0}, Lmiui/maml/ExternalCommandManager;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v11, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    .line 356
    :cond_2
    iget-object v11, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v11, v11, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 357
    .local v10, wm:Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 359
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 360
    .local v8, tmpW:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 361
    .local v7, tmpH:I
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 362
    .local v6, rotation:I
    const/4 v11, 0x1

    if-eq v6, v11, :cond_3

    const/4 v11, 0x3

    if-ne v6, v11, :cond_7

    :cond_3
    const/4 v5, 0x1

    .line 363
    .local v5, rotated:Z
    :goto_2
    if-eqz v5, :cond_8

    move v11, v7

    :goto_3
    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    .line 364
    if-eqz v5, :cond_9

    .end local v8           #tmpW:I
    :goto_4
    iput v8, p0, Lmiui/maml/ScreenElementRoot;->mScreenHeight:I

    .line 365
    iget-boolean v11, p0, Lmiui/maml/ScreenElementRoot;->mNoAutoScale:Z

    if-eqz v11, :cond_a

    .line 366
    const/high16 v11, 0x3f80

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 379
    :goto_5
    const-string v11, "width"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    .line 380
    const-string v11, "height"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    .line 381
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 382
    const-string v11, "view_width"

    iget-object v12, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v12, v12, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v13, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 383
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v11, v12

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mWidth:F

    .line 385
    :cond_4
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 386
    const-string v11, "view_height"

    iget-object v12, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v12, v12, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    iget v13, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/Double;)V

    .line 387
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v11, v12

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mHeight:F

    .line 389
    :cond_5
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    invoke-direct {p0, v4, v11}, Lmiui/maml/ScreenElementRoot;->resolveResource(Lorg/w3c/dom/Element;I)V

    .line 390
    invoke-direct {p0, v4}, Lmiui/maml/ScreenElementRoot;->processUseVariableUpdater(Lorg/w3c/dom/Element;)V

    .line 391
    invoke-virtual {p0, v4}, Lmiui/maml/ScreenElementRoot;->onLoad(Lorg/w3c/dom/Element;)Z

    move-result v11

    goto/16 :goto_0

    .line 337
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v2           #display:Landroid/view/Display;
    .end local v5           #rotated:Z
    .end local v6           #rotation:I
    .end local v7           #tmpH:I
    .end local v10           #wm:Landroid/view/WindowManager;
    .restart local v9       #width:I
    :cond_6
    const/16 v9, 0x1e0

    goto/16 :goto_1

    .line 362
    .end local v9           #width:I
    .restart local v0       #binders:Lorg/w3c/dom/Element;
    .restart local v1       #commands:Lorg/w3c/dom/Element;
    .restart local v2       #display:Landroid/view/Display;
    .restart local v6       #rotation:I
    .restart local v7       #tmpH:I
    .restart local v8       #tmpW:I
    .restart local v10       #wm:Landroid/view/WindowManager;
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .restart local v5       #rotated:Z
    :cond_8
    move v11, v8

    .line 363
    goto :goto_3

    :cond_9
    move v8, v7

    .line 364
    goto :goto_4

    .line 368
    .end local v8           #tmpW:I
    :cond_a
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    if-nez v11, :cond_b

    .line 369
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mScreenWidth:I

    int-to-float v11, v11

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mDefaultScreenWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    .line 370
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v11, v11

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 374
    :goto_6
    const-string v11, "ScreenElementRoot"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "init target density: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v11, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenContext;->setTargetDensity(I)V
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_5

    .line 392
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #root:Lorg/w3c/dom/Element;
    .end local v5           #rotated:Z
    .end local v6           #rotation:I
    .end local v7           #tmpH:I
    .end local v10           #wm:Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 393
    .local v3, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v3}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    .line 397
    .end local v3           #e:Lmiui/maml/ScreenElementLoadException;
    :goto_7
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 372
    .restart local v0       #binders:Lorg/w3c/dom/Element;
    .restart local v1       #commands:Lorg/w3c/dom/Element;
    .restart local v2       #display:Landroid/view/Display;
    .restart local v4       #root:Lorg/w3c/dom/Element;
    .restart local v5       #rotated:Z
    .restart local v6       #rotation:I
    .restart local v7       #tmpH:I
    .restart local v10       #wm:Landroid/view/WindowManager;
    :cond_b
    :try_start_1
    iget v11, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    int-to-float v11, v11

    iget v12, p0, Lmiui/maml/ScreenElementRoot;->mDefaultResourceDensity:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, p0, Lmiui/maml/ScreenElementRoot;->mScale:F
    :try_end_1
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 394
    .end local v0           #binders:Lorg/w3c/dom/Element;
    .end local v1           #commands:Lorg/w3c/dom/Element;
    .end local v2           #display:Landroid/view/Display;
    .end local v4           #root:Lorg/w3c/dom/Element;
    .end local v5           #rotated:Z
    .end local v6           #rotation:I
    .end local v7           #tmpH:I
    .end local v10           #wm:Landroid/view/WindowManager;
    :catch_1
    move-exception v3

    .line 395
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public needDisallowInterceptTouchEvent()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    return v0
.end method

.method protected onAddVariableUpdater(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 137
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater;

    invoke-direct {v0, p1}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;)V

    invoke-virtual {p1, v0}, Lmiui/maml/data/VariableUpdaterManager;->add(Lmiui/maml/data/VariableUpdater;)V

    .line 138
    return-void
.end method

.method public onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 0
    .parameter "e"
    .parameter "a"

    .prologue
    .line 577
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 565
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v1, :cond_0

    .line 567
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v1, p1}, Lmiui/maml/ExternalCommandManager;->onCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)Z
    .locals 1
    .parameter "root"

    .prologue
    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v1

    .line 298
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/maml/ScreenElementRoot;->descale(F)F

    move-result v2

    .line 300
    .local v2, y:F
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 301
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 316
    :goto_1
    :pswitch_0
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 317
    .local v0, ret:Z
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    goto :goto_0

    .line 304
    .end local v0           #ret:Z
    :pswitch_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginX:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 305
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginY:Lmiui/maml/util/IndexedNumberVariable;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 306
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mTouchBeginTime:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 308
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 313
    :pswitch_2
    iput-boolean v0, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_1

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 256
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 259
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->pause()V

    .line 262
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->pause()V

    .line 265
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->pause()V

    .line 267
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->pause()V

    .line 268
    return-void
.end method

.method public playSound(Ljava/lang/String;)V
    .locals 3
    .parameter "sound"

    .prologue
    const/4 v2, 0x0

    .line 449
    new-instance v0, Lmiui/maml/SoundManager$SoundOptions;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Lmiui/maml/SoundManager$SoundOptions;-><init>(ZZF)V

    invoke-virtual {p0, p1, v0}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    .line 450
    return-void
.end method

.method public playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V
    .locals 1
    .parameter "sound"
    .parameter "options"

    .prologue
    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->shouldPlaySound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mSoundManager:Lmiui/maml/SoundManager;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/SoundManager;->playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)V

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 177
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/ScreenContext;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removePreTicker(Lmiui/maml/elements/ITicker;)V
    .locals 1
    .parameter "ticker"

    .prologue
    .line 626
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 248
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 249
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 252
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 272
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 275
    :cond_0
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableBinderManager:Lmiui/maml/data/VariableBinderManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableBinderManager;->resume()V

    .line 278
    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/ExternalCommandManager;

    invoke-virtual {v0}, Lmiui/maml/ExternalCommandManager;->resume()V

    .line 281
    :cond_2
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->resume()V

    .line 284
    :cond_3
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0}, Lmiui/maml/ResourceManager;->resume()V

    .line 285
    invoke-virtual {p0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 286
    return-void
.end method

.method public setDefaultFramerate(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 168
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->DEFAULT_FRAME_RATE:F

    .line 169
    return-void
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 506
    iput-boolean p1, p0, Lmiui/maml/ScreenElementRoot;->mKeepResource:Z

    .line 507
    return-void
.end method

.method public setRenderController(Lmiui/maml/RendererController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 592
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->setRenderController(Lmiui/maml/RendererController;)V

    .line 593
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "targetDensity"

    .prologue
    .line 480
    iput p1, p0, Lmiui/maml/ScreenElementRoot;->mTargetDensity:I

    .line 481
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenContext;->setTargetDensity(I)V

    .line 482
    return-void
.end method

.method protected shouldPlaySound()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public tick(J)V
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 142
    iget-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mFinished:Z

    if-eqz v3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v3, p1, p2}, Lmiui/maml/data/VariableUpdaterManager;->tick(J)V

    .line 148
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 150
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mPreTickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ITicker;

    invoke-interface {v3, p1, p2}, Lmiui/maml/elements/ITicker;->tick(J)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_3

    .line 154
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mElementGroup:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    .line 157
    :cond_3
    iget-object v3, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEventVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v3}, Lmiui/maml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v1

    .line 158
    .local v1, d:Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lmiui/maml/ScreenElementRoot;->mNeedDisallowInterceptTouchEvent:Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateFramerate(J)J
    .locals 17
    .parameter "time"

    .prologue
    .line 535
    const-wide v9, 0x7fffffffffffffffL

    .line 536
    .local v9, nextUpdateInterval:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 537
    .local v3, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v3, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/ScreenElementRoot;->mFramerateControllers:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmiui/maml/elements/FramerateController;

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lmiui/maml/elements/FramerateController;->updateFramerate(J)J

    move-result-wide v7

    .line 539
    .local v7, l:J
    cmp-long v13, v7, v9

    if-gez v13, :cond_0

    .line 540
    move-wide v9, v7

    .line 537
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 544
    .end local v7           #l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v13, :cond_2

    .line 545
    new-instance v13, Lmiui/maml/util/IndexedNumberVariable;

    const-string v14, "frame_rate"

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/maml/ScreenElementRoot;->mContext:Lmiui/maml/ScreenContext;

    iget-object v15, v15, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v13, v14, v15}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 546
    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iput-wide v13, v0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 549
    :cond_2
    move-object/from16 v0, p0

    iget-wide v13, v0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_4

    .line 550
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    .line 561
    :cond_3
    :goto_1
    return-wide v9

    .line 552
    :cond_4
    move-object/from16 v0, p0

    iget-wide v13, v0, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    sub-long v11, p1, v13

    .line 553
    .local v11, t:J
    const-wide/16 v13, 0x3e8

    cmp-long v13, v11, v13

    if-ltz v13, :cond_3

    .line 554
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    div-long v4, v13, v11

    .line 555
    .local v4, frameRate:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/ScreenElementRoot;->mFrameRateVar:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v14, v4

    invoke-virtual {v13, v14, v15}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 556
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lmiui/maml/ScreenElementRoot;->mFrames:I

    .line 557
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lmiui/maml/ScreenElementRoot;->mCheckPoint:J

    goto :goto_1
.end method
