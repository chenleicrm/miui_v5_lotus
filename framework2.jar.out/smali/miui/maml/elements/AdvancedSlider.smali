.class public Lmiui/maml/elements/AdvancedSlider;
.super Lmiui/maml/elements/ScreenElement;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AdvancedSlider$1;,
        Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;,
        Lmiui/maml/elements/AdvancedSlider$EndPoint;,
        Lmiui/maml/elements/AdvancedSlider$UnlockAction;,
        Lmiui/maml/elements/AdvancedSlider$Position;,
        Lmiui/maml/elements/AdvancedSlider$StartPoint;,
        Lmiui/maml/elements/AdvancedSlider$SliderPoint;,
        Lmiui/maml/elements/AdvancedSlider$State;,
        Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;,
        Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

.field private mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveDistVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMoveXVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMoveYVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mPressed:Z

.field private mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

.field private mStateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lmiui/maml/elements/AdvancedSlider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmiui/maml/elements/AdvancedSlider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    .line 273
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "state"

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 275
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_x"

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 276
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_y"

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 277
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mName:Ljava/lang/String;

    const-string v2, "move_dist"

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 279
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {p2, v0}, Lmiui/maml/ScreenElementRoot;->addPreTicker(Lmiui/maml/elements/ITicker;)V

    .line 280
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 281
    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider;->cancelMoving()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/AdvancedSlider;)Lmiui/maml/elements/AdvancedSlider$StartPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/AdvancedSlider;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    return-void
.end method

