.class Landroid/graphics/drawable/ColorizableDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorizableDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/ColorizableDrawable$1;,
        Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;
    }
.end annotation


# instance fields
.field private mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/ColorizableDrawable;-><init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/content/res/Resources;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 235
    new-instance v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;-><init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/graphics/drawable/ColorizableDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorizableDrawable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/ColorizableDrawable;-><init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 150
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget v1, v1, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v1, v1, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorizableDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mChangingConfigurations:I

    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "padding"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v4, Lcom/android/internal/R$styleable;->ColorizableDrawable:[I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 40
    .local v2, ta:Landroid/content/res/TypedArray;
    iget-object v4, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    #setter for: Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColorExists:Z
    invoke-static {v4, v5}, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->access$002(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Z)Z

    .line 43
    iget-object v4, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    #setter for: Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColor:I
    invoke-static {v4, v5}, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->access$102(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;I)I

    .line 46
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 48
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 52
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    if-eq v3, v6, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 53
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 56
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_2
    if-nez v0, :cond_3

    .line 60
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No drawable specified for <colorizable>"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_3
    iget-object v4, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iput-object v0, v4, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    iget-object v4, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->applyColorFilter()V

    .line 66
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorizableDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 72
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 145
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 139
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorizableDrawable;->invalidateSelf()V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorizableDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 79
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 82
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 113
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 119
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable;->mColorizableState:Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;

    iget-object v0, v0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 108
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/graphics/drawable/ColorizableDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 86
    .local v0, callback:Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    return-void
.end method
