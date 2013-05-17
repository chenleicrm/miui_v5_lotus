.class Lmiui/widget/MiCloudAdvancedSettingsBase$5$2;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase$5;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$2;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 346
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$5$2;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$5;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$5;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x0

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;Ljava/lang/Boolean;)V

    .line 347
    return-void
.end method