.method static synthetic access$500(Lmiui/maml/elements/AdvancedSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lmiui/maml/elements/AdvancedSlider;->mPressed:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    return v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/AdvancedSlider;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    return v0
.end method

.method private cancelMoving()V
    .locals 0

    .prologue
    .line 1170
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 1171
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->requestUpdate()V

    .line 1172
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onCancel()V

    .line 1173
    return-void
.end method

.method private checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 6
    .parameter "point"
    .parameter "endPoint"

    .prologue
    .line 1115
    const/4 v2, 0x0

    .line 1116
    .local v2, reached:Z
    iget-wide v3, p1, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v3, v3

    iget-wide v4, p1, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->touched(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1117
    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getState()Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v3

    sget-object v4, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    if-eq v3, v4, :cond_2

    .line 1118
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 1119
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1120
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    if-eq v0, p2, :cond_0

    .line 1121
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 1123
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_1
    iget-object v3, p2, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmiui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 1125
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    .line 1129
    :goto_1
    return v2

    .line 1127
    :cond_3
    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {p2, v3}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_1
.end method

.method private checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 1054
    const v3, 0x7f7fffff

    .line 1055
    .local v3, minDist:F
    const/4 v4, 0x0

    .line 1056
    .local v4, point:Lmiui/maml/util/Utils$Point;
    new-instance v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    invoke-direct {v7, p0, v8}, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V

    .line 1058
    .local v7, result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1059
    .local v1, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    #calls: Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    invoke-static {v1, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$1000(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;

    move-result-object v5

    .line 1060
    .local v5, pt:Lmiui/maml/util/Utils$Point;
    invoke-virtual {v1, v5, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F

    move-result v0

    .line 1061
    .local v0, di:F
    cmpg-float v9, v0, v3

    if-gez v9, :cond_0

    .line 1062
    move v3, v0

    .line 1063
    move-object v4, v5

    .line 1064
    iput-object v1, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_0

    .line 1067
    .end local v0           #di:F
    .end local v1           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    .end local v5           #pt:Lmiui/maml/util/Utils$Point;
    :cond_1
    const/4 v6, 0x0

    .line 1070
    .local v6, reached:Z
    const v9, 0x7f7fffff

    cmpg-float v9, v3, v9

    if-gez v9, :cond_6

    .line 1071
    iget-wide v8, v4, Lmiui/maml/util/Utils$Point;->x:D

    double-to-float v8, v8

    iget-wide v9, v4, Lmiui/maml/util/Utils$Point;->y:D

    double-to-float v9, v9

    invoke-direct {p0, v8, v9}, Lmiui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 1074
    const v8, 0x7effffff

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 1076
    iget-object v8, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v4, v8}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    .line 1093
    :cond_2
    :goto_1
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    if-eqz v6, :cond_7

    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    :goto_2
    invoke-virtual {v9, v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 1094
    iget-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v8, :cond_3

    .line 1095
    iget-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v6, :cond_8

    const-wide/high16 v8, 0x4000

    :goto_3
    invoke-virtual {v10, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1097
    :cond_3
    iput-boolean v6, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 1098
    .end local v7           #result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :goto_4
    return-object v7

    .line 1079
    .restart local v7       #result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :cond_4
    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1080
    .restart local v1       #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    #getter for: Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;
    invoke-static {v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->access$300(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1082
    invoke-direct {p0, v4, v1}, Lmiui/maml/elements/AdvancedSlider;->checkEndPoint(Lmiui/maml/util/Utils$Point;Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1083
    iput-object v1, v7, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    goto :goto_1

    .line 1089
    .end local v1           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_6
    const-string v9, "LockScreen_AdvancedSlider"

    const-string v10, "unlock touch canceled due to exceeding tollerance"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 1090
    goto :goto_4

    .line 1093
    :cond_7
    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    goto :goto_2

    .line 1095
    :cond_8
    const-wide/high16 v8, 0x3ff0

    goto :goto_3
.end method

.method private doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z
    .locals 2
    .parameter "endPoint"

    .prologue
    .line 1134
    const/4 v0, 0x0

    .line 1135
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$UnlockAction;

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$UnlockAction;

    invoke-virtual {v1}, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->perform()Landroid/content/Intent;

    move-result-object v0

    .line 1139
    :cond_0
    iget-object v1, p1, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lmiui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private loadEndPoint(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 302
    const-string v3, "EndPoint"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 303
    .local v2, nodeList:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 304
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 305
    .local v1, item:Lorg/w3c/dom/Element;
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {v4, p0, v1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .end local v1           #item:Lorg/w3c/dom/Element;
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    const-string v4, "no end point for unlocker!"

    invoke-static {v3, v4}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 308
    return-void

    .line 307
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadStartPoint(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 295
    const-string v1, "StartPoint"

    invoke-static {p1, v1}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 296
    .local v0, ele:Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "no StartPoint node"

    invoke-static {v1, v2}, Lmiui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 297
    new-instance v1, Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-direct {v1, p0, v0}, Lmiui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    .line 298
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveStartPoint(FF)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1102
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v6, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 1104
    iget-boolean v6, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v6, :cond_0

    .line 1105
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mCurrentX:F

    invoke-virtual {p0, v6}, Lmiui/maml/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mX:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    sub-double v2, v6, v8

    .line 1106
    .local v2, move_x:D
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget v6, v6, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mCurrentY:F

    invoke-virtual {p0, v6}, Lmiui/maml/elements/AdvancedSlider;->descale(F)F

    move-result v6

    float-to-double v6, v6

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v8, v8, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mY:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v8

    sub-double v4, v6, v8

    .line 1107
    .local v4, move_y:D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1108
    .local v0, move_dist:D
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v6, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1109
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v6, v4, v5}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1110
    iget-object v6, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v6, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1112
    .end local v0           #move_dist:D
    .end local v2           #move_x:D
    .end local v4           #move_y:D
    :cond_0
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1194
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1195
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->render(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1197
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->render(Landroid/graphics/Canvas;)V

    .line 1198
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 1221
    invoke-super {p0, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1222
    .local v0, ele:Lmiui/maml/elements/ScreenElement;
    if-eqz v0, :cond_0

    move-object v3, v0

    .line 1235
    :goto_0
    return-object v3

    .line 1225
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 1227
    goto :goto_0

    .line 1229
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1230
    .local v1, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v1, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_2

    move-object v3, v0

    .line 1232
    goto :goto_0

    .line 1235
    .end local v1           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 927
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    .line 928
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->finish()V

    .line 929
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 930
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->finish()V

    goto :goto_0

    .line 933
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 934
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 916
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 917
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 918
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->init()V

    .line 919
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 920
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->init()V

    goto :goto_0

    .line 922
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 923
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 284
    sget-boolean v0, Lmiui/maml/elements/AdvancedSlider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 289
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->load(Lorg/w3c/dom/Element;)V

    .line 290
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider;->loadStartPoint(Lorg/w3c/dom/Element;)V

    .line 291
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider;->loadEndPoint(Lorg/w3c/dom/Element;)V

    .line 292
    return-void
.end method

.method protected onCancel()V
    .locals 0

    .prologue
    .line 1148
    return-void
.end method

.method protected onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 1163
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    invoke-interface {v0, p1}, Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    move-result v0

    .line 1166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onReach(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1157
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 1158
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 1153
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->haptic(I)V

    .line 1144
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 966
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v8

    if-nez v8, :cond_1

    move v4, v7

    .line 1041
    :cond_0
    :goto_0
    return v4

    .line 969
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 970
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 972
    .local v6, y:F
    const/4 v4, 0x0

    .line 973
    .local v4, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 975
    :pswitch_0
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v7, v5, v6}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->touched(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 976
    iput-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 977
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v7

    sub-float v7, v5, v7

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 978
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v7

    sub-float v7, v6, v7

    iput v7, p0, Lmiui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 979
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v8, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 980
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 981
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    sget-object v7, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v7}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_1

    .line 983
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_2
    iput-boolean v9, p0, Lmiui/maml/elements/AdvancedSlider;->mPressed:Z

    .line 987
    iget-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v7, :cond_3

    .line 988
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/util/IndexedNumberVariable;

    const-wide/high16 v8, 0x3ff0

    invoke-virtual {v7, v8, v9}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 990
    :cond_3
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v7}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->init()V

    .line 991
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onStart()V

    .line 992
    const/4 v4, 0x1

    goto :goto_0

    .line 996
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_1
    iget-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v8, :cond_0

    .line 997
    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 998
    .local v3, result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_4

    .line 999
    iget-object v7, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1005
    :goto_2
    const/4 v4, 0x1

    .line 1006
    goto :goto_0

    .line 1001
    :cond_4
    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v8, v9}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 1002
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1003
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    goto :goto_2

    .line 1010
    .end local v3           #result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_2
    const/4 v2, 0x0

    .line 1011
    .local v2, launched:Z
    iget-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v8, :cond_0

    .line 1012
    const-string v8, "LockScreen_AdvancedSlider"

    const-string v9, "unlock touch up"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-direct {p0, v5, v6}, Lmiui/maml/elements/AdvancedSlider;->checkTouch(FF)Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;

    move-result-object v3

    .line 1014
    .restart local v3       #result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    if-eqz v3, :cond_6

    .line 1015
    iget-boolean v8, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    if-eqz v8, :cond_5

    .line 1016
    iget-object v8, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-direct {p0, v8}, Lmiui/maml/elements/AdvancedSlider;->doLaunch(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Z

    move-result v2

    .line 1018
    :cond_5
    iget-object v8, v3, Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    iput-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1021
    :cond_6
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1022
    if-nez v2, :cond_7

    .line 1023
    iget-object v7, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    invoke-virtual {v7, v8}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 1024
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    .line 1026
    :cond_7
    const/4 v4, 0x1

    .line 1027
    goto/16 :goto_0

    .line 1031
    .end local v2           #launched:Z
    .end local v3           #result:Lmiui/maml/elements/AdvancedSlider$CheckTouchResult;
    :pswitch_3
    iget-boolean v8, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    if-eqz v8, :cond_0

    .line 1032
    iget-object v8, p0, Lmiui/maml/elements/AdvancedSlider;->mBounceAnimationController:Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;

    invoke-virtual {v8, v10}, Lmiui/maml/elements/AdvancedSlider$BounceAnimationController;->startCancelMoving(Lmiui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 1033
    iput-object v10, p0, Lmiui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1034
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1035
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->onRelease()V

    .line 1036
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 938
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 939
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->pause()V

    .line 940
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 941
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->pause()V

    goto :goto_0

    .line 943
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->resetInner()V

    .line 944
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 957
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 958
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->reset(J)V

    .line 959
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 960
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->reset(J)V

    goto :goto_0

    .line 962
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method protected resetInner()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 1176
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mPressed:Z

    .line 1177
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getX()F

    move-result v3

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v4}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 1178
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    sget-object v3, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 1179
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1180
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    sget-object v2, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->setState(Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 1183
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider;->mHasName:Z

    if-eqz v2, :cond_1

    .line 1184
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveXVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1185
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveYVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1186
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mMoveDistVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1187
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStateVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v2, v5, v6}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 1189
    :cond_1
    iput-boolean v7, p0, Lmiui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 1190
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 948
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 949
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->resume()V

    .line 950
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 951
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->resume()V

    goto :goto_0

    .line 953
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public setOnLaunchListener(Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 311
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lmiui/maml/elements/AdvancedSlider$OnLaunchListener;

    .line 312
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 1213
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->showCategory(Ljava/lang/String;Z)V

    .line 1214
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1215
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->showCategory(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1217
    .end local v0           #ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 1202
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 1203
    invoke-virtual {p0}, Lmiui/maml/elements/AdvancedSlider;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1210
    :cond_0
    return-void

    .line 1206
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mStartPoint:Lmiui/maml/elements/AdvancedSlider$StartPoint;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/AdvancedSlider$StartPoint;->tick(J)V

    .line 1207
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;

    .line 1208
    .local v0, ep:Lmiui/maml/elements/AdvancedSlider$EndPoint;
    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->tick(J)V

    goto :goto_0
.end method
