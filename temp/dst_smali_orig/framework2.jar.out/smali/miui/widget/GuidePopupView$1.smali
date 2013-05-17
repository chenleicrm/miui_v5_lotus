.class Lmiui/widget/GuidePopupView$1;
.super Ljava/lang/Object;
.source "GuidePopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/GuidePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/GuidePopupView;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    invoke-virtual {v11}, Lmiui/widget/GuidePopupView;->getWidth()I

    move-result v6

    .local v6, displayWidth:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .local v5, contentTextWidth:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .local v4, contentTextHeight:I
    const/4 v11, 0x2

    new-array v7, v11, [I

    .local v7, drawingLocation:[I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    .local v1, anchorWidth:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v0

    .local v0, anchorHeight:I
    const/4 v11, 0x0

    aget v11, v7, v11

    div-int/lit8 v12, v1, 0x2

    add-int v9, v11, v12

    .local v9, spaceLeft:I
    sub-int v10, v6, v9

    .local v10, spaceRight:I
    div-int/lit8 v2, v5, 0x2

    .local v2, arrowLeftWidth:I
    sub-int v3, v5, v2

    .local v3, arrowRightWidth:I
    const/4 v8, 0x0

    .local v8, paddingTop:I
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowMode:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$200(Lmiui/widget/GuidePopupView;)I

    move-result v11

    if-ne v11, v13, :cond_2

    aget v11, v7, v13

    sub-int v8, v11, v4

    if-gez v8, :cond_0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    invoke-virtual {v11}, Lmiui/widget/GuidePopupView;->getTop()I

    move-result v11

    add-int/2addr v8, v11

    if-lt v9, v2, :cond_3

    if-lt v10, v3, :cond_3

    sub-int/2addr v9, v2

    sub-int/2addr v10, v3

    :cond_1
    :goto_1
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mOffsetY:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$300(Lmiui/widget/GuidePopupView;)I

    move-result v11

    add-int/2addr v8, v11

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mOffsetX:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$400(Lmiui/widget/GuidePopupView;)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mOffsetX:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$400(Lmiui/widget/GuidePopupView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;

    move-result-object v11

    add-int v12, v9, v5

    add-int v13, v8, v4

    invoke-virtual {v11, v9, v8, v12, v13}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$500(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;

    move-result-object v11

    add-int v12, v9, v2

    add-int v13, v8, v4

    invoke-virtual {v11, v9, v8, v12, v13}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$600(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;

    move-result-object v11

    sub-int v12, v6, v10

    sub-int/2addr v12, v3

    sub-int v13, v6, v10

    add-int v14, v8, v4

    invoke-virtual {v11, v12, v8, v13, v14}, Landroid/widget/ImageView;->layout(IIII)V

    return-void

    :cond_2
    iget-object v11, p0, Lmiui/widget/GuidePopupView$1;->this$0:Lmiui/widget/GuidePopupView;

    #getter for: Lmiui/widget/GuidePopupView;->mArrowMode:I
    invoke-static {v11}, Lmiui/widget/GuidePopupView;->access$200(Lmiui/widget/GuidePopupView;)I

    move-result v11

    if-nez v11, :cond_0

    aget v11, v7, v13

    add-int v8, v11, v0

    goto :goto_0

    :cond_3
    if-ge v10, v3, :cond_4

    move v3, v10

    const/4 v10, 0x0

    sub-int v9, v6, v5

    sub-int v2, v5, v3

    goto :goto_1

    :cond_4
    if-ge v9, v2, :cond_1

    move v2, v9

    const/4 v9, 0x0

    sub-int v10, v6, v5

    sub-int v3, v5, v2

    goto :goto_1
.end method
