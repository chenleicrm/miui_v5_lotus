.class public Lmiui/widget/ClearableEditText;
.super Landroid/widget/EditText;
.source "ClearableEditText.java"


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field private mShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    iput-boolean v2, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, ds:[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-nez v1, :cond_0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    aget-object v1, v0, v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ClearableEditText need only drawableRight"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget-object v1, v0, v3

    iput-object v1, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Lmiui/widget/ClearableEditText$1;

    invoke-direct {v1, p0}, Lmiui/widget/ClearableEditText$1;-><init>(Lmiui/widget/ClearableEditText;)V

    invoke-virtual {p0, v1}, Lmiui/widget/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x10100a9

    invoke-virtual {p0, v1}, Lmiui/widget/ClearableEditText;->setAdditionalState(I)V

    return-void
.end method

.method static synthetic access$002(Lmiui/widget/ClearableEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    return p1
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3, v1}, Lmiui/widget/ClearableEditText;->performHapticFeedback(II)Z

    invoke-direct {p0}, Lmiui/widget/ClearableEditText;->onClearButtonClick()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ClearableEditText;->performHapticFeedback(II)Z

    goto :goto_0

    :pswitch_3
    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3, v1}, Lmiui/widget/ClearableEditText;->performHapticFeedback(II)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/ClearableEditText;->mPressed:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onClearButtonClick()V
    .locals 1

    .prologue
    const-string v0, ""

    invoke-virtual {p0, v0}, Lmiui/widget/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/ClearableEditText;->mShown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lmiui/widget/ClearableEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClearableEditText need only drawableRight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lmiui/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
