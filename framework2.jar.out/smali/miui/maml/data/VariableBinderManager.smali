.class public Lmiui/maml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/data/VariableBinder;",
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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 33
    iput-object p2, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 36
    :cond_0
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/VariableBinderManager;)Lmiui/maml/data/VariableBinder;
    .locals 3
    .parameter "ele"
    .parameter "root"
    .parameter "m"

    .prologue
    .line 81
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, tag:Ljava/lang/String;
    :try_start_0
    const-string v2, "ContentProviderBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v2, Lmiui/maml/data/ContentProviderBinder;

    invoke-direct {v2, p0, p1, p2}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 94
    :goto_0
    return-object v2

    .line 85
    :cond_0
    const-string v2, "WebServiceBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    new-instance v2, Lmiui/maml/data/WebServiceBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/WebServiceBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Lmiui/maml/ScreenElementLoadException;
    invoke-virtual {v0}, Lmiui/maml/ScreenElementLoadException;->printStackTrace()V

    .line 94
    .end local v0           #e:Lmiui/maml/ScreenElementLoadException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 87
    :cond_2
    :try_start_1
    const-string v2, "SensorBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    new-instance v2, Lmiui/maml/data/SensorBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 89
    :cond_3
    const-string v2, "BroadcastBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    new-instance v2, Lmiui/maml/data/BroadcastBinder;

    invoke-direct {v2, p0, p1}, Lmiui/maml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    :try_end_1
    .catch Lmiui/maml/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, "VariableBinderManager"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 77
    return-void
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .parameter "node"
    .parameter "root"

    .prologue
    .line 98
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 99
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 100
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 101
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 102
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-static {v2, p2, p0}, Lmiui/maml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/VariableBinderManager;)Lmiui/maml/data/VariableBinder;

    move-result-object v3

    .line 103
    .local v3, vb:Lmiui/maml/data/VariableBinder;
    if-eqz v3, :cond_0

    .line 104
    iget-object v4, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2           #item:Lorg/w3c/dom/Element;
    .end local v3           #vb:Lmiui/maml/data/VariableBinder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uri"

    .prologue
    .line 111
    new-instance v0, Lmiui/maml/util/TextFormatter;

    invoke-direct {v0, p1}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uriFormat"
    .parameter "uriParas"

    .prologue
    .line 115
    new-instance v0, Lmiui/maml/util/TextFormatter;

    invoke-direct {v0, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinderManager;->addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Lmiui/maml/util/TextFormatter;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "uri"

    .prologue
    .line 119
    new-instance v0, Lmiui/maml/data/ContentProviderBinder;

    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 120
    .local v0, binder:Lmiui/maml/data/ContentProviderBinder;
    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 121
    iget-object v1, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Lmiui/maml/data/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Lmiui/maml/data/ContentProviderBinder$Builder;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    return-object v1
.end method

.method public findBinder(Ljava/lang/String;)Lmiui/maml/data/VariableBinder;
    .locals 3
    .parameter "name"

    .prologue
    .line 63
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 64
    .local v0, binder:Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    .end local v0           #binder:Lmiui/maml/data/VariableBinder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 46
    .local v0, binder:Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->finish()V

    goto :goto_0

    .line 48
    .end local v0           #binder:Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 40
    .local v0, binder:Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->init()V

    goto :goto_0

    .line 42
    .end local v0           #binder:Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 128
    iget-object v4, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 129
    .local v0, binder:Lmiui/maml/data/VariableBinder;
    instance-of v4, v0, Lmiui/maml/data/ContentProviderBinder;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 130
    check-cast v1, Lmiui/maml/data/ContentProviderBinder;

    .line 131
    .local v1, cp:Lmiui/maml/data/ContentProviderBinder;
    invoke-virtual {v1}, Lmiui/maml/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, dependency:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v1}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0

    .line 137
    .end local v0           #binder:Lmiui/maml/data/VariableBinder;
    .end local v1           #cp:Lmiui/maml/data/ContentProviderBinder;
    .end local v2           #dependency:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 52
    .local v0, binder:Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->pause()V

    goto :goto_0

    .line 54
    .end local v0           #binder:Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 57
    iget-object v2, p0, Lmiui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableBinder;

    .line 58
    .local v0, binder:Lmiui/maml/data/VariableBinder;
    invoke-virtual {v0}, Lmiui/maml/data/VariableBinder;->resume()V

    goto :goto_0

    .line 60
    .end local v0           #binder:Lmiui/maml/data/VariableBinder;
    :cond_0
    return-void
.end method
