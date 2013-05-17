.class public Lmiui/widget/MultiPositionBar;
.super Landroid/widget/LinearLayout;
.source "MultiPositionBar.java"


# static fields
.field private static final DEFAULT_SEEKBAR_PADDING:I = 0x10


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mImageViewGroup:Landroid/view/ViewGroup;

.field private mPositionDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeekBar:Lmiui/widget/SeekBar;

.field private mTextViewGroup:Landroid/view/ViewGroup;

.field private mViewGroup:Landroid/widget/LinearLayout;

.field private mViewGroupContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v0, 0x60d009a

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/MultiPositionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lmiui/R$styleable;->MultiPositionBar:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v6}, Lmiui/widget/MultiPositionBar;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lmiui/widget/SeekBar;

    const/4 v3, 0x0

    const v4, 0x60100ba

    invoke-direct {v2, p1, v3, v4}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v2, v1}, Lmiui/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lmiui/widget/MultiPositionBar;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {p0, v2}, Lmiui/widget/MultiPositionBar;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mPositionDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiui/widget/MultiPositionBar;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/widget/MultiPositionBar;->setData([Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/MultiPositionBar;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/MultiPositionBar;I)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/widget/MultiPositionBar;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lmiui/widget/MultiPositionBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/MultiPositionBar;I)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/widget/MultiPositionBar;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/MultiPositionBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mImageViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getImageView(I)Landroid/widget/ImageView;
    .locals 4
    .parameter "i"

    .prologue
    const/4 v2, -0x2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v1, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/MultiPositionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mPositionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->measure(II)V

    int-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lmiui/widget/MultiPositionBar;->getThumbX(D)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getTextView(I)Landroid/widget/TextView;
    .locals 4
    .parameter "i"

    .prologue
    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lmiui/widget/MultiPositionBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mTextViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    int-to-double v2, p1

    invoke-direct {p0, v2, v3}, Lmiui/widget/MultiPositionBar;->getThumbX(D)I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private getThumbX(D)I
    .locals 4
    .parameter "pos"

    .prologue
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v3}, Lmiui/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v3}, Lmiui/widget/SeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v0, v2

    .local v0, available:D
    iget-object v2, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v2}, Lmiui/widget/SeekBar;->getMax()I

    move-result v2

    int-to-double v2, v2

    div-double v2, p1, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iget-object v3, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v3}, Lmiui/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private setData([Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "datas"

    .prologue
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lmiui/widget/SeekBar;->setMax(I)V

    new-instance v0, Lmiui/widget/MultiPositionBar$1;

    invoke-direct {v0, p0}, Lmiui/widget/MultiPositionBar$1;-><init>(Lmiui/widget/MultiPositionBar;)V

    invoke-virtual {p0, v0}, Lmiui/widget/MultiPositionBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0}, Lmiui/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "thumb"

    .prologue
    iget-object v0, p0, Lmiui/widget/MultiPositionBar;->mSeekBar:Lmiui/widget/SeekBar;

    invoke-virtual {v0, p1}, Lmiui/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
