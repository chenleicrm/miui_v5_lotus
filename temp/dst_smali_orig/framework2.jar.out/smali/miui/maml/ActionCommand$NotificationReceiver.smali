.class abstract Lmiui/maml/ActionCommand$NotificationReceiver;
.super Lmiui/maml/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Lmiui/maml/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Lmiui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "root"
    .parameter "stateName"
    .parameter "type"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$StatefulActionCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    iput-object p3, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    return-void
.end method


# virtual methods
.method protected asyncUpdate()V
    .locals 2

    .prologue
    invoke-static {}, Lmiui/maml/ActionCommand;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/ActionCommand$NotificationReceiver$1;

    invoke-direct {v1, p0}, Lmiui/maml/ActionCommand$NotificationReceiver$1;-><init>(Lmiui/maml/ActionCommand$NotificationReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->update()V

    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->update()V

    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method protected abstract update()V
.end method
