.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mCurFramerate:F

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    .line 23
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lmiui/maml/elements/FramerateController;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, p0}, Lmiui/maml/ScreenElementRoot;->addFramerateController(Lmiui/maml/elements/FramerateController;)V

    .line 41
    const-string v3, "loop"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    .line 43
    const-string v3, "ControlPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 44
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 45
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 46
    .local v0, e:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v4, v0}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    .end local v0           #e:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v3, v3, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v3, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    .line 49
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 53
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->getFramerate()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/FramerateController;->mCurFramerate:F

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v0, p0, Lmiui/maml/elements/FramerateController;->mCurFramerate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    goto :goto_0
.end method

.method public reset(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 57
    iget-object v1, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iput-wide p1, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    .line 60
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 61
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 62
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->requestUpdate()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFramerate(J)J
    .locals 13
    .parameter "currentTime"

    .prologue
    .line 79
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->updateVisibility()V

    .line 80
    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v8

    if-nez v8, :cond_0

    .line 81
    const-wide v8, 0x7fffffffffffffffL

    .line 117
    :goto_0
    return-wide v8

    .line 84
    :cond_0
    iget-object v10, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 85
    :try_start_0
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v8, :cond_1

    .line 86
    const-wide v8, 0x7fffffffffffffffL

    monitor-exit v10

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 89
    :cond_1
    :try_start_1
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_2

    .line 90
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v1, p1, v8

    .line 91
    .local v1, elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-ltz v8, :cond_2

    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 92
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v8, v1

    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 93
    iput-wide p1, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 94
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v10

    goto :goto_0

    .line 98
    .end local v1           #elapsedTime:J
    :cond_2
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v1, p1, v8

    .line 99
    .restart local v1       #elapsedTime:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_3

    .line 100
    const-wide/16 v1, 0x0

    .line 101
    :cond_3
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    rem-long v6, v1, v8

    .line 102
    .local v6, time:J
    :goto_1
    const-wide/16 v4, 0x0

    .line 103
    .local v4, nextUpdateTime:J
    iget-object v8, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    :goto_2
    if-ltz v3, :cond_8

    .line 104
    iget-object v8, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/FramerateController$ControlPoint;

    .line 105
    .local v0, cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    iget-wide v8, v0, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_7

    .line 106
    iget v8, v0, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v8, v8

    invoke-virtual {p0, v8}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    .line 107
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v3, v8, :cond_4

    .line 108
    const/4 v8, 0x1

    iput-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    .line 110
    :cond_4
    iput-wide p1, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    .line 111
    iget-boolean v8, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v8, :cond_6

    const-wide v8, 0x7fffffffffffffffL

    :goto_3
    iput-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    .line 112
    iget-wide v8, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v10

    goto/16 :goto_0

    .end local v0           #cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    .end local v3           #i:I
    .end local v4           #nextUpdateTime:J
    .end local v6           #time:J
    :cond_5
    move-wide v6, v1

    .line 101
    goto :goto_1

    .line 111
    .restart local v0       #cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    .restart local v3       #i:I
    .restart local v4       #nextUpdateTime:J
    .restart local v6       #time:J
    :cond_6
    sub-long v8, v4, v6

    goto :goto_3

    .line 114
    :cond_7
    iget-wide v4, v0, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    .line 103
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 116
    .end local v0           #cp:Lmiui/maml/elements/FramerateController$ControlPoint;
    :cond_8
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const-wide v8, 0x7fffffffffffffffL

    goto/16 :goto_0
.end method
