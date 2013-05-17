.class Lmiui/net/CloudManager$12;
.super Lmiui/net/CloudManager$CmTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/CloudManager;->getActivatedSimUser()Lmiui/net/CloudManager$CloudManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/CloudManager;


# direct methods
.method constructor <init>(Lmiui/net/CloudManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/net/CloudManager$12;->this$0:Lmiui/net/CloudManager;

    invoke-direct {p0, p1}, Lmiui/net/CloudManager$CmTask;-><init>(Lmiui/net/CloudManager;)V

    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lmiui/net/CloudManager$12;->getService()Lmiui/net/ICloudManagerService;

    move-result-object v0

    .local v0, service:Lmiui/net/ICloudManagerService;
    invoke-virtual {p0}, Lmiui/net/CloudManager$12;->getResponse()Lmiui/net/ICloudManagerResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiui/net/ICloudManagerService;->getActivatedSimUser(Lmiui/net/ICloudManagerResponse;)V

    return-void
.end method
