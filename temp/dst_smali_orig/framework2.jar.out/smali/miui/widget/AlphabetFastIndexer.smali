.class public Lmiui/widget/AlphabetFastIndexer;
.super Landroid/widget/ImageView;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;,
        Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;
    }
.end annotation


# static fields
.field private static final FADE_DELAYED:I = 0x5dc

.field private static final MSG_FADE:I = 0x1

.field private static final STARRED_LABEL:Ljava/lang/String; = null

.field public static final STARRED_TITLE:Ljava/lang/String; = "!"

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_NONE:I


# instance fields
.field private mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

.field private mAlphabetTable:[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHighlightColor:I

.field private mLastAlphabetIndex:I

.field mListScrollState:I

.field private mListView:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<*>;"
        }
    .end annotation
.end field

.field private mNormalColor:I

.field private mOverlay:Landroid/widget/TextView;

.field private mOverlayBackground:Landroid/graphics/drawable/Drawable;

.field private mOverlayLeftMargin:I

.field private mOverlayTextColor:I

.field private mOverlayTextSize:I

.field private mOverlayTopMargin:I

.field private final mPaint:Landroid/text/TextPaint;

.field private mRefreshMaskRunnable:Ljava/lang/Runnable;

.field private mState:I

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mVerticalPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/String;

    const-string v1, "\u2605"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/widget/AlphabetFastIndexer;->STARRED_LABEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v0, 0x60d

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/AlphabetFastIndexer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mTextBounds:Landroid/graphics/Rect;

    new-instance v14, Lmiui/widget/AlphabetFastIndexer$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmiui/widget/AlphabetFastIndexer$1;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    new-instance v14, Lmiui/widget/AlphabetFastIndexer$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmiui/widget/AlphabetFastIndexer$2;-><init>(Lmiui/widget/AlphabetFastIndexer;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, res:Landroid/content/res/Resources;
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v14

    if-nez v14, :cond_0

    move/from16 v12, p3

    .local v12, style:I
    :goto_0
    sget-object v14, Lcom/miui/internal/R$styleable;->AlphabetFastIndexer:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14, v15, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .local v2, a:Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const v15, 0x6070002

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mNormalColor:I

    const/4 v14, 0x3

    const/high16 v15, 0x607

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mHighlightColor:I

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v13

    .local v13, table:[Ljava/lang/CharSequence;
    if-eqz v13, :cond_1

    array-length v14, v13

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    const/4 v6, 0x0

    .local v6, i:I
    move-object v3, v13

    .local v3, arr$:[Ljava/lang/CharSequence;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v5, v3, v8

    .local v5, cs:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .end local v2           #a:Landroid/content/res/TypedArray;
    .end local v3           #arr$:[Ljava/lang/CharSequence;
    .end local v5           #cs:Ljava/lang/CharSequence;
    .end local v7           #i:I
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #style:I
    .end local v13           #table:[Ljava/lang/CharSequence;
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v12

    goto :goto_0

    .restart local v2       #a:Landroid/content/res/TypedArray;
    .restart local v12       #style:I
    .restart local v13       #table:[Ljava/lang/CharSequence;
    :cond_1
    const/high16 v14, 0x606

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    :cond_2
    const/4 v14, 0x6

    const/high16 v15, 0x60a

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    const/4 v14, 0x7

    const v15, 0x60a0001

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    const/16 v14, 0x9

    const v15, 0x60a0002

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    const/16 v14, 0x8

    const v15, 0x6070001

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    if-nez v14, :cond_3

    const v14, 0x6020004

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    :cond_3
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .local v10, paint:Landroid/text/TextPaint;
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v14, 0x4

    const v15, 0x60a0003

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lmiui/widget/AlphabetFastIndexer;->mPaint:Landroid/text/TextPaint;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/widget/AlphabetFastIndexer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/AlphabetFastIndexer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    return-object v0
.end method

.method private drawThumbInternal(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "title"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "!"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/String;

    .end local p1
    sget-object v1, Lmiui/widget/AlphabetFastIndexer;->STARRED_LABEL:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local p1
    :cond_2
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private getListOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPostion(FLandroid/widget/SectionIndexer;)I
    .locals 9
    .parameter "y"
    .parameter "indexer"

    .prologue
    const/4 v5, -0x1

    invoke-interface {p2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    .local v6, sections:[Ljava/lang/Object;
    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v3

    .local v3, paddingTop:I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v2

    .local v2, paddingBottom:I
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    sub-int v0, v7, v2

    .local v0, contentHeight:I
    if-lez v0, :cond_0

    int-to-float v7, v3

    sub-float v7, p1, v7

    int-to-float v8, v0

    div-float v4, v7, v8

    .local v4, rate:F
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    array-length v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .local v1, needlePos:I
    if-ltz v1, :cond_0

    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_2

    array-length v5, v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .local v5, section:I
    if-gez v5, :cond_3

    neg-int v7, v5

    add-int/lit8 v5, v7, -0x2

    :cond_3
    if-gez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 4

    .prologue
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    .local v2, si:Landroid/widget/SectionIndexer;
    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .local v1, la:Landroid/widget/Adapter;
    instance-of v3, v1, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/widget/SectionIndexer;

    goto :goto_0

    :cond_2
    instance-of v3, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .local v0, hla:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .end local v2           #si:Landroid/widget/SectionIndexer;
    check-cast v2, Landroid/widget/SectionIndexer;

    .restart local v2       #si:Landroid/widget/SectionIndexer;
    goto :goto_0
.end method

.method private scrollTo(Landroid/widget/SectionIndexer;I)V
    .locals 24
    .parameter "indexer"
    .parameter "position"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .local v2, count:I
    invoke-direct/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v10

    .local v10, listOffset:I
    const/high16 v21, 0x3f80

    int-to-float v0, v2

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x4100

    div-float v8, v21, v22

    .local v8, fThreshold:F
    invoke-interface/range {p1 .. p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v19

    .local v19, sections:[Ljava/lang/Object;
    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_b

    move-object/from16 v0, v19

    array-length v11, v0

    .local v11, nSections:I
    move/from16 v17, p2

    .local v17, section:I
    move/from16 v0, v17

    if-lt v0, v11, :cond_0

    add-int/lit8 v17, v11, -0x1

    :cond_0
    move/from16 v4, v17

    .local v4, exactSection:I
    move/from16 v18, v17

    .local v18, sectionIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .local v9, index:I
    move v12, v2

    .local v12, nextIndex:I
    move v15, v9

    .local v15, prevIndex:I
    move/from16 v16, v17

    .local v16, prevSection:I
    add-int/lit8 v14, v17, 0x1

    .local v14, nextSection:I
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    add-int/lit8 v21, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    :cond_1
    if-ne v12, v9, :cond_3

    :cond_2
    if-lez v17, :cond_3

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v15

    if-eq v15, v9, :cond_4

    move/from16 v16, v17

    move/from16 v18, v17

    :cond_3
    :goto_0
    add-int/lit8 v13, v14, 0x1

    .local v13, nextNextSection:I
    :goto_1
    if-ge v13, v11, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v12, :cond_5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .end local v13           #nextNextSection:I
    :cond_4
    if-nez v17, :cond_2

    const/16 v18, 0x0

    goto :goto_0

    .restart local v13       #nextNextSection:I
    :cond_5
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v7, v21, v22

    .local v7, fPrev:F
    int-to-float v0, v14

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v6, v21, v22

    .local v6, fNext:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    div-float v3, v21, v22

    .local v3, current:F
    move/from16 v0, v16

    if-ne v0, v4, :cond_8

    sub-float v21, v3, v7

    cmpg-float v21, v21, v8

    if-gez v21, :cond_8

    move v9, v15

    :goto_2
    add-int/lit8 v21, v2, -0x1

    move/from16 v0, v21

    if-le v9, v0, :cond_6

    add-int/lit8 v9, v2, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .local v5, expList:Landroid/widget/ExpandableListView;
    add-int v21, v9, v10

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .end local v3           #current:F
    .end local v4           #exactSection:I
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v11           #nSections:I
    .end local v12           #nextIndex:I
    .end local v13           #nextNextSection:I
    .end local v14           #nextSection:I
    .end local v15           #prevIndex:I
    .end local v16           #prevSection:I
    .end local v17           #section:I
    :goto_3
    if-ltz v18, :cond_7

    aget-object v21, v19, v18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .local v20, text:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    .end local v20           #text:Ljava/lang/String;
    :cond_7
    return-void

    .restart local v3       #current:F
    .restart local v4       #exactSection:I
    .restart local v6       #fNext:F
    .restart local v7       #fPrev:F
    .restart local v11       #nSections:I
    .restart local v12       #nextIndex:I
    .restart local v13       #nextNextSection:I
    .restart local v14       #nextSection:I
    .restart local v15       #prevIndex:I
    .restart local v16       #prevSection:I
    .restart local v17       #section:I
    :cond_8
    sub-int v21, v12, v15

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v22, v3, v7

    mul-float v21, v21, v22

    sub-float v22, v6, v7

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-int v9, v15, v21

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    add-int v22, v9, v10

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_3

    .end local v3           #current:F
    .end local v4           #exactSection:I
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v9           #index:I
    .end local v11           #nSections:I
    .end local v12           #nextIndex:I
    .end local v13           #nextNextSection:I
    .end local v14           #nextSection:I
    .end local v15           #prevIndex:I
    .end local v16           #prevSection:I
    .end local v17           #section:I
    .end local v18           #sectionIndex:I
    :cond_b
    mul-int v21, p2, v2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    check-cast v5, Landroid/widget/ExpandableListView;

    .restart local v5       #expList:Landroid/widget/ExpandableListView;
    add-int v21, v9, v10

    invoke-static/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .end local v5           #expList:Landroid/widget/ExpandableListView;
    :goto_4
    const/16 v18, -0x1

    .restart local v18       #sectionIndex:I
    goto/16 :goto_3

    .end local v18           #sectionIndex:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/ListView;

    add-int v22, v9, v10

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    move-object/from16 v21, v0

    add-int v22, v9, v10

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_4
.end method


# virtual methods
.method public attatch(Landroid/widget/AdapterView;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v6, 0x11

    const/4 v4, -0x2

    const/4 v5, 0x0

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->detach()V

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    iput v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .local v2, parent:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget-object v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    iget v4, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTextColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    or-int/lit8 v3, v3, 0x30

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    goto :goto_0
.end method

.method public decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .parameter "l"

    .prologue
    new-instance v0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;

    invoke-direct {v0, p0, p1}, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;-><init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method

.method public detach()V
    .locals 2

    .prologue
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .local v0, parent:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    .end local v0           #parent:Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public drawThumb(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lmiui/widget/AlphabetFastIndexer;->drawThumbInternal(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getIndexerIntrinsicWidth()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingTop()I

    move-result v17

    .local v17, top:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getHeight()I

    move-result v1

    sub-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getPaddingBottom()I

    move-result v3

    sub-int v15, v1, v3

    .local v15, height:I
    if-gtz v15, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/widget/AlphabetFastIndexer;->mPaint:Landroid/text/TextPaint;

    .local v7, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/AlphabetFastIndexer;->mTextBounds:Landroid/graphics/Rect;

    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, table:[Ljava/lang/String;
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    div-float v14, v1, v3

    .local v14, alphaHeight:F
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/AlphabetFastIndexer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x4000

    div-float v5, v1, v3

    .local v5, x:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v12, v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v12, v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/AlphabetFastIndexer;->mNormalColor:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1
    aget-object v1, v16, v12

    const-string v3, "!"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v2, Lmiui/widget/AlphabetFastIndexer;->STARRED_LABEL:Ljava/lang/String;

    .local v2, alpha:Ljava/lang/String;
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7, v2, v1, v3, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v12

    mul-float/2addr v1, v14

    move/from16 v0, v17

    int-to-float v3, v0

    add-float/2addr v1, v3

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v3, v14, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float v6, v1, v3

    .local v6, y:F
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-interface/range {v8 .. v13}, Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;->draw(Lmiui/widget/AlphabetFastIndexer;Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v2           #alpha:Ljava/lang/String;
    .end local v6           #y:F
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lmiui/widget/AlphabetFastIndexer;->mHighlightColor:I

    invoke-virtual {v7, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    :cond_4
    aget-object v2, v16, v12

    goto :goto_2
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    iget-object v0, p0, Lmiui/widget/AlphabetFastIndexer;->mRefreshMaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/widget/AlphabetFastIndexer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v5, :cond_0

    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    .local v1, indexer:Landroid/widget/SectionIndexer;
    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v3, 0x5dc

    invoke-virtual {p0, v3}, Lmiui/widget/AlphabetFastIndexer;->stop(I)V

    :goto_1
    move v3, v4

    goto :goto_0

    :pswitch_1
    iput v4, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    invoke-virtual {p0, v4}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v5, v1}, Lmiui/widget/AlphabetFastIndexer;->getPostion(FLandroid/widget/SectionIndexer;)I

    move-result v2

    .local v2, pos:I
    if-gez v2, :cond_2

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v5, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v2}, Lmiui/widget/AlphabetFastIndexer;->scrollTo(Landroid/widget/SectionIndexer;I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshMask()V
    .locals 7

    .prologue
    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    .local v3, newIndex:I
    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getSectionIndexer()Landroid/widget/SectionIndexer;

    move-result-object v1

    .local v1, indexer:Landroid/widget/SectionIndexer;
    if-eqz v1, :cond_2

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mListView:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v5

    invoke-direct {p0}, Lmiui/widget/AlphabetFastIndexer;->getListOffset()I

    move-result v6

    sub-int v0, v5, v6

    .local v0, first:I
    invoke-interface {v1, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .local v4, section:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    aget-object v2, v5, v4

    check-cast v2, Ljava/lang/String;

    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetTable:[Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .end local v0           #first:I
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #section:I
    :cond_2
    iget v5, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    if-eq v5, v3, :cond_0

    iput v3, p0, Lmiui/widget/AlphabetFastIndexer;->mLastAlphabetIndex:I

    invoke-virtual {p0}, Lmiui/widget/AlphabetFastIndexer;->invalidate()V

    goto :goto_0
.end method

.method public setAlphabetStyle(Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;)V
    .locals 0
    .parameter "pattern"

    .prologue
    iput-object p1, p0, Lmiui/widget/AlphabetFastIndexer;->mAlphabetPattern:Lmiui/widget/AlphabetFastIndexer$AlphabetPattern;

    return-void
.end method

.method public setOverlayOffset(II)V
    .locals 0
    .parameter "leftMargin"
    .parameter "topMargin"

    .prologue
    iput p1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayLeftMargin:I

    iput p2, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlayTopMargin:I

    return-void
.end method

.method public setVerticalPosition(Z)V
    .locals 1
    .parameter "isRight"

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lmiui/widget/AlphabetFastIndexer;->mVerticalPosition:I

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method stop(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/AlphabetFastIndexer;->setPressed(Z)V

    iput v1, p0, Lmiui/widget/AlphabetFastIndexer;->mState:I

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-gtz p1, :cond_1

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mOverlay:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
