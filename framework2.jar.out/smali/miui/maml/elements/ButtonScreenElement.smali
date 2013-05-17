.class public Lmiui/maml/elements/ButtonScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ButtonScreenElement$ButtonAction;,
        Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lmiui/maml/elements/ElementGroup;

.field private mPressed:Z

.field private mPressedElements:Lmiui/maml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mTouching:Z

.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 65
    if-eqz p1, :cond_0

    .line 66
    const-string v0, "listener"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 68
    :cond_0
    return-void
.end method

.method private getCur()Lmiui/maml/elements/ElementGroup;
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v0}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 181
    return-void
.end method

.method private performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 184
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 185
    .local v1, tri:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->getAction()Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 186
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_0

    .line 188
    .end local v1           #tri:Lmiui/maml/CommandTrigger;
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, p0, p1}, Lmiui/maml/ScreenElementRoot;->onButtonInteractive(Lmiui/maml/elements/ButtonScreenElement;Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 189
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 253
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->getCur()Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    .line 254
    .local v0, cur:Lmiui/maml/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lmiui/maml/elements/ElementGroup;->render(Landroid/graphics/Canvas;)V

    .line 256
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 270
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 272
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 274
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 275
    .local v1, tri:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->finish()V

    goto :goto_0

    .line 277
    .end local v1           #tri:Lmiui/maml/CommandTrigger;
    :cond_2
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    .line 202
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 203
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 205
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v4, :cond_1

    .line 206
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 207
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/CommandTrigger;

    .line 208
    .local v3, tri:Lmiui/maml/CommandTrigger;
    invoke-virtual {v3}, Lmiui/maml/CommandTrigger;->init()V

    goto :goto_0

    .line 211
    .end local v3           #tri:Lmiui/maml/CommandTrigger;
    :cond_2
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-nez v4, :cond_3

    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 212
    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v5, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    .line 214
    .local v2, se:Lmiui/maml/elements/ScreenElement;
    :try_start_0
    check-cast v2, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .end local v2           #se:Lmiui/maml/elements/ScreenElement;
    iput-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_3
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "ButtonScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button listener designated by the name is not actually a listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 8
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v6, "ButtonScreenElement"

    const-string v7, "node is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v6, Lmiui/maml/ScreenElementLoadException;

    const-string v7, "node is null"

    invoke-direct {v6, v7}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    :cond_0
    const-string v6, "Normal"

    invoke-static {p1, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 80
    .local v3, normal:Lorg/w3c/dom/Element;
    if-eqz v3, :cond_1

    .line 81
    new-instance v6, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v6, v3, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    .line 84
    :cond_1
    const-string v6, "Pressed"

    invoke-static {p1, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 85
    .local v4, pressed:Lorg/w3c/dom/Element;
    if-eqz v4, :cond_2

    .line 86
    new-instance v6, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v6, v4, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    .line 90
    :cond_2
    const-string v6, "Triggers"

    invoke-static {p1, v6}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 91
    .local v5, triggers:Lorg/w3c/dom/Element;
    if-eqz v5, :cond_5

    .line 92
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 93
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 94
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 95
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 96
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Trigger"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 93
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .restart local v2       #item:Lorg/w3c/dom/Element;
    :cond_4
    iget-object v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    new-instance v7, Lmiui/maml/CommandTrigger;

    invoke-direct {v7, v2, p2}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 103
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v1           #i:I
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 107
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->isVisible()Z

    move-result v11

    if-nez v11, :cond_1

    move v6, v10

    .line 176
    :cond_0
    :goto_0
    return v6

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 111
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 112
    .local v9, y:F
    const/4 v6, 0x0

    .line 113
    .local v6, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    iput-boolean v12, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    .line 117
    iput-boolean v12, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 118
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_2

    .line 119
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 121
    :cond_2
    sget-object v10, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    sub-long v4, v10, v12

    .line 124
    .local v4, duration:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gtz v10, :cond_4

    .line 125
    iget v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    sub-float v0, v8, v10

    .line 126
    .local v0, deltaX:F
    iget v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    sub-float v1, v9, v10

    .line 127
    .local v1, deltaY:F
    mul-float v10, v0, v0

    mul-float v11, v1, v1

    add-float v2, v10, v11

    .line 128
    .local v2, distanceSquared:F
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v10

    iget-object v10, v10, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 129
    .local v3, doubleTapSlop:I
    mul-int v7, v3, v3

    .line 130
    .local v7, slopSquared:I
    int-to-float v10, v7

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4

    .line 131
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v10, :cond_3

    .line 132
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v10, v11}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 134
    :cond_3
    sget-object v10, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v10}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 137
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #distanceSquared:F
    .end local v3           #doubleTapSlop:I
    .end local v7           #slopSquared:I
    :cond_4
    iput v8, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 138
    iput v9, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 139
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v10, :cond_5

    .line 140
    iget-object v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v10}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 141
    :cond_5
    const/4 v6, 0x1

    .line 142
    goto :goto_0

    .line 145
    .end local v4           #duration:J
    :pswitch_1
    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v10

    iput-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 146
    iget-boolean v6, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 147
    goto/16 :goto_0

    .line 149
    :pswitch_2
    iget-boolean v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    if-eqz v11, :cond_0

    .line 150
    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ButtonScreenElement;->touched(FF)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 151
    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    if-eqz v11, :cond_6

    .line 152
    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    iget-object v12, p0, Lmiui/maml/elements/ButtonScreenElement;->mName:Ljava/lang/String;

    invoke-interface {v11, v12}, Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 154
    :cond_6
    sget-object v11, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    invoke-direct {p0, v11}, Lmiui/maml/elements/ButtonScreenElement;->performAction(Lmiui/maml/elements/ButtonScreenElement$ButtonAction;)V

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 159
    :goto_1
    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v11, :cond_7

    .line 160
    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v11}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 161
    :cond_7
    iput-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    .line 162
    iput-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 163
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 157
    :cond_8
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->onCancel()V

    goto :goto_1

    .line 168
    :pswitch_3
    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v11, :cond_9

    .line 169
    iget-object v11, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v11}, Lmiui/maml/elements/ElementGroup;->reset()V

    .line 170
    :cond_9
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->onCancel()V

    .line 171
    iput-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mTouching:Z

    .line 172
    iput-boolean v10, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 231
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 233
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 235
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 236
    .local v1, tri:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->pause()V

    goto :goto_0

    .line 238
    .end local v1           #tri:Lmiui/maml/CommandTrigger;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressed:Z

    .line 239
    return-void
