.class Lmiui/net/CloudManager$9;
.super Lmiui/net/CloudManager$CmTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager;->getSimAuthToken(Ljava/lang/String;)Lmiui/net/CloudManager$CloudManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/CloudManager;

.field final synthetic val$serviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lmiui/net/CloudManager$9;->this$0:Lmiui/net/CloudManager;

    iput-object p2, p0, Lmiui/net/CloudManager$9;->val$serviceId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/net/CloudManager$CmTask;-><init>(Lmiui/net/CloudManager;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lmiui/net/CloudManager$9;->getService()Lmiui/net/ICloudManagerService;

    move-result-object v0

    .line 333
    .local v0, service:Lmiui/net/ICloudManagerService;
    iget-object v1, p0, Lmiui/net/CloudManager$9;->val$serviceId:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/net/CloudManager$9;->getResponse()Lmiui/net/ICloudManagerResponse;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiui/net/ICloudManagerService;->getSimAuthToken(Ljava/lang/String;Lmiui/net/ICloudManagerResponse;)V

    .line 334
    return-void
.end method
