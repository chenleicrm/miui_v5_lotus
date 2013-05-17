.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$FlingRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 195
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput v7, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 89
    const/16 v5, 0x190

    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 126
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    .line 132
    new-instance v5, Landroid/widget/Gallery$1;

    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 157
    iput-boolean v6, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 162
    iput-boolean v6, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 188
    iput-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 201
    new-instance v5, Landroid/view/GestureDetector;

    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 202
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 204
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 208
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 209
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    .line 212
    :cond_0
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 214
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 215
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    .line 218
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 220
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 222
    const/4 v5, 0x3

    const/high16 v6, 0x3f00

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 224
    .local v4, unselectedAlpha:F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 226
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 232
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    .line 233
    return-void
.end method

.method static synthetic access$002(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 922
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    move-result v3

    .line 923
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 925
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 927
    .local v2, childTop:I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 940
    :goto_2
    return v2

    .line 922
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 923
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 929
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 930
    goto :goto_2

    .line 932
    :sswitch_1
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 934
    .local v0, availableSpace:I
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 935
    goto :goto_2

    .line 937
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 927
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .parameter "toLeft"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    .line 474
    .local v7, numChildren:I
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 475
    .local v2, firstPosition:I
    const/4 v8, 0x0

    .line 476
    .local v8, start:I
    const/4 v1, 0x0

    .line 478
    .local v1, count:I
    if-eqz p1, :cond_5

    .line 479
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 480
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 481
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 482
    .local v6, n:I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    if-lt v9, v3, :cond_4

    .line 491
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-nez v9, :cond_1

    .line 492
    const/4 v8, 0x0

    .line 512
    .end local v3           #galleryLeft:I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    .line 514
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v9, :cond_2

    .line 515
    iget v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/2addr v9, v1

    iput v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 517
    :cond_2
    return-void

    .restart local v3       #galleryLeft:I
    :cond_3
    move v6, v5

    .line 481
    goto :goto_1

    .line 486
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_4
    move v8, v6

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 488
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 480
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 495
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    .end local v6           #n:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 496
    .local v4, galleryRight:I
    add-int/lit8 v5, v7, -0x1

    .restart local v5       #i:I
    :goto_3
    if-ltz v5, :cond_6

    .line 497
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_7

    add-int/lit8 v9, v7, -0x1

    sub-int v6, v9, v5

    .line 498
    .restart local v6       #n:I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 499
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-gt v9, v4, :cond_8

    .line 507
    .end local v0           #child:Landroid/view/View;
    .end local v6           #n:I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v9, :cond_1

    .line 508
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move v6, v5

    .line 497
    goto :goto_4

    .line 502
    .restart local v0       #child:Landroid/view/View;
    .restart local v6       #n:I
    :cond_8
    move v8, v6

    .line 503
    add-int/lit8 v1, v1, 0x1

    .line 504
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    add-int v10, v2, v6

    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 496
    add-int/lit8 v5, v5, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1164
    const/4 v6, 0x0

    .line 1166
    .local v6, handled:Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1171
    :cond_0
    if-nez v6, :cond_1

    .line 1172
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1173
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1176
    :cond_1
    if-eqz v6, :cond_2

    .line 1177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1180
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1100
    if-eqz p1, :cond_0

    .line 1101
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1104
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1105
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1109
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1110
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1109
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1113
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setPressed(Z)V

    .line 1114
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 717
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 718
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 721
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 725
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 726
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 727
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 735
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 736
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 740
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 743
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 744
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 730
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    const/4 v0, 0x0

    .line 731
    .restart local v0       #curPosition:I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 732
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 746
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    .prologue
    .line 686
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 687
    .local v3, itemSpacing:I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 688
    .local v2, galleryLeft:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 689
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 692
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 696
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 697
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v0, v7, v4

    .line 698
    .local v0, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 706
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    if-ge v0, v7, :cond_1

    .line 707
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v0, v7

    const/4 v8, 0x0

    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 711
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v1, v7, v3

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v0, v7, -0x1

    .restart local v0       #curPosition:I
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 702
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v1, v7, v8

    .line 703
    .restart local v1       #curRightEdge:I
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 714
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 750
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 788
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 789
    .local v3, itemSpacing:I
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 790
    .local v2, galleryRight:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    .line 791
    .local v4, numChildren:I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    .line 794
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 798
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 799
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 800
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 807
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 808
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 812
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 802
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 803
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 804
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 815
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 757
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 758
    .local v3, itemSpacing:I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 761
    .local v2, galleryRight:I
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 765
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 766
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 767
    .local v1, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 774
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz v1, :cond_1

    .line 775
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 779
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 782
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v0, v5, v3

    .line 783
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 769
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_0
    const/4 v1, 0x0

    .line 770
    .restart local v1       #curPosition:I
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    .line 771
    .restart local v0       #curLeftEdge:I
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    goto :goto_0

    .line 785
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 835
    iget-boolean v3, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-nez v3, :cond_0

    .line 836
    iget-object v3, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 837
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 842
    .local v2, childLeft:I
    iget v3, p0, Landroid/widget/Gallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 844
    iget v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 847
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 859
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLeft:I
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 854
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 857
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 859
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 447
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 448
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 543
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 546
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    .prologue
    .line 525
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 528
    .local v1, selectedCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    .line 530
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 531
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 532
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 534
    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1273
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1276
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v2

    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1277
    .local v1, distance:I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 1278
    const/4 v2, 0x1

    .line 1281
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 561
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 562
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v3

    .line 567
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 572
    :cond_2
    const v2, 0x7fffffff

    .line 573
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 574
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 576
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 578
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 580
    move v6, v4

    .line 592
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 594
    .local v5, newPos:I
    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 595
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 596
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 597
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    goto :goto_0

    .line 584
    .end local v5           #newPos:I
    .restart local v0       #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 586
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 587
    move v2, v1

    .line 588
    move v6, v4

    .line 574
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 879
    .local v6, lp:Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 880
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lp:Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    .line 883
    .restart local v6       #lp:Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p4, v8, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 885
    if-nez p2, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 888
    iget v8, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 890
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 894
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 900
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 901
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 903
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 904
    .local v7, width:I
    if-eqz p4, :cond_3

    .line 905
    move v2, p3

    .line 906
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 912
    .local v3, childRight:I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 913
    return-void

    .line 883
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 885
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 908
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_3
    sub-int v2, p3, v7

    .line 909
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1294
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1296
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1297
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1302
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1304
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1305
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1310
    :cond_2
    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    .line 1313
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1317
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 325
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1132
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1123
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 343
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 335
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 330
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1338
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1341
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1351
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1343
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1345
    goto :goto_0

    .line 1346
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1348
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 299
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 300
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 302
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 409
    iget-boolean v6, p0, Landroid/widget/Gallery;->mIsRtl:Z

    if-eq p1, v6, :cond_1

    iget v6, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 410
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 412
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_2

    move v5, p2

    .line 435
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 409
    goto :goto_0

    .line 416
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    move-result v2

    .line 417
    .local v2, extremeChildCenter:I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    move-result v4

    .line 419
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 420
    if-le v2, v4, :cond_0

    .line 433
    :cond_3
    sub-int v0, v4, v2

    .line 435
    .local v0, centerDifference:I
    if-eqz p1, :cond_5

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 426
    .end local v0           #centerDifference:I
    :cond_4
    if-lt v2, v4, :cond_3

    goto :goto_1

    .line 435
    .restart local v0       #centerDifference:I
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method protected handleLayoutDirection()Z
    .locals 1

    .prologue
    .line 1529
    const/4 v0, 0x1

    return v0
.end method

.method layout(IZ)V
    .locals 7
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 614
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    .line 616
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    .line 617
    .local v0, childrenLeft:I
    iget v4, p0, Landroid/widget/Gallery;->mRight:I

    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v1, v4, v5

    .line 619
    .local v1, childrenWidth:I
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    if-eqz v4, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    .line 624
    :cond_0
    iget v4, p0, Landroid/widget/Gallery;->mItemCount:I

    if-nez v4, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    .line 675
    :goto_0
    return-void

    .line 630
    :cond_1
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v4, :cond_2

    .line 631
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    .line 635
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    .line 639
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    .line 645
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    .line 646
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    .line 654
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    .line 655
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    const/4 v5, 0x1

    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v2

    .line 658
    .local v2, sel:Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 659
    .local v3, selectedOffset:I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 661
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 662
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    .line 665
    iget-object v4, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 667
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    .line 668
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    .line 670
    iput-boolean v6, p0, Landroid/widget/Gallery;->mDataChanged:Z

    .line 671
    iput-boolean v6, p0, Landroid/widget/Gallery;->mNeedSync:Z

    .line 672
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 674
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1264
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1265
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1266
    const/4 v0, 0x1

    .line 1268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    .line 1255
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_0

    .line 1256
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 1257
    const/4 v0, 0x1

    .line 1259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1075
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 1076
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1042
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    .line 1047
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1048
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1049
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1053
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1056
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 983
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 990
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 994
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 996
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1357
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1364
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1366
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1369
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1373
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1374
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1375
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 1379
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1380
    const-class v1, Landroid/widget/Gallery;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1381
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1382
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1383
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1384
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1386
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v0, :cond_1

    .line 1387
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1390
    :cond_1
    return-void

    .line 1381
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, moved:Z
    sparse-switch p1, :sswitch_data_0

    .line 1218
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .line 1199
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->shouldMirror()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v0

    .line 1200
    :goto_2
    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1199
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v0

    goto :goto_2

    .line 1206
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->shouldMirror()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/Gallery;->movePrevious()Z

    move-result v0

    .line 1207
    :goto_3
    if-eqz v0, :cond_0

    .line 1208
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1206
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->moveNext()Z

    move-result v0

    goto :goto_3

    .line 1214
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1196
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1223
    sparse-switch p1, :sswitch_data_0

    .line 1251
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1227
    :sswitch_0
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1228
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1230
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    .line 1231
    new-instance v1, Landroid/widget/Gallery$2;

    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1238
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1239
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1245
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    .line 1247
    const/4 v1, 0x1

    goto :goto_0

    .line 1223
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 356
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    .line 357
    iput-boolean v1, p0, Landroid/widget/Gallery;->mInLayout:Z

    .line 358
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1081
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1085
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    .line 1086
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1087
    .local v0, id:J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1013
    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1017
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1018
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1024
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1025
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1032
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1034
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    .line 1035
    return v3

    .line 1028
    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1094
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 963
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 966
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    .line 969
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 970
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 974
    :cond_1
    const/4 v0, 0x1

    .line 977
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 947
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 949
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 950
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 952
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    .line 957
    :cond_0
    :goto_0
    return v1

    .line 953
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #getter for: Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->access$200(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    .line 1068
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    .line 1069
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v1, 0x0

    .line 1394
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1395
    const/4 v1, 0x1

    .line 1411
    :cond_0
    :goto_0
    return v1

    .line 1397
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1399
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 1400
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1401
    .local v0, currentChildIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1405
    .end local v0           #currentChildIndex:I
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-lez v2, :cond_0

    .line 1406
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1407
    .restart local v0       #currentChildIndex:I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    move-result v1

    goto :goto_0

    .line 1397
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 551
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    .line 553
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 271
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    .line 272
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 245
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 246
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 258
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 259
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1330
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1331
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    .line 1332
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    .line 1334
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1286
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1289
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1290
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 282
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    .line 283
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 293
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    .line 294
    return-void
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1154
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1155
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1156
    .local v0, index:I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1157
    .local v1, v:Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    iget-wide v3, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1160
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1142
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1143
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1144
    const/4 v3, 0x0

    .line 1148
    :goto_0
    return v3

    .line 1147
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1148
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 373
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 406
    :goto_0
    return-void

    .line 377
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 379
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 380
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 382
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #calls: Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Landroid/widget/Gallery$FlingRunnable;->access$100(Landroid/widget/Gallery$FlingRunnable;Z)V

    .line 383
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    .line 386
    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 388
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 390
    if-eqz v1, :cond_3

    .line 392
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    .line 399
    :goto_2
    iget-object v3, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 401
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    .line 403
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    .line 405
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 377
    goto :goto_1

    .line 395
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    goto :goto_2
.end method
