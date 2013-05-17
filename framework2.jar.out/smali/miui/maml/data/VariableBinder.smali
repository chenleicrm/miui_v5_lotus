.class public abstract Lmiui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/VariableBinder$Variable;
    }
.end annotation


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 37
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
