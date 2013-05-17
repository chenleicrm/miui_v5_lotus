.class Lmiui/maml/ActionCommand$AnimationProperty;
.super Lmiui/maml/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mIsPlay:Z


# direct methods
.method protected constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/util/Variable;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    .line 1001
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/ActionCommand$PropertyCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/util/Variable;Ljava/lang/String;)V

    .line 1002
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mIsPlay:Z

    .line 1004
    :cond_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 1

    .prologue
    .line 1008
    iget-boolean v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mIsPlay:Z

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lmiui/maml/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/maml/elements/ScreenElement;->reset()V

    .line 1011
    :cond_0
    return-void
.end method
