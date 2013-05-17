.class Lmiui/net/CloudManager$2;
.super Lmiui/net/CloudManager$CmTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager;->getSubSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/CloudManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/net/CloudManager$2;->this$0:Lmiui/net/CloudManager;

    iput-object p2, p0, Lmiui/net/CloudManager$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lmiui/net/CloudManager$2;->val$authority:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/net/CloudManager$CmTask;-><init>(Lmiui/net/CloudManager;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmiui/net/CloudManager$2;->getService()Lmiui/net/ICloudManagerService;

    move-result-object v0

    .local v0, service:Lmiui/net/ICloudManagerService;
    iget-object v1, p0, Lmiui/net/CloudManager$2;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/net/CloudManager$2;->val$authority:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/net/CloudManager$2;->getResponse()Lmiui/net/ICloudManagerResponse;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lmiui/net/ICloudManagerService;->getSubSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    return-void
.end method
