.class Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

.field protected mCurrentX:F

.field protected mCurrentY:F

.field private mHeight:Lmiui/maml/data/Expression;

.field protected mName:Ljava/lang/String;

.field protected mNormalSound:Ljava/lang/String;

.field protected mNormalStateElements:Lmiui/maml/elements/ElementGroup;

.field private mNormalStateTrigger:Lmiui/maml/CommandTrigger;

.field private mPointStateVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mPressedSound:Ljava/lang/String;

.field protected mPressedStateElements:Lmiui/maml/elements/ElementGroup;

.field private mPressedStateTrigger:Lmiui/maml/CommandTrigger;

.field protected mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lmiui/maml/elements/ElementGroup;

.field private mReachedStateTrigger:Lmiui/maml/CommandTrigger;

.field private mState:Lmiui/maml/elements/AdvancedSlider$State;

.field private mWidth:Lmiui/maml/data/Expression;

.field protected mX:Lmiui/maml/data/Expression;

.field protected mY:Lmiui/maml/data/Expression;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 353
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    .line 354
    invoke-virtual {p0, p2, p3}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method private loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/ElementGroup;
    .locals 3
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 387
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 388
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v1, v0, v2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 390
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;
    .locals 2
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 395
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, v1, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, v1}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;

    move-result-object v1

    .line 398
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 2
    .parameter "name"

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, ele:Lmiui/maml/elements/ScreenElement;
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 511
    :goto_0
    return-object v1

    .line 501
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 504
    goto :goto_0

    .line 506
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v1, :cond_2

    .line 507
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 509
    goto :goto_0

    .line 511
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 437
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 439
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 441
    :cond_2
    return-void
.end method

.method public getCurrentX()F
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    return v0
.end method

.method public getState()Lmiui/maml/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public getX()F
    .locals 3

    .prologue
    .line 515
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    .line 418
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/maml/data/Expression;

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    .line 419
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 421
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 423
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 425
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v3}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 427
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 429
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, v3}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 431
    :cond_2
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 432
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "wrong node name"

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 359
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 360
    const-string v0, "normalSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 361
    const-string v0, "pressedSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 362
    const-string v0, "reachedSound"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 364
    const-string v0, "x"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/maml/data/Expression;

    .line 365
    const-string v0, "y"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/maml/data/Expression;

    .line 366
    const-string v0, "w"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mWidth:Lmiui/maml/data/Expression;

    .line 367
    const-string v0, "h"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mHeight:Lmiui/maml/data/Expression;

    .line 369
    const-string v0, "NormalState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    .line 371
    const-string v0, "PressedState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    .line 373
    const-string v0, "ReachedState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadGroup(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    .line 375
    const-string v0, "NormalState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    .line 376
    const-string v0, "PressedState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    .line 377
    const-string v0, "ReachedState"

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    .line 379
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    const-string v2, "state"

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 383
    :cond_0
    return-void
.end method

.method public moveTo(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 412
    iput p1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    .line 413
    iput p2, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    .line 414
    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 581
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 583
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 591
    :pswitch_2
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 581
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 446
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 448
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 450
    :cond_2
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 471
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .line 472
    .local v1, x:F
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v5}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .line 473
    .local v2, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 474
    .local v0, rs:I
    iget v3, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentX:F

    sub-float/2addr v3, v1

    iget v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentY:F

    sub-float/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 475
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    if-eqz v3, :cond_0

    .line 476
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 477
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 478
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 462
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 464
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 466
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 468
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 455
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 457
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 459
    :cond_2
    return-void
.end method

.method public setState(Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 8
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 531
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne v6, p1, :cond_0

    .line 574
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    .line 534
    .local v1, preState:Lmiui/maml/elements/AdvancedSlider$State;
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    .line 535
    const/4 v0, 0x0

    .line 536
    .local v0, ele:Lmiui/maml/elements/ScreenElement;
    const/4 v2, 0x0

    .line 537
    .local v2, reset:Z
    const/4 v3, 0x0

    .line 538
    .local v3, state:I
    sget-object v6, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p1}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 559
    :goto_1
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    if-eq v6, v0, :cond_3

    .line 560
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    if-eqz v6, :cond_1

    .line 561
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v6, v5}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 562
    :cond_1
    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {v0, v4}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 564
    :cond_2
    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    .line 567
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 568
    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->reset()V

    .line 570
    :cond_4
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v4, :cond_5

    .line 571
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 573
    :cond_5
    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p0, v1, v4}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 540
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    .line 542
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_6

    move v2, v4

    .line 543
    :goto_2
    goto :goto_1

    :cond_6
    move v2, v5

    .line 542
    goto :goto_2

    .line 545
    :pswitch_1
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_7

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    .line 548
    :goto_3
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v6}, Lmiui/maml/elements/AdvancedSlider;->access$500(Lmiui/maml/elements/AdvancedSlider;)Z

    move-result v6

    if-nez v6, :cond_8

    move v2, v4

    .line 549
    :goto_4
    const/4 v3, 0x1

    .line 550
    goto :goto_1

    .line 545
    :cond_7
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_3

    :cond_8
    move v2, v5

    .line 548
    goto :goto_4

    .line 552
    :pswitch_2
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_9

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    .line 555
    :goto_5
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_b

    move v2, v4

    .line 556
    :goto_6
    const/4 v3, 0x2

    goto :goto_1

    .line 552
    :cond_9
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v6, :cond_a

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_5

    :cond_b
    move v2, v5

    .line 555
    goto :goto_6

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 486
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 488
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 490
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 492
    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 1
    .parameter "currentTime"

    .prologue
    .line 481
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 483
    :cond_0
    return-void
.end method

.method public touched(FF)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    .line 402
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, v7, Lmiui/maml/elements/AdvancedSlider;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, v7, Lmiui/maml/elements/AdvancedSlider;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v7}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v4

    .line 403
    .local v4, parentX:F
    :goto_0
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, v7, Lmiui/maml/elements/AdvancedSlider;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v6, v6, Lmiui/maml/elements/AdvancedSlider;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v6}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v5

    .line 404
    .local v5, parentY:F
    :goto_1
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mX:Lmiui/maml/data/Expression;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v2

    .line 405
    .local v2, cx:F
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mWidth:Lmiui/maml/data/Expression;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v1

    .line 406
    .local v1, cw:F
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mY:Lmiui/maml/data/Expression;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v3

    .line 407
    .local v3, cy:F
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mHeight:Lmiui/maml/data/Expression;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v8}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/elements/AdvancedSlider;->scale(D)F

    move-result v0

    .line 408
    .local v0, ch:F
    add-float v6, v4, v2

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_2

    add-float v6, v4, v2

    add-float/2addr v6, v1

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_2

    add-float v6, v5, v3

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_2

    add-float v6, v5, v3

    add-float/2addr v6, v0

    cmpg-float v6, p2, v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    return v6

    .end local v0           #ch:F
    .end local v1           #cw:F
    .end local v2           #cx:F
    .end local v3           #cy:F
    .end local v4           #parentX:F
    .end local v5           #parentY:F
    :cond_0
    move v4, v6

    .line 402
    goto :goto_0

    .restart local v4       #parentX:F
    :cond_1
    move v5, v6

    .line 403
    goto :goto_1

    .line 408
    .restart local v0       #ch:F
    .restart local v1       #cw:F
    .restart local v2       #cx:F
    .restart local v3       #cy:F
    .restart local v5       #parentY:F
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method
