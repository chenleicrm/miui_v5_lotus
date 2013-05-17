.class public Lmiui/maml/data/VariableUpdater;
.super Ljava/lang/Object;
.source "VariableUpdater.java"


# instance fields
.field private mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmiui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    .line 12
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/maml/data/VariableUpdater;->mVariableUpdaterManager:Lmiui/maml/data/VariableUpdaterManager;

    invoke-virtual {v0}, Lmiui/maml/data/VariableUpdaterManager;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public tick(J)V
    .locals 0
    .parameter "currentTime"

    .prologue
    .line 22
    return-void
.end method
