.class public Lmiui/maml/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

.field private mActionString:Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Lmiui/maml/data/Expression;

.field private mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 41
    invoke-direct {p0, p1, p2}, Lmiui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 42
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;
    .locals 3
    .parameter "ele"
    .parameter "root"

    .prologue
    const/4 v1, 0x0

    .line 58
    if-nez p0, :cond_0

    .line 61
    :goto_0
    return-object v1

    .line 58
    :cond_0
    :try_start_0
    new-instance v2, Lmiui/maml/CommandTrigger;

    invoke-direct {v2, p0, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;
    .locals 1
    .parameter "parent"
    .parameter "root"

    .prologue
    .line 53
    const-string v0, "Trigger"

    invoke-static {p0, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Lmiui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 10
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 67
    if-eqz p1, :cond_8

    .line 68
    iput-object p2, p0, Lmiui/maml/CommandTrigger;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 70
    const-string v8, "target"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, target:Ljava/lang/String;
    const-string v8, "property"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, property:Ljava/lang/String;
    const-string v8, "value"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8, v7}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    .line 78
    :cond_0
    const-string v8, "action"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    iput-object v0, p0, Lmiui/maml/CommandTrigger;->mActionString:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 81
    const-string v8, "down"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 82
    sget-object v8, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Down:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    .line 96
    :cond_1
    :goto_0
    const-string v8, "condition"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    .line 99
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 100
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 101
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 102
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 103
    .local v4, item:Lorg/w3c/dom/Element;
    invoke-static {v4, p2}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/ActionCommand;

    move-result-object v2

    .line 104
    .local v2, command:Lmiui/maml/ActionCommand;
    if-eqz v2, :cond_2

    .line 105
    iget-object v8, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v2           #command:Lmiui/maml/ActionCommand;
    .end local v4           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #i:I
    :cond_3
    const-string v8, "up"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 84
    sget-object v8, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Up:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 85
    :cond_4
    const-string v8, "double"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 86
    sget-object v8, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Double:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 87
    :cond_5
    const-string v8, "long"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 88
    sget-object v8, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Long:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 89
    :cond_6
    const-string v8, "cancel"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 90
    sget-object v8, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Cancel:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 92
    :cond_7
    sget-object v8, Lmiui/maml/elements/ButtonScreenElement$ButtonAction;->Other:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    iput-object v8, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 110
    .end local v0           #action:Ljava/lang/String;
    .end local v5           #property:Ljava/lang/String;
    .end local v6           #target:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 134
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 135
    .local v0, cmd:Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    goto :goto_0

    .line 137
    .end local v0           #cmd:Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public getAction()Lmiui/maml/elements/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmiui/maml/CommandTrigger;->mAction:Lmiui/maml/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmiui/maml/CommandTrigger;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 128
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 129
    .local v0, cmd:Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    goto :goto_0

    .line 131
    .end local v0           #cmd:Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 140
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 141
    .local v0, cmd:Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    goto :goto_0

    .line 143
    .end local v0           #cmd:Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method

.method public perform()V
    .locals 6

    .prologue
    .line 114
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCondition:Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/CommandTrigger;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 125
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mPropertyCommand:Lmiui/maml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$PropertyCommand;->perform()V

    .line 122
    :cond_2
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 123
    .local v0, cmd:Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 146
    iget-object v2, p0, Lmiui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ActionCommand;

    .line 147
    .local v0, cmd:Lmiui/maml/ActionCommand;
    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    goto :goto_0

    .line 149
    .end local v0           #cmd:Lmiui/maml/ActionCommand;
    :cond_0
    return-void
.end method
