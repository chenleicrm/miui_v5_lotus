.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 91
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 93
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 94
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 99
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 100
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 102
    iput v11, p0, Landroid/widget/GridView;->mGravity:I

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 117
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 122
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 124
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 126
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 128
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 129
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 130
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 133
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 134
    .local v1, columnWidth:I
    if-lez v1, :cond_1

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 138
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 139
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 141
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 142
    if-ltz v3, :cond_2

    .line 143
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 146
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 784
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_0

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 792
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 793
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 796
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 798
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 4
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_0

    .line 815
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 819
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 820
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 823
    .local v0, offset:I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 825
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 2187
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2189
    .local v1, childCount:I
    if-lez v1, :cond_2

    .line 2193
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_3

    .line 2196
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2197
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2198
    .local v2, delta:I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    .line 2201
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2203
    :cond_0
    if-gez v2, :cond_1

    .line 2205
    const/4 v2, 0x0

    .line 2224
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 2225
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 2228
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_2
    return-void

    .line 2209
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2210
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2212
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_4

    .line 2215
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2218
    :cond_4
    if-lez v2, :cond_1

    .line 2220
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1547
    iget-object v4, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_0

    .line 1674
    :goto_0
    return v2

    .line 1551
    :cond_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 1552
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1555
    :cond_1
    const/4 v1, 0x0

    .line 1556
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1558
    .local v0, action:I
    if-eq v0, v3, :cond_2

    .line 1559
    sparse-switch p1, :sswitch_data_0

    .line 1658
    :cond_2
    :goto_1
    if-eqz v1, :cond_25

    move v2, v3

    .line 1659
    goto :goto_0

    .line 1561
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1562
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 1567
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1568
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    .line 1573
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1574
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    move v1, v3

    :goto_4
    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    .line 1575
    :cond_9
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1576
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move v1, v3

    :goto_5
    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_5

    .line 1581
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1582
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    move v1, v3

    :goto_6
    goto :goto_1

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1583
    :cond_e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1584
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v1, v3

    :goto_7
    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_7

    .line 1590
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1591
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1592
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1594
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    .line 1595
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1601
    :sswitch_5
    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_11

    iget-object v4, p0, Landroid/widget/GridView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1602
    :cond_11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1603
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v1, v3

    :goto_8
    goto/16 :goto_1

    :cond_13
    move v1, v2

    goto :goto_8

    .line 1604
    :cond_14
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1605
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_15
    move v1, v3

    :goto_9
    goto/16 :goto_1

    :cond_16
    move v1, v2

    goto :goto_9

    .line 1611
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1612
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v1, v3

    :goto_a
    goto/16 :goto_1

    :cond_18
    move v1, v2

    goto :goto_a

    .line 1613
    :cond_19
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1614
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_1a
    move v1, v3

    :goto_b
    goto/16 :goto_1

    :cond_1b
    move v1, v2

    goto :goto_b

    .line 1619
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1620
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1c
    move v1, v3

    :goto_c
    goto/16 :goto_1

    :cond_1d
    move v1, v2

    goto :goto_c

    .line 1621
    :cond_1e
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1622
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v1, v3

    :goto_d
    goto/16 :goto_1

    :cond_20
    move v1, v2

    goto :goto_d

    .line 1627
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1628
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_21

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    move v1, v3

    :goto_e
    goto/16 :goto_1

    :cond_22
    move v1, v2

    goto :goto_e

    .line 1633
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1634
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    move v1, v3

    :goto_f
    goto/16 :goto_1

    :cond_24
    move v1, v2

    goto :goto_f

    .line 1662
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v2, v3

    .line 1663
    goto/16 :goto_0

    .line 1666
    :cond_26
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1668
    :pswitch_0
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1670
    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1672
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 1559
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 1666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 9
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 596
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 597
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    if-lez p3, :cond_3

    .line 599
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 602
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 604
    .local v4, lastBottom:I
    iget v7, p0, Landroid/widget/GridView;->mBottom:I

    iget v8, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 608
    .local v1, end:I
    sub-int v0, v1, v4

    .line 610
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 611
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 615
    .local v3, firstTop:I
    if-lez v0, :cond_3

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v7, :cond_0

    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    .line 616
    :cond_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v7, :cond_1

    .line 618
    iget-object v7, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 622
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 623
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v7, :cond_3

    .line 626
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 629
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 633
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    .line 636
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_3

    if-lez p3, :cond_3

    .line 638
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 641
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 644
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 647
    .local v6, start:I
    iget v8, p0, Landroid/widget/GridView;->mBottom:I

    iget v9, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 651
    .local v0, end:I
    sub-int v7, v2, v6

    .line 652
    .local v7, topOffset:I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 653
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 654
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 658
    .local v5, lastPosition:I
    if-lez v7, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_0

    if-le v3, v0, :cond_3

    .line 659
    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_1

    .line 661
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 665
    :cond_1
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 666
    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_3

    .line 669
    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_2

    const/4 p1, 0x1

    .end local p1
    :cond_2
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 672
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 676
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 8
    .parameter "availableSpace"

    .prologue
    const/4 v7, 0x1

    .line 945
    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 946
    .local v2, requestedHorizontalSpacing:I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 947
    .local v4, stretchMode:I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 948
    .local v1, requestedColumnWidth:I
    const/4 v0, 0x0

    .line 950
    .local v0, didNotInitiallyFit:Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 951
    if-lez v1, :cond_2

    .line 953
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 964
    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_0

    .line 965
    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 968
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 976
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 979
    .local v3, spaceLeftOver:I
    if-gez v3, :cond_1

    .line 980
    const/4 v0, 0x1

    .line 983
    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 1015
    .end local v3           #spaceLeftOver:I
    :goto_1
    return v0

    .line 957
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 961
    :cond_3
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    .line 971
    :pswitch_0
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 972
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 986
    .restart local v3       #spaceLeftOver:I
    :pswitch_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 987
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 992
    :pswitch_2
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 993
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_4

    .line 994
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 997
    :cond_4
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1003
    :pswitch_3
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1004
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5

    .line 1005
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 1008
    :cond_5
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    .line 968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 983
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int v0, v3, v4

    .line 283
    .local v0, end:I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 284
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 287
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    .line 288
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 289
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 290
    move-object v1, v2

    .line 295
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 297
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 298
    goto :goto_0

    .line 300
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 301
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    .line 427
    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 428
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 430
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 431
    .local v0, invertedPosition:I
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 433
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 14
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 690
    .local v2, fadingEdgeLength:I
    iget v9, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 691
    .local v9, selectedPosition:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 692
    .local v4, numColumns:I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 695
    .local v11, verticalSpacing:I
    const/4 v6, -0x1

    .line 697
    .local v6, rowEnd:I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_0

    .line 698
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 709
    .local v7, rowStart:I
    :goto_0
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 710
    .local v10, topSelectionPixel:I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 713
    .local v1, bottomSelectionPixel:I
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v12, :cond_1

    move v12, v6

    :goto_1
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 715
    .local v8, sel:Landroid/view/View;
    iput v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 717
    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 718
    .local v5, referenceView:Landroid/view/View;
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 719
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 721
    iget-boolean v12, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v12, :cond_2

    .line 722
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 723
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 724
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 732
    :goto_2
    return-object v8

    .line 700
    .end local v1           #bottomSelectionPixel:I
    .end local v5           #referenceView:Landroid/view/View;
    .end local v7           #rowStart:I
    .end local v8           #sel:Landroid/view/View;
    .end local v10           #topSelectionPixel:I
    :cond_0
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 702
    .local v3, invertedSelection:I
    iget v12, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 703
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v1       #bottomSelectionPixel:I
    .restart local v10       #topSelectionPixel:I
    :cond_1
    move v12, v7

    .line 713
    goto :goto_1

    .line 726
    .restart local v5       #referenceView:Landroid/view/View;
    .restart local v8       #sel:Landroid/view/View;
    :cond_2
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 727
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 728
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3
    .parameter "nextTop"

    .prologue
    .line 417
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 418
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 419
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 422
    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 423
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 15
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v10

    .line 438
    .local v10, selectedPosition:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 439
    .local v4, numColumns:I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 442
    .local v12, verticalSpacing:I
    const/4 v7, -0x1

    .line 444
    .local v7, rowEnd:I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_0

    .line 445
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 453
    .local v8, rowStart:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 454
    .local v2, fadingEdgeLength:I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 456
    .local v11, topSelectionPixel:I
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v13, :cond_1

    move v13, v7

    :goto_1
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 457
    .local v9, sel:Landroid/view/View;
    iput v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 459
    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 461
    .local v6, referenceView:Landroid/view/View;
    iget-boolean v13, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v13, :cond_2

    .line 462
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 463
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 464
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 465
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 477
    :goto_2
    return-object v9

    .line 447
    .end local v2           #fadingEdgeLength:I
    .end local v6           #referenceView:Landroid/view/View;
    .end local v8           #rowStart:I
    .end local v9           #sel:Landroid/view/View;
    .end local v11           #topSelectionPixel:I
    :cond_0
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 449
    .local v3, invertedSelection:I
    iget v13, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 450
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8       #rowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    .restart local v2       #fadingEdgeLength:I
    .restart local v11       #topSelectionPixel:I
    :cond_1
    move v13, v8

    .line 456
    goto :goto_1

    .line 467
    .restart local v6       #referenceView:Landroid/view/View;
    .restart local v9       #sel:Landroid/view/View;
    :cond_2
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 469
    .local v1, bottomSelectionPixel:I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 470
    .local v5, offset:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 471
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 472
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 473
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 474
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "top"

    .prologue
    .line 535
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 538
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 540
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_1

    .line 541
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 549
    .local v5, motionRowStart:I
    :goto_0
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v10, :cond_2

    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 552
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 554
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 556
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_3

    .line 557
    const/4 v8, 0x0

    .line 590
    .end local v8           #temp:Landroid/view/View;
    :cond_0
    :goto_2
    return-object v8

    .line 543
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    :cond_1
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 545
    .local v3, invertedSelection:I
    iget v10, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 546
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_0

    .end local v3           #invertedSelection:I
    :cond_2
    move v10, v5

    .line 549
    goto :goto_1

    .line 560
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_3
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 565
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_5

    .line 566
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 568
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 570
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 571
    .local v2, childCount:I
    if-lez v2, :cond_4

    .line 572
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 585
    :cond_4
    :goto_3
    if-nez v8, :cond_0

    .line 587
    if-eqz v0, :cond_6

    move-object v8, v0

    .line 588
    goto :goto_2

    .line 575
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_5
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 576
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 577
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 579
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 580
    .restart local v2       #childCount:I
    if-lez v2, :cond_4

    .line 581
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3

    :cond_6
    move-object v8, v1

    .line 590
    goto :goto_2
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, selectedView:Landroid/view/View;
    const/4 v0, 0x0

    .line 382
    .local v0, end:I
    iget v3, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    .line 383
    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 386
    :cond_0
    :goto_0
    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 388
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 389
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 390
    move-object v1, v2

    .line 393
    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 395
    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 397
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 398
    goto :goto_0

    .line 400
    .end local v2           #temp:Landroid/view/View;
    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    .line 401
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 404
    :cond_3
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    .line 405
    return-object v1
