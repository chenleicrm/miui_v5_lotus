.class Lcom/miui/internal/v5/widget/SearchActionModeView$1;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;


# direct methods
.method constructor <init>(Lcom/miui/internal/v5/widget/SearchActionModeView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimaton:Z
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$000(Lcom/miui/internal/v5/widget/SearchActionModeView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimationMode:I
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$100(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$200(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateView:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$200(Lcom/miui/internal/v5/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, animateView:Landroid/view/View;
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->isFragmentViewPagerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->getSplitActionBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewTranslationYLength:I
    invoke-static {v3}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$400(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v3

    sub-int/2addr v2, v3

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomLength:I
    invoke-static {v1, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$302(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomLength:I
    invoke-static {v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$300(Lcom/miui/internal/v5/widget/SearchActionModeView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    :cond_0
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mAnimateViewBottomStart:I
    invoke-static {v1, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$502(Lcom/miui/internal/v5/widget/SearchActionModeView;I)I

    .end local v0           #animateView:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    #getter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mCurrentAnimation:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$600(Lcom/miui/internal/v5/widget/SearchActionModeView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    iget-object v1, p0, Lcom/miui/internal/v5/widget/SearchActionModeView$1;->this$0:Lcom/miui/internal/v5/widget/SearchActionModeView;

    const/4 v2, 0x0

    #setter for: Lcom/miui/internal/v5/widget/SearchActionModeView;->mRequestAnimaton:Z
    invoke-static {v1, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->access$002(Lcom/miui/internal/v5/widget/SearchActionModeView;Z)Z

    :cond_2
    return-void
.end method
