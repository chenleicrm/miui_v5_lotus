.class Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase$5;->onCheckPhoneResult(Landroid/accounts/Account;Ljava/lang/String;Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

.field final synthetic val$checkedAccount:Landroid/accounts/Account;

.field final synthetic val$checkedAuthority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase$5;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    iput-object p2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->val$checkedAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->val$checkedAuthority:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 331
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->startActivate()V
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$300(Lmiui/widget/MiCloudAdvancedSettingsBase;)V

    .line 332
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->val$checkedAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$1;->val$checkedAuthority:Ljava/lang/String;

    const/4 v3, 0x1

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->enableSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$400(Lmiui/widget/MiCloudAdvancedSettingsBase;Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 339
    return-void
.end method