.end method

.method private fixGravity(I)I
    .locals 3
    .parameter "gravity"

    .prologue
    .line 1977
    move v0, p1

    .line 1978
    .local v0, result:I
    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1979
    and-int/lit8 v0, v0, -0x4

    .line 1980
    const v1, 0x800003

    or-int/2addr v0, v1

    .line 1982
    :cond_0
    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1983
    and-int/lit8 v0, v0, -0x6

    .line 1984
    const v1, 0x800005

    or-int/2addr v0, v1

    .line 1987
    :cond_1
    const/high16 v1, 0x80

    or-int/2addr v0, v1

    .line 1989
    return v0
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    .line 747
    move v0, p1

    .line 748
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 749
    sub-int/2addr v0, p2

    .line 751
    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 764
    move v0, p1

    .line 765
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_0

    .line 766
    add-int/2addr v0, p2

    .line 768
    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 8
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1920
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1921
    .local v0, count:I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1926
    .local v1, invertedIndex:I
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_0

    .line 1927
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1928
    .local v3, rowStart:I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1934
    .local v2, rowEnd:I
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1955
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1930
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1931
    .restart local v2       #rowEnd:I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_0

    .line 1938
    :sswitch_0
    if-ne p1, v3, :cond_2

    .line 1953
    :cond_1
    :goto_1
    return v4

    :cond_2
    move v4, v5

    .line 1938
    goto :goto_1

    .line 1941
    :sswitch_1
    if-eqz v3, :cond_1

    move v4, v5

    goto :goto_1

    .line 1944
    :sswitch_2
    if-eq p1, v2, :cond_1

    move v4, v5

    goto :goto_1

    .line 1947
    :sswitch_3
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    move v4, v5

    goto :goto_1

    .line 1950
    :sswitch_4
    if-ne p1, v3, :cond_3

    if-eqz v3, :cond_1

    :cond_3
    move v4, v5

    goto :goto_1

    .line 1953
    :sswitch_5
    if-ne p1, v2, :cond_4

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_1

    :cond_4
    move v4, v5

    goto :goto_1

    .line 1934
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1334
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1336
    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1337
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1340
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1352
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_0
    return-object v9

    .line 1347
    .end local v9           #child:Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1350
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1352
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 19
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 306
    .local v9, columnWidth:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 309
    .local v11, horizontalSpacing:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldMirror()Z

    move-result v14

    .line 310
    .local v14, mirror:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 311
    .local v16, padding:I
    if-eqz v14, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 316
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    move v1, v11

    :goto_0
    add-int v15, v16, v1

    .line 319
    .local v15, nextLeft:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_7

    .line 320
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 330
    .local v13, last:I
    :cond_1
    :goto_1
    const/16 v18, 0x0

    .line 332
    .local v18, selectedView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v10

    .line 333
    .local v10, hasFocus:Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v12

    .line 334
    .local v12, inClick:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 336
    .local v17, selectedPosition:I
    const/4 v8, 0x0

    .line 337
    .local v8, child:Landroid/view/View;
    move/from16 v2, p1

    .local v2, pos:I
    :goto_2
    if-ge v2, v13, :cond_a

    .line 339
    move/from16 v0, v17

    if-ne v2, v0, :cond_8

    const/4 v6, 0x1

    .line 342
    .local v6, selected:Z
    :goto_3
    if-eqz p3, :cond_9

    const/4 v7, -0x1

    .line 343
    .local v7, where:I
    :goto_4
    move v5, v15

    .line 344
    .local v5, mirroredLeft:I
    if-eqz v14, :cond_2

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int v5, v1, v3

    :cond_2
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 347
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 349
    add-int/2addr v15, v9

    .line 350
    add-int/lit8 v1, v13, -0x1

    if-ge v2, v1, :cond_3

    .line 351
    add-int/2addr v15, v11

    .line 354
    :cond_3
    if-eqz v6, :cond_5

    if-nez v10, :cond_4

    if-eqz v12, :cond_5

    .line 355
    :cond_4
    move-object/from16 v18, v8

    .line 337
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 316
    .end local v2           #pos:I
    .end local v5           #mirroredLeft:I
    .end local v6           #selected:Z
    .end local v7           #where:I
    .end local v8           #child:Landroid/view/View;
    .end local v10           #hasFocus:Z
    .end local v12           #inClick:Z
    .end local v13           #last:I
    .end local v15           #nextLeft:I
    .end local v17           #selectedPosition:I
    .end local v18           #selectedView:Landroid/view/View;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 322
    .restart local v15       #nextLeft:I
    :cond_7
    add-int/lit8 v13, p1, 0x1

    .line 323
    .restart local v13       #last:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 325
    sub-int v1, v13, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v1, v3, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, v13, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v11

    mul-int/2addr v1, v3

    add-int/2addr v15, v1

    goto :goto_1

    .line 339
    .restart local v2       #pos:I
    .restart local v8       #child:Landroid/view/View;
    .restart local v10       #hasFocus:Z
    .restart local v12       #inClick:Z
    .restart local v17       #selectedPosition:I
    .restart local v18       #selectedView:Landroid/view/View;
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 342
    .restart local v6       #selected:Z
    :cond_9
    sub-int v7, v2, p1

    goto :goto_4

    .line 359
    .end local v6           #selected:Z
    :cond_a
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 361
    if-eqz v18, :cond_b

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 365
    :cond_b
    return-object v18
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 22
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 862
    .local v5, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 863
    .local v16, selectedPosition:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 864
    .local v7, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    .line 868
    .local v18, verticalSpacing:I
    const/4 v13, -0x1

    .line 870
    .local v13, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 871
    sub-int v19, v16, p1

    sub-int v20, v16, p1

    rem-int v20, v20, v7

    sub-int v9, v19, v20

    .line 873
    .local v9, oldRowStart:I
    rem-int v19, v16, v7

    sub-int v14, v16, v19

    .line 885
    .local v14, rowStart:I
    :goto_0
    sub-int v12, v14, v9

    .line 887
    .local v12, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v17

    .line 888
    .local v17, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 892
    .local v4, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 897
    if-lez v12, :cond_3

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 905
    .local v8, oldBottom:I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move/from16 v19, v13

    :goto_2
    add-int v20, v8, v18

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 906
    .local v15, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 908
    .local v11, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 931
    .end local v8           #oldBottom:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 932
    sub-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 933
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 934
    add-int v19, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 941
    :goto_4
    return-object v15

    .line 875
    .end local v4           #bottomSelectionPixel:I
    .end local v9           #oldRowStart:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v12           #rowDelta:I
    .end local v14           #rowStart:I
    .end local v15           #sel:Landroid/view/View;
    .end local v17           #topSelectionPixel:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v6, v19, v16

    .line 877
    .local v6, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v13, v19, v20

    .line 878
    const/16 v19, 0x0

    sub-int v20, v13, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 880
    .restart local v14       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v20, v16, p1

    sub-int v6, v19, v20

    .line 881
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    rem-int v20, v6, v7

    sub-int v20, v6, v20

    sub-int v9, v19, v20

    .line 882
    .restart local v9       #oldRowStart:I
    const/16 v19, 0x0

    sub-int v20, v9, v7

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_0

    .line 902
    .end local v6           #invertedSelection:I
    .restart local v4       #bottomSelectionPixel:I
    .restart local v12       #rowDelta:I
    .restart local v17       #topSelectionPixel:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    move-result v8

    goto/16 :goto_1

    .restart local v8       #oldBottom:I
    :cond_2
    move/from16 v19, v14

    .line 905
    goto/16 :goto_2

    .line 909
    .end local v8           #oldBottom:I
    :cond_3
    if-gez v12, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    const/4 v10, 0x0

    .line 916
    .local v10, oldTop:I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move/from16 v19, v13

    :goto_6
    sub-int v20, v10, v18

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 917
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 919
    .restart local v11       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_3

    .line 913
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_5

    .restart local v10       #oldTop:I
    :cond_5
    move/from16 v19, v14

    .line 916
    goto :goto_6

    .line 924
    .end local v10           #oldTop:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    const/4 v10, 0x0

    .line 927
    .restart local v10       #oldTop:I
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move/from16 v19, v13

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 928
    .restart local v15       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .restart local v11       #referenceView:Landroid/view/View;
    goto/16 :goto_3

    .line 924
    .end local v10           #oldTop:I
    .end local v11           #referenceView:Landroid/view/View;
    .end local v15           #sel:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_7

    .restart local v10       #oldTop:I
    :cond_8
    move/from16 v19, v14

    .line 927
    goto :goto_8

    .line 936
    .end local v10           #oldTop:I
    .restart local v11       #referenceView:Landroid/view/View;
    .restart local v15       #sel:Landroid/view/View;
    :cond_9
    add-int v19, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 937
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 938
    add-int/lit8 v19, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v20, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_4
