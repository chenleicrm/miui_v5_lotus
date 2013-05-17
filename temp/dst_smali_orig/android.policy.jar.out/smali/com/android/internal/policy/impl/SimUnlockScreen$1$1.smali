.class Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$1;->onSimLockChangedResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iput p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$result:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x10900e3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v6, 0x10203a0

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, layout:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, text:Landroid/widget/TextView;
    const v4, 0x1040356

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3, v8}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #text:Landroid/widget/TextView;
    .end local v3           #toast:Landroid/widget/Toast;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    return-void

    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->val$result:I

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v5, 0x1040352

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->showHeaderMessage(I)V
    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$702(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$1$1;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x1040354

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
