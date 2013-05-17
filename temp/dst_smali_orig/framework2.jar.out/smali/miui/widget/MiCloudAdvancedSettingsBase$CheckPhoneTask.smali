.class Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;
.super Landroid/os/AsyncTask;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckPhoneTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;,
        Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private final mAuthority:Ljava/lang/String;

.field private final mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;

.field private mProgressDialog:Lmiui/widget/SimpleDialogFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/accounts/Account;Ljava/lang/String;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;)V
    .locals 0
    .parameter "activity"
    .parameter "account"
    .parameter "authority"
    .parameter "checkResultCallable"

    .prologue
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mAuthority:Ljava/lang/String;

    iput-object p4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->doInBackground([Ljava/lang/Void;)Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;
    .locals 6
    .parameter "params"

    .prologue
    iget-object v4, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/net/CloudManager;->getActivateStatus()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v1

    .local v1, f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    const/4 v3, -0x1

    .local v3, status:I
    :try_start_0
    invoke-interface {v1}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, result:Landroid/os/Bundle;
    const-string v4, "activate_status"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v2           #result:Landroid/os/Bundle;
    :goto_0
    packed-switch v3, :pswitch_data_0

    sget-object v4, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_ACTIVATING:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MiCloudAdvancedSettingsBase"

    const-string v5, "error when checking status"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    sget-object v4, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    goto :goto_1

    :pswitch_1
    sget-object v4, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->onPostExecute(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;)V

    return-void
.end method

.method protected onPostExecute(Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;)V
    .locals 3
    .parameter "result"

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mProgressDialog:Lmiui/widget/SimpleDialogFragment;

    invoke-virtual {v0}, Lmiui/widget/SimpleDialogFragment;->dismiss()V

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mCheckCallback:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mAuthority:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;->onCheckPhoneResult(Landroid/accounts/Account;Ljava/lang/String;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    new-instance v0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->setCancelable(Z)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lmiui/widget/SimpleDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mProgressDialog:Lmiui/widget/SimpleDialogFragment;

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mProgressDialog:Lmiui/widget/SimpleDialogFragment;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "CheckPhoneProgress"

    invoke-virtual {v0, v1, v2}, Lmiui/widget/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