.end method

.method private performHorizontalFocus(IIIZ)Z
    .locals 3
    .parameter "selectedPosition"
    .parameter "startOfRowPos"
    .parameter "endOfRowPos"
    .parameter "rightFocus"

    .prologue
    const/4 v2, 0x6

    .line 1795
    const/4 v0, 0x0

    .line 1797
    .local v0, moved:Z
    invoke-virtual {p0}, Landroid/widget/GridView;->shouldMirror()Z

    move-result v1

    if-ne v1, p4, :cond_1

    .line 1799
    if-le p1, p2, :cond_0

    .line 1800
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1801
    const/4 v1, 0x0

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1802
    const/4 v0, 0x1

    .line 1812
    :cond_0
    :goto_0
    return v0

    .line 1806
    :cond_1
    if-ge p1, p3, :cond_0

    .line 1807
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1808
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1809
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pinToBottom(I)V
    .locals 5
    .parameter "childrenBottom"

    .prologue
    .line 491
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 492
    .local v1, count:I
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v3, v4, :cond_0

    .line 493
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 494
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 495
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 496
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 499
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 3
    .parameter "childrenTop"

    .prologue
    .line 481
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v2, :cond_0

    .line 482
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 483
    .local v1, top:I
    sub-int v0, p1, v1

    .line 484
    .local v0, offset:I
    if-gez v0, :cond_0

    .line 485
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 488
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 25
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1381
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v14, 0x1

    .line 1382
    .local v14, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_8

    const/16 v20, 0x1

    .line 1383
    .local v20, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v16, v0

    .line 1384
    .local v16, mode:I
    if-lez v16, :cond_9

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 1386
    .local v13, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_a

    const/16 v19, 0x1

    .line 1388
    .local v19, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldMirror()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_0
    const/16 v17, 0x1

    .line 1393
    .local v17, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1394
    .local v18, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_1

    .line 1395
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18           #p:Landroid/widget/AbsListView$LayoutParams;
    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1397
    .restart local v18       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1399
    if-eqz p7, :cond_c

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    .line 1400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1406
    :goto_5
    if-eqz v20, :cond_2

    .line 1407
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1408
    if-eqz v14, :cond_2

    .line 1409
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1413
    :cond_2
    if-eqz v19, :cond_3

    .line 1414
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1417
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1418
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v22, p1

    .line 1419
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1426
    :cond_4
    :goto_6
    if-eqz v17, :cond_e

    .line 1427
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1430
    .local v7, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1432
    .local v11, childWidthSpec:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1437
    .end local v7           #childHeightSpec:I
    .end local v11           #childWidthSpec:I
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1438
    .local v21, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1441
    .local v12, h:I
    if-eqz p4, :cond_f

    move/from16 v10, p3

    .line 1443
    .local v10, childTop:I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getResolvedLayoutDirection()I

    move-result v15

    .line 1444
    .local v15, layoutDirection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1445
    .local v5, absoluteGravity:I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_0

    .line 1456
    :pswitch_0
    move/from16 v8, p5

    .line 1460
    .local v8, childLeft:I
    :goto_9
    if-eqz v17, :cond_10

    .line 1461
    add-int v9, v8, v21

    .line 1462
    .local v9, childRight:I
    add-int v6, v10, v12

    .line 1463
    .local v6, childBottom:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1469
    .end local v6           #childBottom:I
    .end local v9           #childRight:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1470
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1473
    :cond_5
    if-eqz p7, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1475
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1477
    :cond_6
    return-void

    .line 1381
    .end local v5           #absoluteGravity:I
    .end local v8           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #h:I
    .end local v13           #isPressed:Z
    .end local v14           #isSelected:Z
    .end local v15           #layoutDirection:I
    .end local v16           #mode:I
    .end local v17           #needToMeasure:Z
    .end local v18           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v19           #updateChildPressed:Z
    .end local v20           #updateChildSelected:Z
    .end local v21           #w:I
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1382
    .restart local v14       #isSelected:Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 1384
    .restart local v16       #mode:I
    .restart local v20       #updateChildSelected:Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1386
    .restart local v13       #isPressed:Z
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1388
    .restart local v19       #updateChildPressed:Z
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1402
    .restart local v17       #needToMeasure:Z
    .restart local v18       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1403
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_5

    .line 1420
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_6

    .line 1434
    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_7

    .line 1441
    .restart local v12       #h:I
    .restart local v21       #w:I
    :cond_f
    sub-int v10, p3, v12

    goto/16 :goto_8

    .line 1447
    .restart local v5       #absoluteGravity:I
    .restart local v10       #childTop:I
    .restart local v15       #layoutDirection:I
    :pswitch_1
    move/from16 v8, p5

    .line 1448
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1450
    .end local v8           #childLeft:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1451
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1453
    .end local v8           #childLeft:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1454
    .restart local v8       #childLeft:I
    goto/16 :goto_9

    .line 1465
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1466
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_a

    .line 1445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x0

    .line 1740
    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1741
    .local v4, selectedPosition:I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1746
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1748
    .local v2, moved:Z
    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_3

    .line 1749
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1750
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1757
    .local v0, endOfRowPos:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1780
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1781
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1782
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1785
    :cond_1
    if-eqz v2, :cond_2

    .line 1786
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1789
    :cond_2
    return v2

    .line 1752
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_3
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1753
    .local v1, invertedSelection:I
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1754
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_0

    .line 1759
    .end local v1           #invertedSelection:I
    :sswitch_0
    if-lez v5, :cond_0

    .line 1760
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1761
    sub-int v6, v4, v3

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1762
    const/4 v2, 0x1

    goto :goto_1

    .line 1766
    :sswitch_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 1767
    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1768
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1769
    const/4 v2, 0x1

    goto :goto_1

    .line 1773
    :sswitch_2
    invoke-direct {p0, v4, v5, v0, v8}, Landroid/widget/GridView;->performHorizontalFocus(IIIZ)Z

    move-result v2

    .line 1774
    goto :goto_1

    .line 1776
    :sswitch_3
    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v0, v6}, Landroid/widget/GridView;->performHorizontalFocus(IIIZ)Z

    move-result v2

    goto :goto_1

    .line 1757
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1109
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1112
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1114
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1117
    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    .line 1118
    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    .line 1119
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1120
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1122
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    .line 1123
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1124
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1131
    :goto_0
    return-void

    .line 1126
    :cond_1
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1128
    .local v1, invertedIndex:I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1129
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 2232
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 2233
    .local v1, count:I
    if-lez v1, :cond_2

    .line 2234
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2235
    .local v4, numColumns:I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2237
    .local v5, rowCount:I
    mul-int/lit8 v2, v5, 0x64

    .line 2239
    .local v2, extent:I
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2240
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2241
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2242
    .local v3, height:I
    if-lez v3, :cond_0

    .line 2243
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2246
    :cond_0
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2247
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2248
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2249
    if-lez v3, :cond_1

    .line 2250
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2255
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v5           #rowCount:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v8

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 2260
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-ltz v7, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 2261
    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2262
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2263
    .local v3, top:I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2264
    .local v0, height:I
    if-lez v0, :cond_0

    .line 2265
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2266
    .local v1, numColumns:I
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    div-int v5, v7, v1

    .line 2267
    .local v5, whichRow:I
    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    div-int v2, v7, v1

    .line 2268
    .local v2, rowCount:I
    mul-int/lit8 v7, v5, 0x64

    mul-int/lit8 v8, v3, 0x64

    div-int/2addr v8, v0

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    int-to-float v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2272
    .end local v0           #height:I
    .end local v1           #numColumns:I
    .end local v2           #rowCount:I
    .end local v3           #top:I
    .end local v4           #view:Landroid/view/View;
    .end local v5           #whichRow:I
    :cond_0
    return v6
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    .prologue
    .line 2278
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2279
    .local v0, numColumns:I
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2280
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2281
    .local v1, result:I
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    .line 2283
    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2285
    :cond_0
    return v1
