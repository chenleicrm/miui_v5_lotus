.class public Lmiui/v5/view/ActionBarMovableLayout;
.super Lcom/miui/internal/v5/widget/ActionBarLayout;
.source "ActionBarMovableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;,
        Lmiui/v5/view/ActionBarMovableLayout$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final STATE_DOWN:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UP:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivePointerId:I

.field private mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

.field private mInitialMotionY:I

.field private mInitialMotionYSet:Z

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mMotionY:I

.field private mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

.field private mOverScrollDistance:I

.field private mScrollRange:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTabScrollView:Landroid/view/View;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lmiui/v5/view/ActionBarMovableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/v5/view/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/internal/v5/widget/ActionBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    iput v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    iput v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    sget-object v2, Lmiui/R$styleable;->ActionBarMovableLayout:[I

    const v3, 0x60100be

    invoke-virtual {p1, p2, v2, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTouchSlop:I

    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMaximumVelocity:I

    invoke-virtual {p0, v5}, Lmiui/v5/view/ActionBarMovableLayout;->setOverScrollMode(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private inChild(Landroid/view/View;II)Z
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v4, v6

    .local v4, top:I
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v2, v6

    .local v2, left:I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v0, v6

    .local v0, bottom:I
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v3, v6

    .local v3, right:I
    iget-object v6, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-ne p1, v6, :cond_2

    iget-object v6, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTop()I

    move-result v1

    .local v1, containerTop:I
    add-int/2addr v4, v1

    add-int/2addr v0, v1

    .end local v1           #containerTop:I
    :cond_2
    if-lt p3, v4, :cond_0

    if-ge p3, v0, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .local v1, pointerId:I
    iget v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTranslationY(F)V
    .locals 2
    .parameter "motion"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->motionToTranslation(F)F

    move-result v0

    .local v0, y:F
    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->ensureTabScrollView()V

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    .local v11, oldMotionY:I
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    .local v10, motionY:I
    if-eq v11, v10, :cond_0

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v6

    .local v6, range:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v8

    .local v8, distance:I
    sub-int v2, v10, v11

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/4 v9, 0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v0 .. v9}, Lmiui/v5/view/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    .end local v6           #range:I
    .end local v8           #distance:I
    :cond_0
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->postInvalidateOnAnimation()V

    .end local v10           #motionY:I
    .end local v11           #oldMotionY:I
    :cond_1
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalVelocity()I
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method ensureTabScrollView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    return-void
.end method

.method protected fling(I)V
    .locals 11
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .local v10, distance:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .local v8, range:I
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->postInvalidate()V

    return-void
.end method

.method public getOverScrollDistance()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    return v0
.end method

.method public getScrollRange()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    return v0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    if-eq p1, v3, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/miui/internal/v5/widget/ActionBarLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingLeft:I

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lmiui/v5/view/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v1

    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingTop:I

    iget v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarView:Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/miui/internal/v5/widget/ActionBarView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lmiui/v5/view/ActionBarMovableLayout;->getChildMeasureSpec(III)I

    move-result v0

    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected motionToTranslation(F)F
    .locals 3
    .parameter "motion"

    .prologue
    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .local v0, translationY:F
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->ensureTabScrollView()V

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/miui/internal/v5/widget/ActionBarLayout;->onFinishInflate()V

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContext:Landroid/content/Context;

    const v1, 0x60b0007

    invoke-static {v0, v1}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActionBarContainer:Lcom/miui/internal/v5/widget/ActionBarContainer;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionBarMovableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/v5/view/ActionBarMovableLayout;->initOrResetVelocityTracker()V

    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    invoke-direct {p0}, Lmiui/v5/view/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->onScrollBegin()V

    goto :goto_1

    :pswitch_3
    iput-boolean v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    const/4 v1, -0x1

    iput v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    invoke-direct {p0}, Lmiui/v5/view/ActionBarMovableLayout;->recycleVelocityTracker()V

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->onScrollEnd()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Lcom/miui/internal/v5/widget/ActionBarLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionYSet:Z

    if-nez v0, :cond_1

    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    if-gez v0, :cond_0

    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    iput v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    :cond_0
    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    iput v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    iget v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lmiui/v5/view/ActionBarMovableLayout;->applyTranslationY(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionYSet:Z

    :cond_1
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    int-to-float v1, p2

    invoke-virtual {p0, v1}, Lmiui/v5/view/ActionBarMovableLayout;->onScroll(F)V

    iput p2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v0

    .local v0, velocity:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMinimumVelocity:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    neg-int v2, v0

    int-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onFling(FI)V

    .end local v0           #velocity:I
    :cond_0
    return-void
.end method

.method protected onScroll(F)V
    .locals 3
    .parameter "motionY"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/v5/view/ActionBarMovableLayout;->applyTranslationY(F)V

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    iget v1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    int-to-float v2, v2

    div-float v2, p1, v2

    invoke-interface {v0, v1, v2}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onScroll(IF)V

    :cond_0
    return-void
.end method

.method protected onScrollBegin()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v0}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onScrollBegin()V

    :cond_0
    return-void
.end method

.method protected onScrollEnd()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    invoke-interface {v0}, Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;->onScrollEnd()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .parameter "event"

    .prologue
    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    .local v18, action:I
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v19

    .local v19, activePointerIndex:I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    .local v24, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    move/from16 v23, v0

    .local v23, lastMotionY:F
    sub-float v2, v24, v23

    float-to-int v4, v2

    .local v4, deltaY:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollDistance()I

    move-result v10

    .local v10, distance:I
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lmiui/v5/view/ActionBarMovableLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v20

    .local v20, clamped:Z
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual/range {p0 .. p1}, Lmiui/v5/view/ActionBarMovableLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v10           #distance:I
    .end local v19           #activePointerIndex:I
    .end local v20           #clamped:Z
    .end local v23           #lastMotionY:F
    .end local v24           #y:F
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmiui/v5/view/ActionBarMovableLayout;->shouldStartScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->onScrollBegin()V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mIsBeingDragged:Z

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalVelocity()I

    move-result v22

    .local v22, initialVelocity:I
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lmiui/v5/view/ActionBarMovableLayout;->fling(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->getScrollRange()I

    move-result v8

    .restart local v8       #range:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/v5/view/ActionBarMovableLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v8

    invoke-virtual/range {v11 .. v17}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmiui/v5/view/ActionBarMovableLayout;->invalidate()V

    goto/16 :goto_0

    .end local v8           #range:I
    .end local v22           #initialVelocity:I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .local v21, index:I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    goto/16 :goto_0

    .end local v21           #index:I
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lmiui/v5/view/ActionBarMovableLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 9
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->getOverScrollMode()I

    move-result v4

    .local v4, overScrollMode:I
    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalScrollRange()I

    move-result v7

    invoke-virtual {p0}, Lmiui/v5/view/ActionBarMovableLayout;->computeVerticalScrollExtent()I

    move-result v8

    if-le v7, v8, :cond_3

    const/4 v1, 0x1

    .local v1, canScrollVertical:Z
    :goto_0
    if-eqz v4, :cond_0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    const/4 v5, 0x1

    .local v5, overScrollVertical:Z
    :goto_1
    add-int v3, p4, p2

    .local v3, newScrollY:I
    if-nez v5, :cond_1

    const/16 p8, 0x0

    :cond_1
    const/4 v6, 0x0

    .local v6, top:I
    add-int v0, p8, p6

    .local v0, bottom:I
    const/4 v2, 0x0

    .local v2, clampedY:Z
    if-le v3, v0, :cond_5

    move v3, v0

    const/4 v2, 0x1

    :cond_2
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v3, v8, v2}, Lmiui/v5/view/ActionBarMovableLayout;->onOverScrolled(IIZZ)V

    return v2

    .end local v0           #bottom:I
    .end local v1           #canScrollVertical:Z
    .end local v2           #clampedY:Z
    .end local v3           #newScrollY:I
    .end local v5           #overScrollVertical:Z
    .end local v6           #top:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #canScrollVertical:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .restart local v0       #bottom:I
    .restart local v2       #clampedY:Z
    .restart local v3       #newScrollY:I
    .restart local v5       #overScrollVertical:Z
    .restart local v6       #top:I
    :cond_5
    if-gez v3, :cond_2

    const/4 v3, 0x0

    const/4 v2, 0x1

    goto :goto_2
.end method

.method public setCallback(Lmiui/v5/view/ActionBarMovableLayout$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

    return-void
.end method

.method public setInitialMotionY(I)V
    .locals 0
    .parameter "distance"

    .prologue
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mInitialMotionY:I

    return-void
.end method

.method public setOnScrollListener(Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    iput-object p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOnScrollListener:Lmiui/v5/view/ActionBarMovableLayout$OnScrollListener;

    return-void
.end method

.method public setOverScrollDistance(I)V
    .locals 0
    .parameter "distance"

    .prologue
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mOverScrollDistance:I

    return-void
.end method

.method public setScrollRange(I)V
    .locals 0
    .parameter "range"

    .prologue
    iput p1, p0, Lmiui/v5/view/ActionBarMovableLayout;->mScrollRange:I

    return-void
.end method

.method protected shouldStartScroll(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    iget v2, p0, Lmiui/v5/view/ActionBarMovableLayout;->mActivePointerId:I

    .local v2, activePointerId:I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .local v6, pointerIndex:I
    const/4 v11, -0x1

    if-ne v6, v11, :cond_2

    sget-object v11, Lmiui/v5/view/ActionBarMovableLayout;->TAG:Ljava/lang/String;

    const-string v12, "invalid pointer index"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .local v8, x:F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .local v9, y:F
    iget v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    sub-float v11, v9, v11

    float-to-int v10, v11

    .local v10, yDiff:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .local v1, absYDiff:I
    iget v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionX:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v0, v11

    .local v0, absXDiff:I
    iget-object v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mContentView:Landroid/view/ViewGroup;

    float-to-int v12, v8

    float-to-int v13, v9

    invoke-direct {p0, v11, v12, v13}, Lmiui/v5/view/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v4

    .local v4, fitContentView:Z
    iget-object v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTabScrollView:Landroid/view/View;

    float-to-int v12, v8

    float-to-int v13, v9

    invoke-direct {p0, v11, v12, v13}, Lmiui/v5/view/ActionBarMovableLayout;->inChild(Landroid/view/View;II)Z

    move-result v5

    .local v5, fitTabScrollView:Z
    if-nez v4, :cond_3

    if-eqz v5, :cond_5

    :cond_3
    const/4 v3, 0x1

    .local v3, fitContent:Z
    :goto_1
    const/4 v7, 0x0

    .local v7, retval:Z
    if-eqz v3, :cond_4

    iget v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mTouchSlop:I

    if-le v1, v11, :cond_4

    if-le v1, v0, :cond_4

    const/4 v7, 0x1

    iget v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mMotionY:I

    if-nez v11, :cond_4

    if-gez v10, :cond_6

    const/4 v7, 0x0

    :cond_4
    :goto_2
    if-eqz v7, :cond_0

    iput v9, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionY:F

    iput v8, p0, Lmiui/v5/view/ActionBarMovableLayout;->mLastMotionX:F

    if-lez v10, :cond_7

    const/4 v11, 0x1

    :goto_3
    iput v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mState:I

    goto :goto_0

    .end local v3           #fitContent:Z
    .end local v7           #retval:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3       #fitContent:Z
    .restart local v7       #retval:Z
    :cond_6
    iget-object v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lmiui/v5/view/ActionBarMovableLayout;->mCallback:Lmiui/v5/view/ActionBarMovableLayout$Callback;

    invoke-interface {v11}, Lmiui/v5/view/ActionBarMovableLayout$Callback;->isContentVerticalScrolled()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_3
.end method
