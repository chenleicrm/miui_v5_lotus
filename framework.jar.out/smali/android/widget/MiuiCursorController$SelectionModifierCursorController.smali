.class public Landroid/widget/MiuiCursorController$SelectionModifierCursorController;
.super Landroid/widget/MiuiCursorController;
.source "MiuiCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MiuiCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mCoords:[I

.field private mCoords1:[I

.field private mCoords2:[I

.field private mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

.field mHideInvisiblePanel:Z

.field private mIsShowing:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

.field private mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 4
    .parameter "owner"
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 553
    invoke-direct {p0, p1, p2}, Landroid/widget/MiuiCursorController;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    .line 539
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    .line 543
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    .line 544
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    .line 546
    new-array v1, v3, [I

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    .line 554
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 555
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {p0, v1, v3, p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->initHandleView(Landroid/widget/Editor;ILandroid/widget/MiuiCursorController;)Landroid/widget/MiuiCursorController$MiuiHandleView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 556
    const v1, 0x603001a

    invoke-virtual {p0, v1}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->createFloatPanelViewController(I)Landroid/widget/MiuiCursorController$FloatPanelViewController;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    .line 557
    new-instance v0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController$1;-><init>(Landroid/widget/MiuiCursorController$SelectionModifierCursorController;)V

    .line 564
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0036

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 565
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0037

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 566
    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    const v2, 0x60b0038

    invoke-virtual {v1, v2, v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 568
    return-void
.end method

.method static synthetic access$200(Landroid/widget/MiuiCursorController$SelectionModifierCursorController;)Landroid/widget/MiuiCursorController$FloatPanelViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 529
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    return-object v0
.end method


# virtual methods
.method public addClipData(Landroid/content/ClipboardManager;Landroid/content/ClipData;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "clipboard"
    .parameter "data_not_used"
    .parameter "selected"

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-static {v0, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 804
    return-void
.end method

.method public computePanelPosition([I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 592
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 594
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v0, v1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    aput v0, p1, v3

    .line 598
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v3

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v3

    if-ne v0, v1, :cond_1

    .line 599
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    aput v0, p1, v2

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 602
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v0, v0, v2

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords1:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, p1, v2

    goto :goto_0
.end method

.method public computePanelPositionOnBottom()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 608
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 609
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iget-object v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    invoke-virtual {v3, v4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->getHotspotLocationOnScreen([I)V

    .line 610
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 612
    :cond_0
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 613
    .local v2, maxBottom:I
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x60a001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 615
    .local v1, handleHeight:I
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mCoords2:[I

    aget v3, v3, v5

    add-int v0, v3, v1

    .line 616
    .local v0, endHandleBottom:I
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int v3, v2, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .end local v2           #maxBottom:I
    :cond_1
    return v2
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    .line 622
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->hide()V

    .line 623
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 625
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mIsShowing:Z

    return v0
.end method

.method public onHandleTouchEvent(Landroid/widget/MiuiCursorController$MiuiHandleView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "handle"
    .parameter "ev"

    .prologue
    .line 787
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 798
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 789
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    goto :goto_0

    .line 793
    :pswitch_1
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v0}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    goto :goto_0

    .line 787
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 670
    const/4 v9, 0x0

    .line 672
    .local v9, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 674
    .local v7, action:I
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    if-eqz v0, :cond_3

    .line 675
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 677
    if-eq v7, v1, :cond_0

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2

    .line 678
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 679
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 682
    :cond_1
    const-string v0, "MiuiCursorController"

    const-string v2, "action UP or Cancel to stop moving event to HandleView"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v1

    .line 765
    :goto_0
    return v0

    .line 689
    :cond_3
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v7, :cond_9

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 691
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 692
    .local v4, y:F
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->inRecRange(FF)Z

    move-result v13

    .line 693
    .local v13, si:Z
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->inRecRange(FF)Z

    move-result v8

    .line 694
    .local v8, ei:Z
    const-string v0, "MiuiCursorController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Touch in handleview: startHandleView="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " endHandleView="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    if-eqz v13, :cond_7

    if-eqz v8, :cond_7

    .line 697
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->distance(FF)F

    move-result v0

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2, v3, v4}, Landroid/widget/MiuiCursorController$MiuiHandleView;->distance(FF)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    :goto_1
    iput-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 707
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    if-eqz v0, :cond_9

    .line 708
    const-string v0, "MiuiCursorController"

    const-string v2, "Touch near handle and move event to HandleView"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 710
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 712
    :cond_5
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v0, p1}, Landroid/widget/MiuiCursorController$MiuiHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 713
    goto :goto_0

    .line 697
    :cond_6
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    goto :goto_1

    .line 700
    :cond_7
    if-eqz v13, :cond_8

    .line 701
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iput-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    goto :goto_2

    .line 703
    :cond_8
    if-eqz v8, :cond_4

    .line 704
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    iput-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    goto :goto_2

    .line 719
    .end local v3           #x:F
    .end local v4           #y:F
    .end local v8           #ei:Z
    .end local v13           #si:Z
    :cond_9
    packed-switch v7, :pswitch_data_0

    .line 758
    :cond_a
    :goto_3
    :pswitch_0
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 759
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getMagnifierController()Landroid/widget/MagnifierController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/MagnifierController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 761
    :cond_b
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 762
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/MiuiCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/MiuiCursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_c
    move v0, v9

    .line 765
    goto/16 :goto_0

    .line 721
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 722
    .restart local v3       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 724
    .restart local v4       #y:F
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 725
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    iget-wide v1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    iget v5, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    iget v6, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Editor;->startTextSelectionModeIfDouleTap(JFFFF)V

    .line 726
    iput v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionX:F

    .line 727
    iput v4, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_3

    .line 734
    .end local v3           #x:F
    .end local v4           #y:F
    :pswitch_2
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 737
    .local v12, pointerCount:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_4
    if-ge v10, v12, :cond_a

    .line 738
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v11

    .line 739
    .local v11, offset:I
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v11, v0, :cond_d

    .line 740
    iput v11, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 741
    :cond_d
    iget v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v11, v0, :cond_e

    .line 742
    iput v11, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 737
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 748
    .end local v10           #index:I
    .end local v11           #offset:I
    .end local v12           #pointerCount:I
    :pswitch_3
    iget-object v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->onTapUpEvent()V

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_3

    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    .line 777
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 778
    return-void
.end method

.method public setMinMaxOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 807
    iput p1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput p1, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 808
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 571
    const-string v3, "MiuiCursorController"

    const-string v4, "SelectionModifierCursorController is shown"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTouchOnHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    .line 574
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    :goto_0
    return-void

    .line 577
    :cond_0
    const-string v3, "MiuiCursorController"

    const-string v4, "SelectionModifierCursorController is shown and hide InsertionPointCursorController"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mIsShowing:Z

    .line 579
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 580
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->show()V

    .line 581
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->updatePosition()V

    .line 583
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v3}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 584
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->hideInsertionPointCursorControllerWrap()V

    .line 585
    const/4 v3, 0x3

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 586
    .local v0, buttons:[I
    const/4 v3, 0x2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 587
    .local v1, separators:[I
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mOwner:Landroid/widget/Editor;

    invoke-virtual {v3, v0}, Landroid/widget/Editor;->getFloatPanelShowHides([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 588
    .local v2, showHides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v3, v0, v1, v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showHideButtons([I[ILjava/util/ArrayList;)V

    goto :goto_0

    .line 585
    :array_0
    .array-data 0x4
        0x36t 0x0t 0xbt 0x6t
        0x37t 0x0t 0xbt 0x6t
        0x38t 0x0t 0xbt 0x6t
    .end array-data

    .line 586
    :array_1
    .array-data 0x4
        0x81t 0x0t 0xbt 0x6t
        0x82t 0x0t 0xbt 0x6t
    .end array-data
.end method

.method public updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 632
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 637
    .local v1, selectionStart:I
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 639
    .local v0, selectionEnd:I
    if-ltz v1, :cond_2

    if-gez v0, :cond_3

    .line 641
    :cond_2
    const-string v2, "MiuiCursorController"

    const-string v3, "Update selection controller position called with no cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 647
    :cond_3
    if-ne v1, v0, :cond_4

    .line 648
    invoke-virtual {p0}, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 652
    :cond_4
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 653
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/MiuiCursorController$MiuiHandleView;->positionAtCursorOffset(IZ)V

    .line 655
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mStartHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mEndHandle:Landroid/widget/MiuiCursorController$MiuiHandleView;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$MiuiHandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 656
    :cond_5
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    if-eqz v2, :cond_0

    .line 657
    :cond_6
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->showAndUpdatePositionAsync()V

    .line 658
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0

    .line 662
    :cond_7
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mPanel:Landroid/widget/MiuiCursorController$FloatPanelViewController;

    invoke-virtual {v2}, Landroid/widget/MiuiCursorController$FloatPanelViewController;->hide()V

    .line 664
    iput-boolean v3, p0, Landroid/widget/MiuiCursorController$SelectionModifierCursorController;->mHideInvisiblePanel:Z

    goto :goto_0
.end method