.end method

.method fillGap(Z)V
    .locals 9
    .parameter "down"

    .prologue
    const/16 v8, 0x22

    .line 232
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 233
    .local v1, numColumns:I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 235
    .local v6, verticalSpacing:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 237
    .local v0, count:I
    if-eqz p1, :cond_3

    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, paddingTop:I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v3

    .line 242
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 244
    .local v5, startOffset:I
    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 245
    .local v4, position:I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v7, :cond_1

    .line 246
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 248
    :cond_1
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 249
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 266
    .end local v3           #paddingTop:I
    :goto_1
    return-void

    .end local v4           #position:I
    .end local v5           #startOffset:I
    .restart local v3       #paddingTop:I
    :cond_2
    move v5, v3

    .line 242
    goto :goto_0

    .line 251
    .end local v3           #paddingTop:I
    :cond_3
    const/4 v2, 0x0

    .line 252
    .local v2, paddingBottom:I
    iget v7, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_4

    .line 253
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v2

    .line 255
    :cond_4
    if-lez v0, :cond_5

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 257
    .restart local v5       #startOffset:I
    :goto_2
    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    .line 258
    .restart local v4       #position:I
    iget-boolean v7, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v7, :cond_6

    .line 259
    sub-int/2addr v4, v1

    .line 263
    :goto_3
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 264
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_1

    .line 255
    .end local v4           #position:I
    .end local v5           #startOffset:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_2

    .line 261
    .restart local v4       #position:I
    .restart local v5       #startOffset:I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 503
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 504
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 506
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 507
    .local v2, numColumns:I
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 508
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 509
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 510
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 521
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1
    return v3

    .line 508
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_0
    add-int/2addr v1, v2

    goto :goto_0

    .line 514
    .end local v1           #i:I
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 515
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 516
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 514
    :cond_2
    sub-int/2addr v1, v2

    goto :goto_2

    .line 521
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method fullScroll(I)Z
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1711
    const/4 v0, 0x0

    .line 1712
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_2

    .line 1713
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1714
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1715
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1716
    const/4 v0, 0x1

    .line 1724
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1725
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1728
    :cond_1
    return v0

    .line 1717
    :cond_2
    const/16 v1, 0x82

    if-ne p1, v1, :cond_0

    .line 1718
    iput v2, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1719
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1720
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1721
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    .prologue
    .line 2135
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2000
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2035
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2179
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    .prologue
    .line 2152
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    .prologue
    .line 2055
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    .prologue
    .line 2105
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .prologue
    .line 2086
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected handleLayoutDirection()Z
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x1

    return v0
