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
    .line 669
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$UnlockAction;-><init>(Lmiui/maml/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 690
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    if-nez v2, :cond_1

    .line 691
    const/4 v1, 0x0

    .line 718
    :cond_0
    :goto_0
    return-object v1

    .line 693
    :cond_1
    const/4 v1, 0x0

    .line 694
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    if-nez v2, :cond_3

    .line 695
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    .line 699
    .local v0, configTask:Lmiui/maml/util/Task;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 700
    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    .line 702
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    .line 705
    .end local v0           #configTask:Lmiui/maml/util/Task;
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 708
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 710
    iget-object v2, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v2, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 711
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

    .line 712
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v3, v3, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    iget-object v4, v4, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 714
    :cond_6
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->finish()V

    .line 724
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 725
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    .line 726
    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->init()V

    .line 731
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    .line 733
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->pause()V

    .line 738
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    .line 740
    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/maml/util/Task;

    if-eqz v0, :cond_0

    .line 680
    invoke-direct {p0}, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->perform()V

    .line 686
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 683
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/maml/ActionCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand;->resume()V

    .line 745
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    .line 747
    :cond_1
    return-void
.end method
