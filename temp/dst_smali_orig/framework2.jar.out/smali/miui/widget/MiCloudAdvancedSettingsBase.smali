.class public abstract Lmiui/widget/MiCloudAdvancedSettingsBase;
.super Landroid/preference/PreferenceActivity;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;
    }
.end annotation


# static fields
.field public static final ACTION_ACTIVATE_STATUS_CHANGED:Ljava/lang/String; = "com.xiaomi.xmsf.action.ACTIVATE_STATUS_CHANGED"

.field private static final ACTIVATE_STATUS_ERROR:I = 0x0

.field private static final ACTIVATE_STATUS_NONE:I = -0x1

.field private static final INT_0:Ljava/lang/Integer; = null

.field private static final TAG:Ljava/lang/String; = "MiCloudAdvancedSettingsBase"

.field private static final URL_QUERY_PHONE:Ljava/lang/String; = "http://api.account.xiaomi.com/pass/activate/dev/%s/activating"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActivateStatus:I

.field private mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

.field private mGetActivateStatusTask:Landroid/os/AsyncTask;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMainSyncPref:Lmiui/widget/SyncStatePreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusChangeListenerHandle:Ljava/lang/Object;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase;->INT_0:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$6;

    invoke-direct {v0, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$6;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;

    invoke-direct {v0, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$7;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/MiCloudAdvancedSettingsBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:I

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/MiCloudAdvancedSettingsBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:I

    return p1
.end method

.method static synthetic access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate()V

    return-void
.end method

.method static synthetic access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "syncOn"

    .prologue
    invoke-static {p1, p2, p3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    if-eqz p3, :cond_2

    invoke-virtual {p0, p3, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->canSync(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    const-string v1, "sms"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.UPLOAD_SIM_ON_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_upload_opt"

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    :cond_2
    invoke-static {p1, p2, p3}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private handleIntent()V
    .locals 10

    .prologue
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .local v4, intent:Landroid/content/Intent;
    const-string v7, "authority"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, authority:Ljava/lang/String;
    const-string v7, "account"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .local v0, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "No authority contained"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-nez v0, :cond_1

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "No account contained"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    iget-object v7, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v7, v1}, Lmiui/widget/SyncStatePreference;->setAuthority(Ljava/lang/String;)V

    iget-object v7, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {v7, v0}, Lmiui/widget/SyncStatePreference;->setAccount(Landroid/accounts/Account;)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .local v2, bar:Landroid/app/ActionBar;
    if-eqz v2, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .local v5, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v5, :cond_2

    const-string v7, "MiCloudAdvancedSettingsBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no provider info for authority:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #providerInfo:Landroid/content/pm/ProviderInfo;
    :goto_0
    return-void

    .restart local v5       #providerInfo:Landroid/content/pm/ProviderInfo;
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, providerLabel:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "MiCloudAdvancedSettingsBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Provider needs a label for authority \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v1

    :cond_3
    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .end local v5           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v6           #providerLabel:Ljava/lang/CharSequence;
    :cond_4
    const-string v7, "extra_activate_err_code"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, errorCode:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v7, Lmiui/widget/MiCloudAdvancedSettingsBase$2;

    invoke-direct {v7, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$2;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    new-instance v8, Lmiui/widget/MiCloudAdvancedSettingsBase$3;

    invoke-direct {v8, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$3;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    new-instance v9, Lmiui/widget/MiCloudAdvancedSettingsBase$4;

    invoke-direct {v9, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$4;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    invoke-virtual {p0, v3, v7, v8, v9}, Lmiui/widget/MiCloudAdvancedSettingsBase;->showReactivateDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method private handleSyncPrefClick(Lmiui/widget/SyncStatePreference;)V
    .locals 7
    .parameter "syncPref"

    .prologue
    invoke-virtual {p1}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .local v1, authority:Ljava/lang/String;
    invoke-virtual {p1}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .local v3, syncAutomatically:Z
    invoke-virtual {p1}, Lmiui/widget/SyncStatePreference;->isOneTimeSyncMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v4

    .local v4, syncOn:Z
    move v2, v3

    .local v2, oldSyncState:Z
    if-eq v4, v2, :cond_0

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    new-instance v6, Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    invoke-direct {v6, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$5;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    invoke-direct {v5, p0, v0, v1, v6}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;-><init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;)V

    iput-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    iget-object v5, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private showAlertDialog(II)V
    .locals 3
    .parameter "title"
    .parameter "msg"

    .prologue
    new-instance v1, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    .local v0, f:Lmiui/widget/SimpleDialogFragment;
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AlertDialog"

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .parameter "onSendSmsListener"
    .parameter "onDismissListener"

    .prologue
    new-instance v1, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    const v2, 0x60c01ad

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    const v2, 0x60c01ac

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    .local v0, f:Lmiui/widget/SimpleDialogFragment;
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v1, 0x60c

    invoke-virtual {v0, v1, p1}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2}, Lmiui/widget/SimpleDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SendSMSProgress"

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startActivate()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.START_ACTIVATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateSyncState(Ljava/lang/Boolean;)V
    .locals 9
    .parameter "activating"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->isResumed()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .local v1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .local v8, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v4, v3

    .local v4, simReady:Z
    :goto_1
    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v5

    if-nez p1, :cond_2

    move v6, v0

    :goto_2
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPrefSummary()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lmiui/util/MiCloudSyncUtils;->updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZZLjava/lang/String;)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->onSyncStateUpdate()V

    goto :goto_0

    .end local v4           #simReady:Z
    :cond_1
    move v4, v0

    goto :goto_1

    .restart local v4       #simReady:Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2
.end method


# virtual methods
.method protected abstract canSync(ZLjava/lang/String;)Z
.end method

.method protected getMainSyncPrefSummary()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method protected abstract getMainSyncPreferenceKey()Ljava/lang/String;
.end method

.method protected abstract getPreferencesResourceId()I
.end method

.method protected needActivate()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiCloudAdvancedSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account removed, finish activity, account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getPreferencesResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getMainSyncPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/widget/SyncStatePreference;

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.xiaomi.xmsf.action.ACTIVATE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mCheckPhoneTask:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleIntent()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;

    invoke-direct {p0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(Lmiui/widget/SyncStatePreference;)V

    .end local p2
    :goto_0
    return v0

    .restart local p2
    :cond_0
    instance-of v1, p2, Lmiui/widget/SyncStatePreference;

    if-eqz v1, :cond_1

    check-cast p2, Lmiui/widget/SyncStatePreference;

    .end local p2
    invoke-virtual {p0, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->onSubSyncStateUpdate(Lmiui/widget/SyncStatePreference;)V

    goto :goto_0

    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/16 v0, 0xd

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mStatusChangeListenerHandle:Ljava/lang/Object;

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->needActivate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v2, Lmiui/widget/MiCloudAdvancedSettingsBase$1;

    invoke-direct {v2, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    new-array v3, v5, [Ljava/lang/Void;

    const/4 v4, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mGetActivateStatusTask:Landroid/os/AsyncTask;

    :cond_1
    invoke-direct {p0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method protected onSubSyncStateUpdate(Lmiui/widget/SyncStatePreference;)V
    .locals 0
    .parameter "pref"

    .prologue
    return-void
.end method

.method protected onSyncStateUpdate()V
    .locals 0

    .prologue
    return-void
.end method

.method public showReactivateDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4
    .parameter "errorCode"
    .parameter "onReactivateListener"
    .parameter "onCancelActivateListener"
    .parameter "onDismissListener"

    .prologue
    new-instance v2, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    const v3, 0x60c0001

    invoke-virtual {p0, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .local v0, builder:Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v2, 0x60c01af

    invoke-virtual {p0, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    invoke-virtual {v0}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v1

    .local v1, f:Lmiui/widget/SimpleDialogFragment;
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p3}, Lmiui/widget/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 v2, 0x60c

    invoke-virtual {v1, v2, p2}, Lmiui/widget/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, p4}, Lmiui/widget/SimpleDialogFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ReactivateDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public turnOffUnActivatedSync()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v5

    .local v5, syncAdapters:[Landroid/content/SyncAdapterType;
    move-object v0, v5

    .local v0, arr$:[Landroid/content/SyncAdapterType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, sa:Landroid/content/SyncAdapterType;
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v1, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .local v1, authority:Ljava/lang/String;
    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, v1, v8}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    invoke-static {v1}, Lmiui/util/MiCloudSyncUtils;->needActivate(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmiui/widget/MiCloudAdvancedSettingsBase;->mAccount:Landroid/accounts/Account;

    invoke-static {v6, v1, v8}, Lmiui/util/MiCloudSyncUtils;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .end local v1           #authority:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #sa:Landroid/content/SyncAdapterType;
    :cond_1
    return-void
.end method