.end method

.method protected layoutChildren()V
    .locals 21

    .prologue
    .line 1135
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1136
    .local v3, blockLayoutRequests:Z
    if-nez v3, :cond_0

    .line 1137
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1141
    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1143
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    if-nez v3, :cond_1

    .line 1310
    :goto_0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1313
    :cond_1
    return-void

    .line 1151
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1152
    .local v7, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1154
    .local v6, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    .line 1156
    .local v5, childCount:I
    const/4 v9, 0x0

    .line 1159
    .local v9, delta:I
    const/16 v16, 0x0

    .line 1160
    .local v16, oldSel:Landroid/view/View;
    const/4 v15, 0x0

    .line 1161
    .local v15, oldFirst:Landroid/view/View;
    const/4 v14, 0x0

    .line 1164
    .local v14, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1183
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1184
    .local v12, index:I
    if-ltz v12, :cond_3

    if-ge v12, v5, :cond_3

    .line 1185
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1189
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1192
    .end local v12           #index:I
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/GridView;->mDataChanged:Z

    .line 1193
    .local v8, dataChanged:Z
    if-eqz v8, :cond_5

    .line 1194
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1199
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_6

    .line 1200
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1201
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1309
    if-nez v3, :cond_1

    goto :goto_0

    .line 1166
    .end local v8           #dataChanged:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1167
    .restart local v12       #index:I
    if-ltz v12, :cond_4

    if-ge v12, v5, :cond_4

    .line 1168
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_1

    .line 1177
    .end local v12           #index:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_4

    .line 1178
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_1

    .line 1205
    .restart local v8       #dataChanged:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1209
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/GridView;->mFirstPosition:I

    .line 1210
    .local v10, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1212
    .local v17, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-eqz v8, :cond_7

    .line 1213
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v5, :cond_8

    .line 1214
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1213
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1217
    .end local v11           #i:I
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1222
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1223
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1225
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_1

    .line 1253
    if-nez v5, :cond_13

    .line 1254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_9
    const/16 v19, -0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1257
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1279
    .end local v7           #childrenTop:I
    .local v18, sel:Landroid/view/View;
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1281
    if-eqz v18, :cond_18

    .line 1282
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    .line 1283
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1292
    :cond_a
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mLayoutMode:I

    .line 1293
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mDataChanged:Z

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 1296
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1298
    :cond_b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mNeedSync:Z

    .line 1299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1301
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1303
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_c

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1307
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1309
    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 1227
    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :pswitch_3
    if-eqz v14, :cond_d

    .line 1228
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto :goto_4

    .line 1230
    .end local v18           #sel:Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1232
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1234
    .end local v18           #sel:Landroid/view/View;
    :pswitch_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    .line 1235
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1236
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 1309
    .end local v5           #childCount:I
    .end local v6           #childrenBottom:I
    .end local v7           #childrenTop:I
    .end local v8           #dataChanged:Z
    .end local v9           #delta:I
    .end local v10           #firstPosition:I
    .end local v14           #newSel:Landroid/view/View;
    .end local v15           #oldFirst:Landroid/view/View;
    .end local v16           #oldSel:Landroid/view/View;
    .end local v17           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v18           #sel:Landroid/view/View;
    :catchall_0
    move-exception v19

    if-nez v3, :cond_e

    .line 1310
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    .line 1309
    :cond_e
    throw v19

    .line 1239
    .restart local v5       #childCount:I
    .restart local v6       #childrenBottom:I
    .restart local v7       #childrenTop:I
    .restart local v8       #dataChanged:Z
    .restart local v9       #delta:I
    .restart local v10       #firstPosition:I
    .restart local v14       #newSel:Landroid/view/View;
    .restart local v15       #oldFirst:Landroid/view/View;
    .restart local v16       #oldSel:Landroid/view/View;
    .restart local v17       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    :pswitch_5
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1240
    .restart local v18       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_4

    .line 1243
    .end local v18           #sel:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1244
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1246
    .end local v18           #sel:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1247
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1250
    .end local v18           #sel:Landroid/view/View;
    :pswitch_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1251
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1255
    .end local v18           #sel:Landroid/view/View;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1259
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1260
    .local v13, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_12

    :cond_11
    const/16 v19, -0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1262
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1263
    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    :cond_12
    move/from16 v19, v13

    .line 1260
    goto :goto_6

    .line 1265
    .end local v13           #last:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 1266
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_14

    .end local v7           #childrenTop:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_14
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_7

    .line 1268
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    .line 1269
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_16

    .end local v7           #childrenTop:I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .end local v18           #sel:Landroid/view/View;
    .restart local v7       #childrenTop:I
    :cond_16
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_8

    .line 1272
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18       #sel:Landroid/view/View;
    goto/16 :goto_4

    .line 1284
    .end local v7           #childrenTop:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 1285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1286
    .local v4, child:Landroid/view/View;
    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_5

    .line 1288
    .end local v4           #child:Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mSelectedTop:I

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1225
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v1, -0x1

    .line 216
    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 217
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v1

    .line 224
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 221
    .restart local p1
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    :cond_3
    move p1, v1

    .line 222
    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1875
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1877
    const/4 v1, -0x1

    .line 1878
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 1879
    iget v7, p0, Landroid/widget/GridView;->mScrollX:I

    iget v8, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1883
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1884
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1885
    .local v4, minDistance:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1886
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1888
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1886
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1892
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1893
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1894
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1895
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1897
    .local v2, distance:I
    if-ge v2, v4, :cond_0

    .line 1898
    move v4, v2

    .line 1899
    move v1, v3

    goto :goto_1

    .line 1904
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_2
    if-ltz v1, :cond_3

    .line 1905
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1909
    :goto_2
    return-void

    .line 1907
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2290
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2291
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2292
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2296
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2297
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2298
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1533
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1538
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1543
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1021
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1023
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1024
    .local v17, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1025
    .local v11, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1026
    .local v18, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1028
    .local v12, heightSize:I
    if-nez v17, :cond_0

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_9

    .line 1030
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 1034
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 1037
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 1038
    .local v7, childWidth:I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v10

    .line 1040
    .local v10, didNotInitiallyFit:Z
    const/4 v4, 0x0

    .line 1041
    .local v4, childHeight:I
    const/4 v6, 0x0

    .line 1043
    .local v6, childState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_a

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mItemCount:I

    .line 1044
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    .line 1045
    .local v9, count:I
    if-lez v9, :cond_2

    .line 1046
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1048
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1049
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_1

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1051
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1053
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1054
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1056
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 1058
    .local v5, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1060
    .local v8, childWidthSpec:I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1062
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1063
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v6

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1070
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    if-nez v11, :cond_3

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1075
    :cond_3
    const/high16 v19, -0x8000

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1078
    .local v15, ourSize:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1079
    .local v14, numColumns:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v9, :cond_5

    .line 1080
    add-int/2addr v15, v4

    .line 1081
    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_4

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 1084
    :cond_4
    if-lt v15, v12, :cond_b

    .line 1085
    move v15, v12

    .line 1089
    :cond_5
    move v12, v15

    .line 1092
    .end local v13           #i:I
    .end local v14           #numColumns:I
    .end local v15           #ourSize:I
    :cond_6
    const/high16 v19, -0x8000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 1093
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1096
    .restart local v15       #ourSize:I
    move/from16 v0, v18

    if-gt v15, v0, :cond_7

    if-eqz v10, :cond_8

    .line 1097
    :cond_7
    const/high16 v19, 0x100

    or-int v18, v18, v19

    .line 1101
    .end local v15           #ourSize:I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1102
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/GridView;->mWidthMeasureSpec:I

    .line 1103
    return-void

    .line 1032
    .end local v4           #childHeight:I
    .end local v6           #childState:I
    .end local v7           #childWidth:I
    .end local v9           #count:I
    .end local v10           #didNotInitiallyFit:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_0

    .line 1043
    .restart local v4       #childHeight:I
    .restart local v6       #childState:I
    .restart local v7       #childWidth:I
    .restart local v10       #didNotInitiallyFit:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_1

    .line 1079
    .restart local v9       #count:I
    .restart local v13       #i:I
    .restart local v14       #numColumns:I
    .restart local v15       #ourSize:I
    :cond_b
    add-int/2addr v13, v14

    goto/16 :goto_2
