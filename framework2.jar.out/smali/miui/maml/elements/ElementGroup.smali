.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field private mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 27
    const-string v0, "clip"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 28
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .parameter "newElement"

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 50
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 112
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v4

    .line 98
    .local v4, w:F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v1

    .line 99
    .local v1, h:F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getX()F

    move-result v7

    invoke-virtual {p0, v7, v4}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v5

    .line 100
    .local v5, x:F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getY()F

    move-result v7

    invoke-virtual {p0, v7, v1}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v6

    .line 101
    .local v6, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 102
    .local v3, rs:I
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    cmpl-float v7, v4, v8

    if-lez v7, :cond_1

    cmpl-float v7, v1, v8

    if-lez v7, :cond_1

    iget-boolean v7, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v7, :cond_1

    .line 104
    invoke-virtual {p1, v8, v8, v4, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 107
    :cond_1
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 109
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v7, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .parameter "name"

    .prologue
    .line 168
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 169
    .local v1, ele:Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 179
    :goto_0
    return-object v3

    .line 172
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 173
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 174
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 176
    goto :goto_0

    .line 173
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 144
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 148
    :try_start_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LockScreen_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 154
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 58
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 32
    if-nez p1, :cond_0

    .line 33
    const-string v5, "LockScreen_ElementGroup"

    const-string v6, "node is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v5, Lmiui/maml/ScreenElementLoadException;

    const-string v6, "node is null"

    invoke-direct {v5, v6}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v2, v5, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    .line 37
    .local v2, factory:Lmiui/maml/elements/ScreenElementFactory;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 38
    .local v1, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 39
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 40
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 41
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 42
    .local v4, item:Lorg/w3c/dom/Element;
    invoke-virtual {v2, v4, p2}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 39
    .end local v4           #item:Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 128
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 129
    const/4 v2, 0x0

    .line 137
    :cond_0
    return v2

    .line 131
    :cond_1
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 132
    .local v2, ret:Z
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 133
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 134
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    const/4 v2, 0x1

    .line 133
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 188
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 189
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 191
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 77
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 78
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public reset(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 68
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 86
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "category"
    .parameter "show"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 160
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 161
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 162
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->tick(J)V

    .line 117
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 122
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
