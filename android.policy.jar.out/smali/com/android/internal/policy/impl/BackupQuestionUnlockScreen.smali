.class public final Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "BackupQuestionUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x3a98

.field private static final DEBUG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "com.android.inputmethod.latin.noMicrophoneKey"

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final LOCK_SCREEN_TAG:Ljava/lang/String; = "BackupQuestionUnlockScreen"


# instance fields
.field private final mAnswer:Landroid/widget/EditText;

.field private final mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

.field private final mBackupUnlockHelper:Lcom/android/internal/policy/impl/BackupUnlockHelper;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mEmergencyCall:Landroid/widget/Button;

.field private final mKeyboardOpen:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mOk:Landroid/widget/Button;

.field private final mQuestion:Landroid/widget/TextView;

.field private mShownDialog:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/BackupQuestionUtils;)V
    .locals 6
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"
    .parameter "backupQuestionUtils"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 98
    iput-object p2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 99
    iput-object p3, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 100
    iput-object p4, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    iput-object p5, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->isKeyboardOpen(Landroid/content/res/Configuration;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mKeyboardOpen:Z

    .line 106
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090050

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    const v2, 0x10202a0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mQuestion:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/BackupQuestionUtils;->getSelectedQuestion(I)I

    move-result v1

    .line 116
    .local v1, questionId:I
    const/4 v0, 0x0

    .line 117
    .local v0, question:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    if-eqz v0, :cond_0

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mQuestion:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_1
    const v2, 0x10202a1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mKeyboardOpen:Z

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 181
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    const v2, 0x10202a2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    .line 192
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    const v2, 0x10202a3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mShownDialog:Z

    .line 200
    new-instance v2, Lcom/android/internal/policy/impl/BackupUnlockHelper;

    invoke-direct {v2, p1, p4, p3}, Lcom/android/internal/policy/impl/BackupUnlockHelper;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupUnlockHelper:Lcom/android/internal/policy/impl/BackupUnlockHelper;

    .line 201
    return-void

    .line 123
    :pswitch_0
    const v2, 0x10400f5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const v2, 0x10400f6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    goto :goto_0

    .line 129
    :pswitch_2
    const v2, 0x10400f7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    goto :goto_0

    .line 132
    :pswitch_3
    const v2, 0x10400f8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    goto/16 :goto_0

    .line 145
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    const-string v3, "com.android.inputmethod.latin.noMicrophoneKey"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    new-instance v3, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_2

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    return-object v0
.end method

.method private checkAnswer()Z
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupQuestionUtils:Lcom/android/internal/widget/BackupQuestionUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/BackupQuestionUtils;->checkAnswer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isKeyboardOpen(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "configuration"

    .prologue
    const/4 v0, 0x1

    .line 322
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 312
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 319
    return-void
.end method

.method private unlockAndFinishKeyguard()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupUnlockHelper:Lcom/android/internal/policy/impl/BackupUnlockHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BackupUnlockHelper;->unlockAndFinishKeyguard()V

    .line 290
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 211
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 214
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mDialog:Landroid/app/AlertDialog;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mBackupUnlockHelper:Lcom/android/internal/policy/impl/BackupUnlockHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/BackupUnlockHelper;->cleanUp()V

    .line 265
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 302
    :goto_0
    const/4 v0, 0x1

    .line 304
    :goto_1
    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 304
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x3a98

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->checkAnswer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->unlockAndFinishKeyguard()V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 283
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->updateConfiguration()V

    .line 208
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mAnswer:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mShownDialog:Z

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mShownDialog:Z

    .line 255
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x3a98

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 219
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 327
    .local v0, newConfiguration:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mKeyboardOpen:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->isKeyboardOpen(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupQuestionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 330
    :cond_0
    return-void
.end method
