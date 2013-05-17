.class Lmiui/net/PaymentManager$11;
.super Lmiui/net/PaymentManager$PmsTask;
.source "PaymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->internalGotoMiliCenter(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lmiui/net/PaymentManager$11;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$11;->val$account:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lmiui/net/PaymentManager$PmsTask;-><init>(Lmiui/net/PaymentManager;)V

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
    .line 356
    invoke-virtual {p0}, Lmiui/net/PaymentManager$11;->getService()Lmiui/net/IPaymentManagerService;

    move-result-object v0

    .line 357
    .local v0, service:Lmiui/net/IPaymentManagerService;
    iget-object v1, p0, Lmiui/net/PaymentManager$11;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Lmiui/net/IPaymentManagerService;->showMiliCenter(Landroid/accounts/Account;)V

    .line 358
    return-void
.end method
