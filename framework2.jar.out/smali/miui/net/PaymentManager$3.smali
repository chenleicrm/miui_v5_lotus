.class Lmiui/net/PaymentManager$3;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->getMiliBalance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$paymentId:Ljava/lang/String;

.field final synthetic val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

.field final synthetic val$serviceId:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lmiui/net/PaymentManager$3;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$3;->val$serviceId:Ljava/lang/String;

    iput-object p3, p0, Lmiui/net/PaymentManager$3;->val$paymentId:Ljava/lang/String;

    iput-object p4, p0, Lmiui/net/PaymentManager$3;->val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iput-object p5, p0, Lmiui/net/PaymentManager$3;->val$verify:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "message"

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/net/PaymentManager$3;->val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

    iget-object v1, p0, Lmiui/net/PaymentManager$3;->val$paymentId:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0, v1, p1, p2, v2}, Lmiui/net/PaymentManager$PaymentListener;->onFailed(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 164
    new-instance v4, Lmiui/net/PaymentManager$PaymentCallback;

    iget-object v0, p0, Lmiui/net/PaymentManager$3;->this$0:Lmiui/net/PaymentManager;

    iget-object v1, p0, Lmiui/net/PaymentManager$3;->val$serviceId:Ljava/lang/String;

    iget-object v2, p0, Lmiui/net/PaymentManager$3;->val$paymentId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/PaymentManager$3;->val$paymentListener:Lmiui/net/PaymentManager$PaymentListener;

    invoke-direct {v4, v0, v1, v2, v3}, Lmiui/net/PaymentManager$PaymentCallback;-><init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentListener;)V

    .line 165
    .local v4, paymentCallback:Lmiui/net/PaymentManager$PaymentCallback;
    iget-object v0, p0, Lmiui/net/PaymentManager$3;->this$0:Lmiui/net/PaymentManager;

    iget-object v2, p0, Lmiui/net/PaymentManager$3;->val$serviceId:Ljava/lang/String;

    iget-object v3, p0, Lmiui/net/PaymentManager$3;->val$verify:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    #calls: Lmiui/net/PaymentManager;->internalGetMiliBalance(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/os/Handler;)Lmiui/net/PaymentManager$PaymentManagerFuture;
    invoke-static/range {v0 .. v5}, Lmiui/net/PaymentManager;->access$200(Lmiui/net/PaymentManager;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lmiui/net/PaymentManager$PaymentManagerCallback;Landroid/os/Handler;)Lmiui/net/PaymentManager$PaymentManagerFuture;

    .line 166
    return-void
.end method
