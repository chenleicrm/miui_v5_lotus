.class Lmiui/net/PaymentManager$9;
.super Lmiui/net/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->internalRecharge(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Lmiui/net/PaymentManager$PaymentManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$serviceId:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lmiui/net/PaymentManager$9;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$9;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lmiui/net/PaymentManager$9;->val$serviceId:Ljava/lang/String;

    iput-object p4, p0, Lmiui/net/PaymentManager$9;->val$verify:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;)V

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
    .line 334
    invoke-virtual {p0}, Lmiui/net/PaymentManager$9;->getService()Lmiui/net/IPaymentManagerService;

    move-result-object v0

    .line 335
    .local v0, service:Lmiui/net/IPaymentManagerService;
    iget-object v1, p0, Lmiui/net/PaymentManager$9;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lmiui/net/PaymentManager$9;->val$serviceId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/PaymentManager$9;->val$verify:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lmiui/net/IPaymentManagerService;->recharge(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method
