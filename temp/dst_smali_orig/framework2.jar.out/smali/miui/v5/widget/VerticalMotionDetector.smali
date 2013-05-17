.class public Lmiui/v5/widget/VerticalMotionDetector;
.super Ljava/lang/Object;
.source "VerticalMotionDetector.java"


# static fields
.field static final INVALID_POINTER:I = -0x1

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mIsBeingDragged:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mStartMotionX:I

.field private mStartMotionY:I

.field private mStrategy:Lmiui/v5/widget/MotionDetectListener;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/v5/widget/VerticalMotionDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/widget/VerticalMotionDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iput-boolean v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    return-void
.end method

.method private cancelDragging(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1, p2}, Lmiui/v5/widget/MotionDetectListener;->onMoveCancel(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private clearVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void
.end method

.method private finishDragging(IIZ)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "hasTracker"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    if-eqz p3, :cond_2

    iget-object v6, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_1
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v6}, Lmiui/v5/widget/MotionDetectListener;->onMoveFinish(Landroid/view/View;IIIILandroid/view/VelocityTracker;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerDown(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .local v1, index:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .local v0, id:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .local v3, y:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .local v2, x:I
    iput v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->clearVelocityTracker()V

    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v2, v5, 0x8

    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, pointerId:I
    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    if-ne v1, v5, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .local v4, y:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v3, v5

    .local v3, x:I
    iput v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iput v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .end local v0           #newPointerIndex:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private startDragging(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    iput p2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    iput p1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p1, p2}, Lmiui/v5/widget/MotionDetectListener;->onMoveStart(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public static trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "tracker"
    .parameter "event"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .local v1, deltaY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method


# virtual methods
.method public getMotionStrategy()Lmiui/v5/widget/MotionDetectListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    return-object v0
.end method

.method public isBeingDragged()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    return v0
.end method

.method public isMovable(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectListener;->isMovable(Landroid/view/View;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v5, -0x1

    const/4 v12, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    .local v0, strategy:Lmiui/v5/widget/MotionDetectListener;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .local v6, action:I
    const/4 v4, 0x2

    if-ne v6, v4, :cond_1

    iget-boolean v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v4, :cond_1

    move v1, v12

    goto :goto_0

    :cond_1
    and-int/lit16 v4, v6, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v7, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    .local v7, activePointerId:I
    if-eq v7, v5, :cond_2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .local v9, pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v3, v1

    .local v3, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .local v2, x:I
    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectListener;->isMovable(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->clearVelocityTracker()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .local v11, yDiff:I
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .local v10, xDiff:I
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    if-le v11, v1, :cond_2

    if-ge v10, v11, :cond_2

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, p1}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .local v8, parent:Landroid/view/ViewParent;
    if-eqz v8, :cond_2

    invoke-interface {v8, v12}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v2           #x:I
    .end local v3           #y:I
    .end local v7           #activePointerId:I
    .end local v8           #parent:Landroid/view/ViewParent;
    .end local v9           #pointerIndex:I
    .end local v10           #xDiff:I
    .end local v11           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .restart local v3       #y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .restart local v2       #x:I
    iput v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->initOrResetVelocityTracker()V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v1, p1}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v3}, Lmiui/v5/widget/MotionDetectListener;->moveImmediately(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    goto/16 :goto_1

    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_3
    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .restart local v9       #pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .restart local v3       #y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .restart local v2       #x:I
    if-ne v6, v12, :cond_5

    invoke-direct {p0, v2, v3, v1}, Lmiui/v5/widget/VerticalMotionDetector;->finishDragging(IIZ)V

    :goto_2
    iput v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->recycleVelocityTracker()V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v2, v3}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    goto :goto_2

    .end local v2           #x:I
    .end local v3           #y:I
    .end local v9           #pointerIndex:I
    :pswitch_4
    invoke-direct {p0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .restart local v9       #pointerIndex:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v13, 0x1

    iget-object v0, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    .local v0, strategy:Lmiui/v5/widget/MotionDetectListener;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->initVelocityTrackerIfNotExists()V

    iget-object v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v3, p1}, Lmiui/v5/widget/VerticalMotionDetector;->trackMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .local v6, action:I
    and-int/lit16 v3, v6, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v1, v13

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v12, v3

    .local v12, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v2, v3

    .local v2, x:I
    iput v12, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v2, v12}, Lmiui/v5/widget/MotionDetectListener;->moveImmediately(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2, v12}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .local v10, parent:Landroid/view/ViewParent;
    if-eqz v10, :cond_1

    invoke-interface {v10, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .end local v10           #parent:Landroid/view/ViewParent;
    :cond_2
    invoke-direct {p0, v2, v12}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    goto :goto_1

    .end local v2           #x:I
    .end local v12           #y:I
    :pswitch_2
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .local v7, activePointerIndex:I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v12, v1

    .restart local v12       #y:I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .restart local v2       #x:I
    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    sub-int v9, v1, v12

    .local v9, deltaY:I
    const/4 v8, 0x0

    .local v8, adjust:I
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-nez v1, :cond_4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    if-le v1, v3, :cond_4

    invoke-direct {p0, v2, v12}, Lmiui/v5/widget/VerticalMotionDetector;->startDragging(II)V

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .restart local v10       #parent:Landroid/view/ViewParent;
    if-eqz v10, :cond_3

    invoke-interface {v10, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    if-lez v9, :cond_6

    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    neg-int v8, v1

    .end local v10           #parent:Landroid/view/ViewParent;
    :cond_4
    :goto_2
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mView:Landroid/view/ViewGroup;

    add-int v3, v12, v8

    iget v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionX:I

    iget v5, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStartMotionY:I

    invoke-interface/range {v0 .. v5}, Lmiui/v5/widget/MotionDetectListener;->onMove(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->clearVelocityTracker()V

    :cond_5
    iput v12, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionY:I

    iput v2, p0, Lmiui/v5/widget/VerticalMotionDetector;->mLastMotionX:I

    goto :goto_1

    .restart local v10       #parent:Landroid/view/ViewParent;
    :cond_6
    iget v8, p0, Lmiui/v5/widget/VerticalMotionDetector;->mTouchSlop:I

    goto :goto_2

    .end local v2           #x:I
    .end local v7           #activePointerIndex:I
    .end local v8           #adjust:I
    .end local v9           #deltaY:I
    .end local v10           #parent:Landroid/view/ViewParent;
    .end local v12           #y:I
    :pswitch_3
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .local v11, pointerIndex:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v12, v1

    .restart local v12       #y:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .restart local v2       #x:I
    invoke-direct {p0, v2, v12, v13}, Lmiui/v5/widget/VerticalMotionDetector;->finishDragging(IIZ)V

    iput v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->recycleVelocityTracker()V

    goto/16 :goto_1

    .end local v2           #x:I
    .end local v11           #pointerIndex:I
    .end local v12           #y:I
    :pswitch_4
    iget-boolean v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .restart local v11       #pointerIndex:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v12, v1

    .restart local v12       #y:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v2, v1

    .restart local v2       #x:I
    invoke-direct {p0, v2, v12}, Lmiui/v5/widget/VerticalMotionDetector;->cancelDragging(II)V

    iput v4, p0, Lmiui/v5/widget/VerticalMotionDetector;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/v5/widget/VerticalMotionDetector;->recycleVelocityTracker()V

    goto/16 :goto_1

    .end local v2           #x:I
    .end local v11           #pointerIndex:I
    .end local v12           #y:I
    :pswitch_5
    invoke-direct {p0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Lmiui/v5/widget/VerticalMotionDetector;->onSecondaryPointerDown(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public setMotionStrategy(Lmiui/v5/widget/MotionDetectListener;)V
    .locals 0
    .parameter "strategy"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/VerticalMotionDetector;->mStrategy:Lmiui/v5/widget/MotionDetectListener;

    return-void
.end method
