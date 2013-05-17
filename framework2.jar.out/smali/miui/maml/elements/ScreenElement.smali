.class public abstract Lmiui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElement$1;,
        Lmiui/maml/elements/ScreenElement$Align;,
        Lmiui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mAlign:Lmiui/maml/elements/ScreenElement$Align;

.field protected mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

.field protected mCategory:Ljava/lang/String;

.field private mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Lmiui/maml/elements/ElementGroup;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mShow:Z

.field private mVisibilityExpression:Lmiui/maml/data/Expression;

.field private mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    .line 47
    iput-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 60
    iput-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 77
    iput-object p2, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 78
    if-eqz p1, :cond_2

    .line 79
    const-string v2, "category"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 80
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 81
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    .line 82
    const-string v2, "visibility"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, vis:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    iput-boolean v4, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    .line 92
    :cond_0
    :goto_1
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 93
    const-string v2, "align"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, align:Ljava/lang/String;
    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 102
    :cond_1
    :goto_2
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 103
    const-string v2, "alignV"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    const-string v2, "bottom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 105
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 112
    .end local v0           #align:Ljava/lang/String;
    .end local v1           #vis:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 81
    goto :goto_0

    .line 86
    .restart local v1       #vis:Ljava/lang/String;
    :cond_4
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    iput-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_1

    .line 89
    :cond_5
    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    goto :goto_1

    .line 96
    .restart local v0       #align:Ljava/lang/String;
    :cond_6
    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_2

    .line 98
    :cond_7
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    sget-object v2, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_2

    .line 106
    :cond_8
    const-string v2, "top"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_3

    .line 108
    :cond_9
    const-string v2, "center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    sget-object v2, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_3
.end method

.method private setVisibilityVar(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 162
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "visibility"

    iget-object v3, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 166
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 168
    :cond_1
    return-void

    .line 166
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected descale(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float v0, p1, v0

    return v0
.end method

.method public abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method protected evaluate(Lmiui/maml/data/Expression;)D
    .locals 2
    .parameter "exp"

    .prologue
    .line 308
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    goto :goto_0
.end method

.method protected evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;
    .locals 1
    .parameter "exp"

    .prologue
    .line 304
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiui/maml/data/Expression;->evaluateStr(Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .parameter "name"

    .prologue
    .line 129
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected getFramerate()F
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0}, Lmiui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    goto :goto_0
.end method

.method protected getLeft(FF)F
    .locals 3
    .parameter "pos"
    .parameter "width"

    .prologue
    .line 250
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 261
    .end local p1
    :goto_0
    return p1

    .line 252
    .restart local p1
    :cond_0
    move v0, p1

    .line 253
    .local v0, x:F
    sget-object v1, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 261
    goto :goto_0

    .line 255
    :pswitch_0
    const/high16 v1, 0x4000

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 256
    goto :goto_1

    .line 258
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getNotifierManager()Lmiui/maml/NotifierManager;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method protected getTop(FF)F
    .locals 3
    .parameter "pos"
    .parameter "height"

    .prologue
    .line 235
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 246
    .end local p1
    :goto_0
    return p1

    .line 237
    .restart local p1
    :cond_0
    move v0, p1

    .line 238
    .local v0, y:F
    sget-object v1, Lmiui/maml/elements/ScreenElement$1;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 246
    goto :goto_0

    .line 240
    :pswitch_0
    const/high16 v1, 0x4000

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 241
    goto :goto_1

    .line 243
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 142
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 143
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 146
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .locals 4

    .prologue
    .line 195
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v0, v1}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 159
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 201
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 202
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected requestFramerate(F)V
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 290
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_2

    .line 295
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenContext;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 299
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->requestUpdate()V

    .line 266
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 183
    .local v0, elapsedRealtime:J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 185
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 186
    return-void
.end method

.method public reset(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 189
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 175
    return-void
.end method

.method protected scale(D)F
    .locals 2
    .parameter "v"

    .prologue
    .line 278
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method protected setActualHeight(D)V
    .locals 4
    .parameter "value"

    .prologue
    .line 224
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_h"

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 230
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method protected setActualWidth(D)V
    .locals 4
    .parameter "value"

    .prologue
    .line 214
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_w"

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 220
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    goto :goto_0
.end method

.method public setParent(Lmiui/maml/elements/ElementGroup;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 137
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    .line 138
    return-void
.end method

.method public show(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 115
    iput-boolean p1, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 116
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 117
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0, p2}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    .line 192
    return-void
.end method

.method protected updateVisibility()V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    .line 151
    .local v0, v:Z
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 152
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 153
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 155
    :cond_0
    return-void
.end method
