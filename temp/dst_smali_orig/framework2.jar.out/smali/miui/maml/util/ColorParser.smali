.class public Lmiui/maml/util/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ColorParser$1;,
        Lmiui/maml/util/ColorParser$ExpressionType;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLOR:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ColorParser"


# instance fields
.field private mColor:I

.field private mColorExpression:Ljava/lang/String;

.field private mIndexedColorVar:Lmiui/maml/util/IndexedStringVariable;

.field private mRGBExpression:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/util/ColorParser$ExpressionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "expression"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    :try_start_0
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/maml/util/ColorParser;->mColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x1

    iput v1, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, "argb("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const/4 v2, 0x5

    iget-object v3, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->buildMultiple(Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    array-length v1, v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "ColorParser"

    const-string v2, "bad expression format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad expression format."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    goto :goto_0
.end method

.method public static fromElement(Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;
    .locals 2
    .parameter "e"

    .prologue
    new-instance v0, Lmiui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/util/ColorParser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColor(Lmiui/maml/data/Variables;)I
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    sget-object v4, Lmiui/maml/util/ColorParser$1;->$SwitchMap$miui$maml$util$ColorParser$ExpressionType:[I

    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v5}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v4, p0, Lmiui/maml/util/ColorParser;->mColor:I

    return v4

    :pswitch_1
    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/util/IndexedStringVariable;

    if-nez v4, :cond_0

    new-instance v4, Lmiui/maml/util/IndexedStringVariable;

    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v4, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/util/IndexedStringVariable;

    :cond_0
    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v4}, Lmiui/maml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    :goto_1
    iput v4, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v0, v4

    .local v0, a:I
    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v3, v4

    .local v3, r:I
    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v2, v4

    .local v2, g:I
    iget-object v4, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v4

    double-to-int v1, v4

    .local v1, b:I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
