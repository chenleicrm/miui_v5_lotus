.class Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "IconMenuBarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/menubar/IconMenuBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExpandAnimation"
.end annotation


# instance fields
.field private mExpand:Z

.field private mTransition:F

.field final synthetic this$0:Lmiui/v5/widget/menubar/IconMenuBarView;


# direct methods
.method public constructor <init>(Lmiui/v5/widget/menubar/IconMenuBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 255
    invoke-virtual {p0, p0}, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 256
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v4, 0x3f80

    .line 273
    iget-boolean v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mExpand:Z

    if-eqz v2, :cond_0

    .line 274
    iget v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mTransition:F

    neg-float v2, v2

    mul-float v1, v2, p1

    .line 275
    .local v1, transition:F
    move v0, p1

    .line 281
    .local v0, alpha:F
    :goto_0
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 282
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mSecondaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$100(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 284
    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 285
    return-void

    .line 277
    .end local v0           #alpha:F
    .end local v1           #transition:F
    :cond_0
    iget v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mTransition:F

    neg-float v2, v2

    sub-float v3, v4, p1

    mul-float v1, v2, v3

    .line 278
    .restart local v1       #transition:F
    sub-float v0, v4, p1

    .restart local v0       #alpha:F
    goto :goto_0
.end method

.method public expand(Z)Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;
    .locals 0
    .parameter "expand"

    .prologue
    .line 259
    iput-boolean p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mExpand:Z

    .line 260
    return-object p0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 304
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mExpand:Z

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerCollapsedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$600(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    const/4 v1, 0x0

    #setter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I
    invoke-static {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$702(Lmiui/v5/widget/menubar/IconMenuBarView;I)I

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    const/4 v1, 0x3

    #setter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mViewState:I
    invoke-static {v0, v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$702(Lmiui/v5/widget/menubar/IconMenuBarView;I)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 317
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v0, 0x0

    .line 288
    iget-boolean v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mExpand:Z

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mDimContainer:Landroid/view/View;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$200(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 292
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$000(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mPrimaryContainerExpanedBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$300(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_0
    iget-object v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mMenu:Lmiui/v5/widget/menubar/MenuBar;
    invoke-static {v1}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$400(Lmiui/v5/widget/menubar/IconMenuBarView;)Lmiui/v5/widget/menubar/MenuBar;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mExpand:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuModeChange(I)V

    .line 300
    iget-object v0, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->this$0:Lmiui/v5/widget/menubar/IconMenuBarView;

    #getter for: Lmiui/v5/widget/menubar/IconMenuBarView;->mMoreIconView:Landroid/view/View;
    invoke-static {v0}, Lmiui/v5/widget/menubar/IconMenuBarView;->access$500(Lmiui/v5/widget/menubar/IconMenuBarView;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mExpand:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 301
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public transition(F)Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;
    .locals 0
    .parameter "transition"

    .prologue
    .line 264
    iput p1, p0, Lmiui/v5/widget/menubar/IconMenuBarView$ExpandAnimation;->mTransition:F

    .line 265
    return-object p0
.end method
