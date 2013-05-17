.class Lmiui/maml/ActionCommand$DelayCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayCommand"
.end annotation


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand;

.field private mDelay:J


# direct methods
.method public constructor <init>(Lmiui/maml/ActionCommand;J)V
    .locals 1
    .parameter "command"
    .parameter "delay"

    .prologue
    invoke-virtual {p1}, Lmiui/maml/ActionCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;)V

    iput-object p1, p0, Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;

    iput-wide p2, p0, Lmiui/maml/ActionCommand$DelayCommand;->mDelay:J

    return-void
.end method

.method static synthetic access$400(Lmiui/maml/ActionCommand$DelayCommand;)Lmiui/maml/ActionCommand;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;

    return-object v0
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/ActionCommand$DelayCommand$1;

    invoke-direct {v1, p0}, Lmiui/maml/ActionCommand$DelayCommand$1;-><init>(Lmiui/maml/ActionCommand$DelayCommand;)V

    iget-wide v2, p0, Lmiui/maml/ActionCommand$DelayCommand;->mDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/ScreenElementRoot;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/ActionCommand$DelayCommand;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    return-void
.end method
