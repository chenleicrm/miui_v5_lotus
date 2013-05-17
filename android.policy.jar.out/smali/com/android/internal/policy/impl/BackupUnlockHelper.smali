.class public Lcom/android/internal/policy/impl/BackupUnlockHelper;
.super Ljava/lang/Object;
.source "BackupUnlockHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/BackupUnlockHelper$1;,
        Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;
    }
.end annotation


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "keyguardCallback"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 42
    iput-object p3, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BackupUnlockHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/BackupUnlockHelper;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private showSelectionDialog()V
    .locals 7

    .prologue
    .line 59
    iget-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    const v6, 0x10400fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    const v6, 0x10400fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    const v6, 0x10400fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, answerYes:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    const v6, 0x10400ff

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, answerNo:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/BackupUnlockHelper$PopupListener;-><init>(Lcom/android/internal/policy/impl/BackupUnlockHelper;Lcom/android/internal/policy/impl/BackupUnlockHelper$1;)V

    .line 68
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mDialog:Landroid/app/AlertDialog;

    .line 71
    iget-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 72
    iget-object v5, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 73
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mDialog:Landroid/app/AlertDialog;

    .line 100
    :cond_0
    return-void
.end method

.method unlockAndFinishKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupUnlockHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupUnlockHelper;->showSelectionDialog()V

    .line 52
    return-void
.end method