.end method

.method public reset(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 224
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 226
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->reset(J)V

    .line 228
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 244
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v2}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 246
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ButtonScreenElement;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/CommandTrigger;

    .line 247
    .local v1, tri:Lmiui/maml/CommandTrigger;
    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->resume()V

    goto :goto_0

    .line 249
    .end local v1           #tri:Lmiui/maml/CommandTrigger;
    :cond_2
    return-void
.end method

.method public setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 71
    iput-object p1, p0, Lmiui/maml/elements/ButtonScreenElement;->mListener:Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 72
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "category"
    .parameter "show"

    .prologue
    .line 281
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mNormalElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 283
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lmiui/maml/elements/ButtonScreenElement;->mPressedElements:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->showCategory(Ljava/lang/String;Z)V

    .line 285
    :cond_1
    return-void
.end method

.method public tick(J)V
    .locals 2
    .parameter "currentTime"

    .prologue
    .line 260
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->tick(J)V

    .line 261
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/ButtonScreenElement;->getCur()Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    .line 264
    .local v0, cur:Lmiui/maml/elements/ElementGroup;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/ElementGroup;->tick(J)V

    goto :goto_0
.end method

.method public touched(FF)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v5, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v5}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v0

    .line 193
    .local v0, parentX:F
    :goto_0
    iget-object v5, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lmiui/maml/elements/ButtonScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v4}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v1

    .line 194
    .local v1, parentY:F
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getX()F

    move-result v2

    .line 195
    .local v2, x0:F
    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getY()F

    move-result v3

    .line 196
    .local v3, y0:F
    add-float v4, v0, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    add-float v4, v0, v2

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_2

    add-float v4, v1, v3

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_2

    add-float v4, v1, v3

    invoke-virtual {p0}, Lmiui/maml/elements/ButtonScreenElement;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .end local v0           #parentX:F
    .end local v1           #parentY:F
    .end local v2           #x0:F
    .end local v3           #y0:F
    :cond_0
    move v0, v4

    .line 192
    goto :goto_0

    .restart local v0       #parentX:F
    :cond_1
    move v1, v4

    .line 193
    goto :goto_1

    .line 196
    .restart local v1       #parentY:F
    .restart local v2       #x0:F
    .restart local v3       #y0:F
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
