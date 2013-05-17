.class public Lmiui/maml/data/VariableBinder$Variable;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field public mName:Ljava/lang/String;

.field public mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

.field public mStringVar:Lmiui/maml/util/IndexedStringVariable;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p3}, Lmiui/maml/data/VariableBinder$Variable;->createVar(Lmiui/maml/data/Variables;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 2
    .parameter "node"
    .parameter "var"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v0, "Variable"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    .line 67
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p2}, Lmiui/maml/data/VariableBinder$Variable;->createVar(Lmiui/maml/data/Variables;)V

    .line 69
    invoke-virtual {p0, p1}, Lmiui/maml/data/VariableBinder$Variable;->onLoad(Lorg/w3c/dom/Element;)V

    .line 70
    return-void
.end method

.method private createVar(Lmiui/maml/data/Variables;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 92
    const-string v0, "string"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method public isString()Z
    .locals 2

    .prologue
    .line 73
    const-string v0, "string"

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$Variable;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 89
    return-void
.end method

.method public setValue(D)V
    .locals 1
    .parameter "value"

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mNumberVar:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 80
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mStringVar:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
