.class Lmiui/widget/MiCloudAdvancedSettingsBase$5;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckPhoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->handleSyncPrefClick(Lmiui/widget/SyncStatePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckPhoneResult(Landroid/accounts/Account;Ljava/lang/String;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;)V
    .locals 3
    .parameter "checkedAccount"
    .parameter "checkedAuthority"
    .parameter "result"

    .prologue
    .line 322
    sget-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    if-ne p3, v0, :cond_0

    .line 325
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    new-instance v1, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;

    invoke-direct {v1, p0, p1, p2}, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$5;Landroid/accounts/Account;Ljava/lang/String;)V

    new-instance v2, Lmiui/widget/MiCloudAdvancedSettingsBase$5$2;

    invoke-direct {v2, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$5$2;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$5;)V

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->showSendSmsForSyncDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    invoke-static {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$500(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 358
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x1

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    invoke-static {v0, p1, p2, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 356
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x0

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
