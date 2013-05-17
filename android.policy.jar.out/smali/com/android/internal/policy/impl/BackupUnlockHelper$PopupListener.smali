.class Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;
.super Ljava/lang/Object;
.source "BackupUnlockHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BackupUnlockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BackupUnlockHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/BackupUnlockHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;->this$0:Lcom/android/internal/policy/impl/BackupUnlockHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/BackupUnlockHelper;Lcom/android/internal/policy/impl/BackupUnlockHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;-><init>(Lcom/android/internal/policy/impl/BackupUnlockHelper;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;->this$0:Lcom/android/internal/policy/impl/BackupUnlockHelper;

    #getter for: Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/BackupUnlockHelper;->access$100(Lcom/android/internal/policy/impl/BackupUnlockHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;->this$0:Lcom/android/internal/policy/impl/BackupUnlockHelper;

    #getter for: Lcom/android/internal/policy/impl/BackupUnlockHelper;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/BackupUnlockHelper;->access$200(Lcom/android/internal/policy/impl/BackupUnlockHelper;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 92
    return-void
.end method
