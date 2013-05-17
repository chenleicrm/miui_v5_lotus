.class public Lmiui/widget/NumberPicker;
.super Landroid/widget/NumberPicker;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/NumberPicker$ScrollListener;,
        Lmiui/widget/NumberPicker$ValuedChangePlayer;
    }
.end annotation


# static fields
.field public static final STATE_FIRST:I = 0x0

.field public static final STATE_LAST:I = 0x1

.field public static final STATE_MIDDLE:I = 0x3

.field public static final STATE_SINGLE:I = 0x2

.field private static TEXT_COLOR_BG:I = 0x0

.field private static TEXT_COLOR_FG:I = 0x0

.field private static TEXT_COLOR_LABEL:I = 0x0

.field private static final TEXT_MIN_PADDING:I = 0x1e


# instance fields
.field private final ATTR_INDEX_LABEL:I

.field private final ATTR_INDEX_STATE_FIRST:I

.field private final ATTR_INDEX_STATE_LAST:I

.field private final ATTR_INDEX_STATE_MIDDLE:I

.field private final ATTR_INDEX_STATE_SINGLE:I

.field private final MiuiNumberPicker_Styleable:[I

.field private SELECTION_DIVIDERS_DISTANCE:I

.field private SELECTOR_WHEEL_ITEM_COUNT:I

.field private TEXT_MAX_ASCENT:F

.field private TEXT_SIZE_LABEL:I

.field private TEXT_SIZE_MAX:I

.field private TEXT_SIZE_MIN:I

.field private WIDGET_MAX_HEIGHT:I

.field private label:Ljava/lang/CharSequence;

.field private mBottomSelectionDividerBottom:I

.field private mDrawableBackground:Landroid/graphics/drawable/Drawable;

.field private mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mImagePaddingLeft:I

.field private mImagePaddingRight:I

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/EditText;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mMaxTextWidth:F

.field private mScrollListener:Lmiui/widget/NumberPicker$ScrollListener;

.field private mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

.field private mSelectorElementHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mTopSelectionDividerTop:I

.field private mValuedChangePlayer:Lmiui/widget/NumberPicker$ValuedChangePlayer;

.field private mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v1, -0x49ffd

    .line 47
    const/high16 v0, 0x7f00

    sput v0, Lmiui/widget/NumberPicker;->TEXT_COLOR_BG:I

    .line 50
    sput v1, Lmiui/widget/NumberPicker;->TEXT_COLOR_FG:I

    .line 53
    sput v1, Lmiui/widget/NumberPicker;->TEXT_COLOR_LABEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 131
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0xe

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    .line 80
    iput v1, p0, Lmiui/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 83
    const/16 v0, 0x208

    iput v0, p0, Lmiui/widget/NumberPicker;->WIDGET_MAX_HEIGHT:I

    .line 86
    const/16 v0, 0x68

    iput v0, p0, Lmiui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->MiuiNumberPicker_Styleable:[I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_LABEL:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_FIRST:I

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_LAST:I

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_MIDDLE:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_SINGLE:I

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/widget/NumberPicker;->init(Landroid/util/AttributeSet;)V

    .line 133
    return-void

    .line 117
    nop

    :array_0
    .array-data 0x4
        0x4ft 0x1t 0x1t 0x1t
        0x36t 0x0t 0x1t 0x6t
        0x37t 0x0t 0x1t 0x6t
        0x38t 0x0t 0x1t 0x6t
        0x39t 0x0t 0x1t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x5

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0xe

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    .line 80
    iput v1, p0, Lmiui/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 83
    const/16 v0, 0x208

    iput v0, p0, Lmiui/widget/NumberPicker;->WIDGET_MAX_HEIGHT:I

    .line 86
    const/16 v0, 0x68

    iput v0, p0, Lmiui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->MiuiNumberPicker_Styleable:[I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_LABEL:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_FIRST:I

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_LAST:I

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_MIDDLE:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_SINGLE:I

    .line 137
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker;->init(Landroid/util/AttributeSet;)V

    .line 138
    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x4ft 0x1t 0x1t 0x1t
        0x36t 0x0t 0x1t 0x6t
        0x37t 0x0t 0x1t 0x6t
        0x38t 0x0t 0x1t 0x6t
        0x39t 0x0t 0x1t 0x6t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x5

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/16 v0, 0xe

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    .line 38
    const/16 v0, 0x19

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    .line 80
    iput v1, p0, Lmiui/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 83
    const/16 v0, 0x208

    iput v0, p0, Lmiui/widget/NumberPicker;->WIDGET_MAX_HEIGHT:I

    .line 86
    const/16 v0, 0x68

    iput v0, p0, Lmiui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:I

    .line 117
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->MiuiNumberPicker_Styleable:[I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_LABEL:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_FIRST:I

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_LAST:I

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_MIDDLE:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lmiui/widget/NumberPicker;->ATTR_INDEX_STATE_SINGLE:I

    .line 142
    invoke-direct {p0, p2}, Lmiui/widget/NumberPicker;->init(Landroid/util/AttributeSet;)V

    .line 143
    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x4ft 0x1t 0x1t 0x1t
        0x36t 0x0t 0x1t 0x6t
        0x37t 0x0t 0x1t 0x6t
        0x38t 0x0t 0x1t 0x6t
        0x39t 0x0t 0x1t 0x6t
    .end array-data
.end method

.method static synthetic access$100(Lmiui/widget/NumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->adjustScrollWheel()V

    return-void
.end method

.method private computeMaxTextWidth([Ljava/lang/String;IIZZ)F
    .locals 11
    .parameter "displayedValues"
    .parameter "maxValue"
    .parameter "minValue"
    .parameter "fromSetMaxValue"
    .parameter "fromSetMinValue"

    .prologue
    .line 149
    const/high16 v5, -0x4080

    .line 150
    .local v5, maxTextWidth:F
    if-nez p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_0
    if-nez p5, :cond_1

    .line 154
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinValue()I

    move-result p3

    .line 156
    :cond_1
    if-nez p4, :cond_2

    .line 157
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMaxValue()I

    move-result p2

    .line 159
    :cond_2
    new-instance v7, Landroid/graphics/Paint;

    iget-object v10, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 160
    .local v7, p:Landroid/graphics/Paint;
    iget v10, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    if-nez p1, :cond_7

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, maxDigitWidth:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v10, 0x9

    if-gt v3, v10, :cond_4

    .line 164
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 165
    .local v2, digitWidth:F
    cmpl-float v10, v2, v4

    if-lez v10, :cond_3

    .line 166
    move v4, v2

    .line 163
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v2           #digitWidth:F
    :cond_4
    const/4 v6, 0x0

    .line 170
    .local v6, numberOfDigits:I
    move v1, p2

    .line 171
    .local v1, current:I
    :goto_1
    if-lez v1, :cond_5

    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 173
    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    .line 175
    :cond_5
    int-to-float v10, v6

    mul-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v5, v10

    .line 186
    .end local v1           #current:I
    .end local v4           #maxDigitWidth:F
    .end local v6           #numberOfDigits:I
    :cond_6
    return v5

    .line 177
    .end local v3           #i:I
    :cond_7
    array-length v0, p1

    .line 178
    .local v0, count:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 179
    aget-object v8, p1, v3

    .line 180
    .local v8, text:Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 181
    .local v9, w:F
    cmpl-float v10, v9, v5

    if-lez v10, :cond_8

    .line 182
    move v5, v9

    .line 178
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getAlphaGradient(FIZ)I
    .locals 3
    .parameter "posy"
    .parameter "color"
    .parameter "increasing"

    .prologue
    .line 424
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 429
    .end local p2
    :goto_0
    return p2

    .line 427
    .restart local p2
    :cond_0
    if-eqz p3, :cond_1

    neg-float v1, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 429
    .local v0, alpha:I
    :goto_1
    const v1, 0xffffff

    and-int/2addr v1, p2

    shl-int/lit8 v2, v0, 0x18

    or-int p2, v1, v2

    goto :goto_0

    .line 427
    .end local v0           #alpha:I
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    goto :goto_1
.end method

.method private getTextSize(FII)F
    .locals 2
    .parameter "posy"
    .parameter "maxSize"
    .parameter "minSize"

    .prologue
    .line 417
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 418
    int-to-float v0, p3

    .line 420
    :goto_0
    return v0

    :cond_0
    sub-int v0, p3, p2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, p2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 12
    .parameter "attrs"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 232
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 233
    .local v3, scale:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    .line 234
    iget v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    .line 235
    iget v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    .line 236
    iget v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    .line 238
    :cond_0
    const v5, 0x6070067

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lmiui/widget/NumberPicker;->TEXT_COLOR_BG:I

    .line 239
    const v5, 0x6070068

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lmiui/widget/NumberPicker;->TEXT_COLOR_FG:I

    .line 240
    const v5, 0x6070069

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lmiui/widget/NumberPicker;->TEXT_COLOR_LABEL:I

    .line 242
    const/4 v4, 0x2

    .line 243
    .local v4, widgetType:I
    new-instance v5, Lmiui/widget/NumberPicker$ValuedChangePlayer;

    invoke-direct {v5, p0}, Lmiui/widget/NumberPicker$ValuedChangePlayer;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mValuedChangePlayer:Lmiui/widget/NumberPicker$ValuedChangePlayer;

    .line 244
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mValuedChangePlayer:Lmiui/widget/NumberPicker$ValuedChangePlayer;

    invoke-virtual {p0, v5}, Lmiui/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 245
    new-instance v5, Lmiui/widget/NumberPicker$ScrollListener;

    invoke-direct {v5, p0}, Lmiui/widget/NumberPicker$ScrollListener;-><init>(Lmiui/widget/NumberPicker;)V

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mScrollListener:Lmiui/widget/NumberPicker$ScrollListener;

    .line 246
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mScrollListener:Lmiui/widget/NumberPicker$ScrollListener;

    invoke-virtual {p0, v5}, Lmiui/widget/NumberPicker;->setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V

    .line 247
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lmiui/widget/NumberPicker;->MiuiNumberPicker_Styleable:[I

    invoke-virtual {v5, p1, v6, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 249
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/NumberPicker;->label:Ljava/lang/CharSequence;

    .line 250
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    const/4 v4, 0x2

    .line 262
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x60201d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lmiui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:I

    .line 264
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x60201d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lmiui/widget/NumberPicker;->WIDGET_MAX_HEIGHT:I

    .line 266
    iget v5, p0, Lmiui/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    iget v6, p0, Lmiui/widget/NumberPicker;->WIDGET_MAX_HEIGHT:I

    iget v7, p0, Lmiui/widget/NumberPicker;->SELECTION_DIVIDERS_DISTANCE:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lmiui/widget/NumberPicker;->reInitiate(IIIZ)V

    .line 268
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getSelectorWheelPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 269
    .local v1, p:Landroid/graphics/Paint;
    iget v5, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 270
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 271
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 272
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 273
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 274
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget v6, Lmiui/widget/NumberPicker;->TEXT_COLOR_FG:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 276
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    iput v5, p0, Lmiui/widget/NumberPicker;->TEXT_MAX_ASCENT:F

    .line 277
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getVirtualButtonPressedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 278
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    .line 279
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 281
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    sget v6, Lmiui/widget/NumberPicker;->TEXT_COLOR_LABEL:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 283
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 284
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 285
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setGravity(I)V

    .line 286
    iget-object v5, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setScaleX(F)V

    .line 287
    invoke-virtual {p0, v4}, Lmiui/widget/NumberPicker;->setPositionState(I)V

    .line 288
    return-void

    .line 252
    .end local v1           #p:Landroid/graphics/Paint;
    .restart local v0       #a:Landroid/content/res/TypedArray;
    :cond_2
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 254
    :cond_3
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 255
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 256
    :cond_4
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 257
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 259
    :cond_5
    const/4 v4, 0x2

    goto/16 :goto_0
.end method

.method private resetTextPadding()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    iget v0, p0, Lmiui/widget/NumberPicker;->mMaxTextWidth:F

    .line 216
    .local v0, maxTextWidth:F
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getMinWidth()I

    move-result v1

    .line 217
    .local v1, minWidth:I
    int-to-float v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 218
    int-to-float v3, v1

    sub-float/2addr v3, v0

    const/high16 v4, 0x4000

    div-float v2, v3, v4

    .line 219
    .local v2, offset:F
    const/high16 v3, 0x41f0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 220
    const/high16 v2, 0x41f0

    .line 222
    :cond_0
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v4, p0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    iget v5, p0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 228
    .end local v2           #offset:F
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v4, p0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    add-int/lit8 v4, v4, 0x1e

    iget v5, p0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    add-int/lit8 v5, v5, 0x1e

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getPositionState()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lmiui/widget/NumberPicker;->mWidgetType:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 412
    invoke-super {p0}, Landroid/widget/NumberPicker;->onDetachedFromWindow()V

    .line 413
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mValuedChangePlayer:Lmiui/widget/NumberPicker$ValuedChangePlayer;

    invoke-virtual {v0}, Lmiui/widget/NumberPicker$ValuedChangePlayer;->release()V

    .line 414
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 338
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->hasSelectorWheel()Z

    move-result v13

    if-nez v13, :cond_1

    .line 339
    invoke-super/range {p0 .. p1}, Landroid/widget/NumberPicker;->onDraw(Landroid/graphics/Canvas;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x4000

    div-float v11, v13, v14

    .line 343
    .local v11, x:F
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getCurrentScrollOffset()I

    move-result v13

    int-to-float v12, v13

    .line 345
    .local v12, y:F
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getWidth()I

    move-result v10

    .line 346
    .local v10, w:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getHeight()I

    move-result v2

    .line 348
    .local v2, h:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    sub-int v14, v10, v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 363
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    sub-int v15, v2, v15

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    add-int v17, v17, v2

    div-int/lit8 v17, v17, 0x2

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorDrawableFg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getScrollState()I

    move-result v13

    if-nez v13, :cond_7

    .line 373
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getDecrementVirtualBUttonPressed()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v14, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getIncrementVirtualButtonPressed()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v14, Lmiui/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/NumberPicker;->mBottom:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 387
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v1, v13

    .line 388
    .local v1, centerY:F
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getSelectorIndexToStringCache()Landroid/util/SparseArray;

    move-result-object v7

    .line 389
    .local v7, selectorIndexToStringCache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/NumberPicker;->getSelectorIndices()[I

    move-result-object v8

    .line 390
    .local v8, selectorIndices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v13, v8

    if-ge v3, v13, :cond_9

    .line 391
    aget v6, v8, v3

    .line 392
    .local v6, selectorIndex:I
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 393
    .local v5, scrollSelectorValue:Ljava/lang/String;
    sub-float v13, v1, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v14, v14

    div-float v4, v13, v14

    .line 394
    .local v4, posy:F
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lmiui/widget/NumberPicker;->getTextSize(FII)F

    move-result v9

    .line 395
    .local v9, sizeFg:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget v14, Lmiui/widget/NumberPicker;->TEXT_COLOR_BG:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    int-to-float v13, v13

    sub-float v13, v9, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    const/high16 v13, 0x3f80

    cmpg-float v13, v4, v13

    if-gez v13, :cond_8

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget v14, Lmiui/widget/NumberPicker;->TEXT_COLOR_FG:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v15}, Lmiui/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    int-to-float v13, v13

    sub-float v13, v9, v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v11, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 404
    .end local v4           #posy:F
    .end local v5           #scrollSelectorValue:Ljava/lang/String;
    .end local v6           #selectorIndex:I
    .end local v9           #sizeFg:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->label:Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 405
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MAX:I

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_MIN:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v1

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->TEXT_MAX_ASCENT:F

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->TEXT_SIZE_LABEL:I

    int-to-float v14, v14

    add-float v12, v13, v14

    .line 406
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/NumberPicker;->label:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/NumberPicker;->mMaxTextWidth:F

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    add-float/2addr v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v12, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 327
    invoke-super/range {p0 .. p5}, Landroid/widget/NumberPicker;->onLayout(ZIIII)V

    .line 328
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getTopSelectionDividerTop()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 330
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getBottomSelectionDividerBottom()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 331
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getSelectorElementHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mSelectorElementHeight:I

    .line 332
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getInitialScrollOffset()I

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mInitialScrollOffset:I

    .line 334
    :cond_0
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 6
    .parameter "displayedValues"

    .prologue
    const/4 v2, 0x0

    .line 192
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lmiui/widget/NumberPicker;->computeMaxTextWidth([Ljava/lang/String;IIZZ)F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mMaxTextWidth:F

    .line 193
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->resetTextPadding()V

    .line 194
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setMaxValue(I)V
    .locals 6
    .parameter "maxValue"

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lmiui/widget/NumberPicker;->computeMaxTextWidth([Ljava/lang/String;IIZZ)F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mMaxTextWidth:F

    .line 201
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->resetTextPadding()V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 203
    return-void
.end method

.method public setMinValue(I)V
    .locals 6
    .parameter "minValue"

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lmiui/widget/NumberPicker;->computeMaxTextWidth([Ljava/lang/String;IIZZ)F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mMaxTextWidth:F

    .line 209
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->resetTextPadding()V

    .line 210
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 211
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 1
    .parameter "onScrollListener"

    .prologue
    .line 479
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mScrollListener:Lmiui/widget/NumberPicker$ScrollListener;

    if-eq p1, v0, :cond_0

    .line 480
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mScrollListener:Lmiui/widget/NumberPicker$ScrollListener;

    #setter for: Lmiui/widget/NumberPicker$ScrollListener;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ScrollListener;->access$202(Lmiui/widget/NumberPicker$ScrollListener;Landroid/widget/NumberPicker$OnScrollListener;)Landroid/widget/NumberPicker$OnScrollListener;

    .line 484
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V

    goto :goto_0
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 1
    .parameter "onValueChangedListener"

    .prologue
    .line 457
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mValuedChangePlayer:Lmiui/widget/NumberPicker$ValuedChangePlayer;

    if-eq p1, v0, :cond_0

    .line 458
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mValuedChangePlayer:Lmiui/widget/NumberPicker$ValuedChangePlayer;

    #setter for: Lmiui/widget/NumberPicker$ValuedChangePlayer;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;
    invoke-static {v0, p1}, Lmiui/widget/NumberPicker$ValuedChangePlayer;->access$002(Lmiui/widget/NumberPicker$ValuedChangePlayer;Landroid/widget/NumberPicker$OnValueChangeListener;)Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    goto :goto_0
.end method

.method public setPositionState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const v5, 0x60201d8

    const v4, 0x60201d7

    const v3, 0x60201d6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 295
    iput p1, p0, Lmiui/widget/NumberPicker;->mWidgetType:I

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 314
    iput-object v1, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 315
    iput-object v1, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 318
    :goto_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    iput v0, p0, Lmiui/widget/NumberPicker;->mImagePaddingLeft:I

    .line 319
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    move v0, v2

    :goto_2
    iput v0, p0, Lmiui/widget/NumberPicker;->mImagePaddingRight:I

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 320
    invoke-direct/range {v0 .. v5}, Lmiui/widget/NumberPicker;->computeMaxTextWidth([Ljava/lang/String;IIZZ)F

    move-result v0

    iput v0, p0, Lmiui/widget/NumberPicker;->mMaxTextWidth:F

    .line 321
    invoke-direct {p0}, Lmiui/widget/NumberPicker;->resetTextPadding()V

    .line 322
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->remeasureMaxWidth()V

    .line 323
    return-void

    .line 298
    :pswitch_0
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 299
    iput-object v1, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 303
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 306
    :pswitch_2
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 307
    iput-object v1, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 311
    invoke-virtual {p0}, Lmiui/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1

    .line 319
    :cond_1
    iget-object v0, p0, Lmiui/widget/NumberPicker;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_2

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
