.class public Lmiui/maml/elements/TextScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/TextScreenElement$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x1e

.field private static final PADDING:I = 0x32

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mFormatter:Lmiui/maml/util/TextFormatter;

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreText:Ljava/lang/String;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShouldMarquee:Z

.field private mSizeExpression:Lmiui/maml/data/Expression;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextSize:F

.field private mTextWidth:F

.field private mTextWidthVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 4
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 42
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 47
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 79
    invoke-virtual {p0, p1}, Lmiui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 80
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    const-string v2, "text_width"

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 82
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    const-string v2, "text_height"

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 84
    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    .prologue
    .line 236
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 237
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v1, Lmiui/maml/elements/TextScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_0
    return-object v0

    .line 239
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 240
    goto :goto_0

    .line 242
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 243
    goto :goto_0

    .line 245
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateTextSize()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    .line 231
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 233
    :cond_0
    return-void
.end method

.method private updateTextWidth()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/TextScreenElement;->updateTextSize()V

    .line 222
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 223
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    invoke-virtual {p0, v1}, Lmiui/maml/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "c"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlpha()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v16

    .line 116
    .local v16, width:F
    const/4 v2, 0x0

    cmpg-float v2, v16, v2

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v2, v16, v2

    if-lez v2, :cond_2

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move/from16 v16, v0

    .line 120
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getHeight()F

    move-result v10

    .line 121
    .local v10, height:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v13

    .line 122
    .local v13, lineHeight:F
    const/4 v2, 0x0

    cmpg-float v2, v10, v2

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v2, :cond_3

    .line 123
    move v10, v13

    .line 125
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getX()F

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lmiui/maml/elements/TextScreenElement;->getLeft(FF)F

    move-result v17

    .line 126
    .local v17, x:F
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getY()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lmiui/maml/elements/TextScreenElement;->getTop(FF)F

    move-result v18

    .line 128
    .local v18, y:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-lez v2, :cond_4

    .line 131
    const/high16 v2, 0x4120

    sub-float v2, v18, v2

    add-float v3, v17, v16

    add-float v6, v18, v10

    const/high16 v7, 0x41a0

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 134
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    .line 137
    .local v9, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v9, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v4

    .line 139
    .local v4, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    .line 140
    .local v5, end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v15

    .line 141
    .local v15, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v12

    .line 142
    .local v12, left:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v6, v17, v12

    add-float v2, v18, v13

    int-to-float v7, v15

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 126
    .end local v4           #start:I
    .end local v5           #end:I
    .end local v9           #count:I
    .end local v11           #i:I
    .end local v12           #left:F
    .end local v15           #top:I
    .end local v18           #y:F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getY()F

    move-result v18

    goto :goto_1

    .line 145
    .restart local v18       #y:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const v6, 0x7f7fffff

    cmpl-float v2, v2, v6

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_3
    add-float v2, v2, v17

    add-float v6, v18, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    add-float v14, v2, v3

    .line 147
    .local v14, nextPos:F
    cmpg-float v2, v14, v16

    if-gez v2, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v3, v17, v14

    add-float v6, v18, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    .end local v14           #nextPos:F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 145
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_3
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 167
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 168
    return-void
.end method

.method protected getColor()I
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/ColorParser;->getColor(Lmiui/maml/data/Variables;)I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/TextFormatter;->getFormat(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/util/TextFormatter;->getText(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 158
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 159
    const v0, 0x7f7fffff

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 160
    invoke-direct {p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 161
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v1, "TextScreenElement"

    const-string v2, "node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Lmiui/maml/ScreenElementLoadException;

    const-string v2, "node is null"

    invoke-direct {v1, v2}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    invoke-static {p1}, Lmiui/maml/util/TextFormatter;->fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/TextFormatter;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    .line 93
    invoke-static {p1}, Lmiui/maml/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    .line 94
    const-string v1, "size"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mSizeExpression:Lmiui/maml/data/Expression;

    .line 95
    const-string v1, "marqueeSpeed"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 96
    const-string v1, "bold"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, bold:Z
    const-string v1, "spacingMult"

    const/high16 v2, 0x3f80

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 98
    const-string v1, "spacingAdd"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 99
    const-string v1, "marqueeGap"

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 100
    const-string v1, "multiLine"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 101
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 102
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x4190

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 103
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 104
    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 105
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 254
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x41f0

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    .line 255
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 262
    iput-object p1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public tick(J)V
    .locals 10
    .parameter "currentTime"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const v1, 0x7f7fffff

    const/4 v9, 0x0

    .line 172
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->tick(J)V

    .line 173
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 177
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iput-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 185
    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v8

    .line 186
    .local v8, width:F
    cmpl-float v0, v8, v9

    if-lez v0, :cond_7

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_7

    .line 187
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPreText:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPreText:Ljava/lang/String;

    .line 190
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    float-to-int v3, v8

    invoke-direct {p0}, Lmiui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    iget v5, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    iget v6, p0, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 192
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lmiui/maml/elements/TextScreenElement;->descale(F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 213
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x41f0

    :goto_2
    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    goto :goto_0

    .line 196
    :cond_4
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v0, :cond_3

    .line 197
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 199
    const/high16 v0, 0x4248

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 206
    :cond_5
    :goto_3
    iput-wide p1, p0, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 207
    iput-boolean v7, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    goto :goto_1

    .line 201
    :cond_6
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v1, v1

    iget-wide v3, p0, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v3, p1, v3

    mul-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 202
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 203
    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    iget v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget v3, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_3

    .line 210
    :cond_7
    iput-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 211
    iput v1, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_1

    :cond_8
    move v0, v9

    .line 213
    goto :goto_2
.end method