.end method

.method pageScroll(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 1685
    const/4 v0, -0x1

    .line 1687
    .local v0, nextPage:I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1688
    iget v2, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1693
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    .line 1694
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1695
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1696
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1697
    const/4 v1, 0x1

    .line 1700
    :cond_1
    return v1

    .line 1689
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1690
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method sequenceScroll(I)Z
    .locals 13
    .parameter "direction"

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1820
    iget v5, p0, Landroid/widget/GridView;->mSelectedPosition:I

    .line 1821
    .local v5, selectedPosition:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1822
    .local v4, numColumns:I
    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    .line 1826
    .local v0, count:I
    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_3

    .line 1827
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1828
    .local v7, startOfRow:I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1835
    .local v1, endOfRow:I
    :goto_0
    const/4 v3, 0x0

    .line 1836
    .local v3, moved:Z
    const/4 v6, 0x0

    .line 1837
    .local v6, showScroll:Z
    packed-switch p1, :pswitch_data_0

    .line 1861
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1862
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1863
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1866
    :cond_1
    if-eqz v6, :cond_2

    .line 1867
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1870
    :cond_2
    return v3

    .line 1830
    .end local v1           #endOfRow:I
    .end local v3           #moved:Z
    .end local v6           #showScroll:Z
    .end local v7           #startOfRow:I
    :cond_3
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1831
    .local v2, invertedSelection:I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1832
    .restart local v1       #endOfRow:I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7       #startOfRow:I
    goto :goto_0

    .line 1839
    .end local v2           #invertedSelection:I
    .restart local v3       #moved:Z
    .restart local v6       #showScroll:Z
    :pswitch_0
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_0

    .line 1841
    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1842
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1843
    const/4 v3, 0x1

    .line 1845
    if-ne v5, v1, :cond_4

    move v6, v8

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v9

    goto :goto_2

    .line 1850
    :pswitch_1
    if-lez v5, :cond_0

    .line 1852
    iput v12, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1853
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1854
    const/4 v3, 0x1

    .line 1856
    if-ne v5, v7, :cond_5

    move v6, v8

    :goto_3
    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_3

    .line 1837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 176
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 177
    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    .line 180
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    .line 183
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    .line 186
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    iput v1, p0, Landroid/widget/GridView;->mOldItemCount:I

    .line 187
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/GridView;->mItemCount:I

    .line 188
    iput-boolean v4, p0, Landroid/widget/GridView;->mDataChanged:Z

    .line 189
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 191
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 192
    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 197
    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    .line 198
    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 202
    .local v0, position:I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 211
    .end local v0           #position:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 212
    return-void

    .line 200
    :cond_1
    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_0

    .line 206
    .end local v0           #position:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 208
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1
.end method

.method public setColumnWidth(I)V
    .locals 1
    .parameter "columnWidth"

    .prologue
    .line 2116
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    .line 2117
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2118
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2120
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1970
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1971
    invoke-direct {p0, p1}, Landroid/widget/GridView;->fixGravity(I)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mGravity:I

    .line 1972
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1974
    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .parameter "horizontalSpacing"

    .prologue
    .line 2013
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2014
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2015
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2017
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .parameter "numColumns"

    .prologue
    .line 2163
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    .line 2164
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2165
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2167
    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1489
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1490
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1494
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    .line 1495
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1498
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1499
    return-void

    .line 1492
    :cond_1
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method setSelectionInt(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1508
    iget v4, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    .line 1510
    .local v4, previousSelectedPosition:I
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_0

    .line 1511
    iget-object v5, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1514
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1515
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1517
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1519
    .local v0, next:I
    :goto_0
    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1522
    .local v2, previous:I
    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1523
    .local v1, nextRow:I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1525
    .local v3, previousRow:I
    if-eq v1, v3, :cond_1

    .line 1526
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1529
    :cond_1
    return-void

    .line 1517
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_2
    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    goto :goto_0

    .restart local v0       #next:I
    :cond_3
    move v2, v4

    .line 1519
    goto :goto_1
.end method

.method public setStretchMode(I)V
    .locals 1
    .parameter "stretchMode"

    .prologue
    .line 2098
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    .line 2099
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2100
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2102
    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .parameter "verticalSpacing"

    .prologue
    .line 2070
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 2071
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2072
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 2074
    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .parameter "offset"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 844
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 845
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 834
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 835
    return-void
.end method
