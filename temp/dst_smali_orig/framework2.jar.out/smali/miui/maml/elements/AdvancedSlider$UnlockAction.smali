.class Lmiui/maml/elements/AdvancedSlider$UnlockAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockAction"
.end annotation


# instance fields
.field public mCommand:Lmiui/maml/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mTask:Lmiui/maml/util/Task;

.field public mTrigger:Lmiui/maml/CommandTrigger;

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AdvancedSlider;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$UnlockAction;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 5

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .local v0, configTask:Lmiui/maml/util/Task;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    .end local v0           #configTask:Lmiui/maml/util/Task;
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v4, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_1
    return-void
.end method
