.class public Lmiui/widget/GuidePopupView;
.super Landroid/widget/FrameLayout;
.source "GuidePopupView.java"


# static fields
.field public static final ARROW_BOTTOM_MODE:I = 0x1

.field public static final ARROW_TOP_MODE:I


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowMode:I

.field private mArrowRight:Landroid/widget/ImageView;

.field private mContentText:Landroid/widget/TextView;

.field private mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

.field private mLayoutRunnable:Ljava/lang/Runnable;

.field private mOffsetX:I

.field private mOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupView$1;-><init>(Lmiui/widget/GuidePopupView;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lmiui/widget/GuidePopupView$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupView$1;-><init>(Lmiui/widget/GuidePopupView;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/GuidePopupView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/GuidePopupView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method static synthetic access$300(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/widget/GuidePopupView;->mOffsetY:I

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/GuidePopupView;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/widget/GuidePopupView;->mOffsetX:I

    return v0
.end method

.method static synthetic access$500(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/widget/GuidePopupView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmiui/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lmiui/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v1}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getArrowMode()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lmiui/widget/GuidePopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, container:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x60b0030

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v0, 0x60b0031

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-virtual {p0, p2, p3, p4, p5}, Lmiui/widget/GuidePopupView;->setFrame(IIII)Z

    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0
    .parameter "anchor"

    .prologue
    iput-object p1, p0, Lmiui/widget/GuidePopupView;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public setArrowMode(I)V
    .locals 2
    .parameter "arrowMode"

    .prologue
    iput p1, p0, Lmiui/widget/GuidePopupView;->mArrowMode:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v1, 0x602005f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v1, 0x6020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    const v1, 0x6020061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowLeft:Landroid/widget/ImageView;

    const v1, 0x6020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mArrowRight:Landroid/widget/ImageView;

    const v1, 0x6020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    const v1, 0x6020064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuidePopupWindow(Lmiui/widget/GuidePopupWindow;)V
    .locals 0
    .parameter "guidePopupWindow"

    .prologue
    iput-object p1, p0, Lmiui/widget/GuidePopupView;->mGuidePopupWindow:Lmiui/widget/GuidePopupWindow;

    return-void
.end method

.method public setGuideText(I)V
    .locals 1
    .parameter "textId"

    .prologue
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    iget-object v0, p0, Lmiui/widget/GuidePopupView;->mContentText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    iput p1, p0, Lmiui/widget/GuidePopupView;->mOffsetX:I

    iput p2, p0, Lmiui/widget/GuidePopupView;->mOffsetY:I

    return-void
.end method
