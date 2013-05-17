.class abstract Lmiui/maml/ActionCommand$StatefulActionCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "stateName"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v1, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p2, v1}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/util/IndexedNumberVariable;

    return-void
.end method


# virtual methods
.method protected final updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    iget-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mVar:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/ActionCommand$StatefulActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method
