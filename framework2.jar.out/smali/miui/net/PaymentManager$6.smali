.class Lmiui/net/PaymentManager$6;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->gotoPayRecord(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;

.field final synthetic val$serviceId:Ljava/lang/String;

.field final synthetic val$verify:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lmiui/net/PaymentManager$6;->this$0:Lmiui/net/PaymentManager;

    iput-object p2, p0, Lmiui/net/PaymentManager$6;->val$serviceId:Ljava/lang/String;

    iput-object p3, p0, Lmiui/net/PaymentManager$6;->val$verify:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    .line 241
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/net/PaymentManager$6;->this$0:Lmiui/net/PaymentManager;

    iget-object v1, p0, Lmiui/net/PaymentManager$6;->val$serviceId:Ljava/lang/String;

    iget-object v2, p0, Lmiui/net/PaymentManager$6;->val$verify:Ljava/lang/String;

    #calls: Lmiui/net/PaymentManager;->internalGotoPayRecord(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1, v2}, Lmiui/net/PaymentManager;->access$500(Lmiui/net/PaymentManager;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method
