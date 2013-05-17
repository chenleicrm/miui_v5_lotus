.class Lmiui/widget/MiCloudAdvancedSettingsBase$1;
.super Landroid/os/AsyncTask;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    iget-object v3, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-virtual {v3}, Lmiui/widget/MiCloudAdvancedSettingsBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lmiui/net/CloudManager;->get(Landroid/content/Context;)Lmiui/net/CloudManager;

    move-result-object v0

    .local v0, cm:Lmiui/net/CloudManager;
    invoke-virtual {v0}, Lmiui/net/CloudManager;->getActivateStatus()Lmiui/net/CloudManager$CloudManagerFuture;

    move-result-object v2

    .local v2, f:Lmiui/net/CloudManager$CloudManagerFuture;,"Lmiui/net/CloudManager$CloudManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {v2}, Lmiui/net/CloudManager$CloudManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "activate_status"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MiCloudAdvancedSettingsBase"

    const-string v4, "failed to get activate status"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:I
    invoke-static {v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$102(Lmiui/widget/MiCloudAdvancedSettingsBase;I)I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MiCloudAdvancedSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get error status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-virtual {v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->finish()V

    :cond_0
    iget-object v1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    iget-object v2, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mActivateStatus:I
    invoke-static {v2}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$100(Lmiui/widget/MiCloudAdvancedSettingsBase;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V
    invoke-static {v1, v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;Ljava/lang/Boolean;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$1;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mMainSyncPref:Lmiui/widget/SyncStatePreference;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$000(Lmiui/widget/MiCloudAdvancedSettingsBase;)Lmiui/widget/SyncStatePreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    return-void
.end method
