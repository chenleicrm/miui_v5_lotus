.class public abstract Lmiui/maml/elements/AnimatedScreenElement;
.super Lmiui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# instance fields
.field private mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

.field protected mAni:Lmiui/maml/animation/AnimatedElement;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPivotZ:Lmiui/maml/data/Expression;

.field private mRotationX:Lmiui/maml/data/Expression;

.field private mRotationY:Lmiui/maml/data/Expression;

.field private mRotationZ:Lmiui/maml/data/Expression;

.field private mScaleExpression:Lmiui/maml/data/Expression;

.field private mScaleXExpression:Lmiui/maml/data/Expression;

.field private mScaleYExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Lmiui/maml/animation/AnimatedElement;

    invoke-direct {v0, p1, p2}, Lmiui/maml/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    .line 47
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_x"

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 49
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mName:Ljava/lang/String;

    const-string v2, "actual_y"

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 52
    :cond_0
    const-string v0, "scale"

    invoke-direct {p0, p1, v0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    .line 53
    const-string v0, "scaleX"

    invoke-direct {p0, p1, v0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    .line 54
    const-string v0, "scaleY"

    invoke-direct {p0, p1, v0, v4}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    .line 56
    const-string v0, "angleX"

    const-string v1, "rotationX"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    .line 57
    const-string v0, "angleY"

    const-string v1, "rotationY"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    .line 58
    const-string v0, "angleZ"

    const-string v1, "rotationZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    .line 59
    const-string v0, "centerZ"

    const-string v1, "pivotZ"

    invoke-direct {p0, p1, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    .line 60
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_2

    .line 61
    :cond_1
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 63
    :cond_2
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .locals 2
    .parameter "node"
    .parameter "name"
    .parameter "compatibleName"

    .prologue
    .line 66
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 67
    .local v0, exp:Lmiui/maml/data/Expression;
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAlpha()I
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getAlpha()I

    move-result v0

    .line 216
    .local v0, a:I
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v1, :cond_0

    .end local v0           #a:I
    :goto_0
    return v0

    .restart local v0       #a:I
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v1}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method protected getLeft()F
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft(FF)F

    move-result v0

    return v0
.end method

.method public getMaxHeight()F
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotX()F
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getPivotX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getPivotY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getRotationAngle()F

    move-result v0

    return v0
.end method

.method protected getTop()F
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->getTop(FF)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/AnimatedScreenElement;->scale(D)F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 153
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0}, Lmiui/maml/animation/AnimatedElement;->init()V

    .line 154
    return-void
.end method

.method protected isVisibleInner()Z
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "c"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v13, 0x0

    .line 75
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 76
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->isVisible()Z

    move-result v10

    if-nez v10, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 80
    const/4 v7, 0x0

    .line 81
    .local v7, set:Z
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result v10

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotX()F

    move-result v11

    add-float v0, v10, v11

    .line 82
    .local v0, pivotX:F
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v10

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getPivotY()F

    move-result v11

    add-float v1, v10, v11

    .line 84
    .local v1, pivotY:F
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    if-eqz v10, :cond_6

    .line 85
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->save()V

    .line 86
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_2

    .line 87
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationX:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateX(F)V

    .line 88
    const/4 v7, 0x1

    .line 90
    :cond_2
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3

    .line 91
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationY:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateY(F)V

    .line 92
    const/4 v7, 0x1

    .line 94
    :cond_3
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_4

    .line 95
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/maml/elements/AnimatedScreenElement;->mRotationZ:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 96
    const/4 v7, 0x1

    .line 98
    :cond_4
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_5

    .line 99
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/maml/elements/AnimatedScreenElement;->mPivotZ:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v12

    invoke-virtual {v11, v12}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v10, v13, v13, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 101
    :cond_5
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v11, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 102
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v11, v0

    neg-float v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 103
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v10}, Landroid/graphics/Camera;->restore()V

    .line 106
    :cond_6
    const/4 v3, 0x0

    .line 107
    .local v3, sc:I
    if-eqz v7, :cond_7

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 109
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 113
    :cond_7
    const/4 v8, 0x0

    .line 114
    .local v8, set1:Z
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getRotation()F

    move-result v2

    .line 115
    .local v2, rotation:F
    cmpl-float v10, v2, v13

    if-eqz v10, :cond_8

    .line 116
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v2, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 117
    const/4 v8, 0x1

    .line 119
    :cond_8
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_d

    .line 120
    iget-object v9, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v9

    double-to-float v4, v9

    .line 121
    .local v4, scale:F
    iget-object v9, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v4, v4, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 122
    const/4 v8, 0x1

    .line 130
    .end local v4           #scale:F
    :cond_9
    :goto_1
    if-eqz v8, :cond_b

    .line 131
    if-nez v7, :cond_a

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 134
    :cond_a
    iget-object v9, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 136
    :cond_b
    invoke-virtual {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 137
    if-nez v7, :cond_c

    if-eqz v8, :cond_0

    .line 138
    :cond_c
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 123
    :cond_d
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-nez v10, :cond_e

    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_9

    .line 124
    :cond_e
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    if-nez v10, :cond_f

    move v5, v9

    .line 125
    .local v5, scaleX:F
    :goto_2
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    if-nez v10, :cond_10

    move v6, v9

    .line 126
    .local v6, scaleY:F
    :goto_3
    iget-object v9, p0, Lmiui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v6, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 127
    const/4 v8, 0x1

    goto :goto_1

    .line 124
    .end local v5           #scaleX:F
    .end local v6           #scaleY:F
    :cond_f
    iget-object v10, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleXExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v10

    double-to-float v5, v10

    goto :goto_2

    .line 125
    .restart local v5       #scaleX:F
    :cond_10
    iget-object v9, p0, Lmiui/maml/elements/AnimatedScreenElement;->mScaleYExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v9

    double-to-float v6, v9

    goto :goto_3
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 159
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/AnimatedElement;->reset(J)V

    .line 160
    invoke-virtual {p0}, Lmiui/maml/elements/AnimatedScreenElement;->updateVisibility()V

    .line 161
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 166
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/animation/AnimatedElement;->tick(J)V

    .line 167
    iget-boolean v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualXVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 169
    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement;->mActualYVar:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement;->mAni:Lmiui/maml/animation/AnimatedElement;

    invoke-virtual {v1}, Lmiui/maml/animation/AnimatedElement;->getY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 171
    :cond_0
    return-void
.end method
