.class Lmiui/net/PaymentManager$4;
.super Ljava/lang/Object;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/net/PaymentManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/net/PaymentManager;->gotoMiliCenter(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/net/PaymentManager;


# direct methods
.method constructor <init>(Lmiui/net/PaymentManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/net/PaymentManager$4;->this$0:Lmiui/net/PaymentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .parameter "error"
    .parameter "message"

    .prologue
    return-void
.end method

.method public onSuccess(Landroid/accounts/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    iget-object v0, p0, Lmiui/net/PaymentManager$4;->this$0:Lmiui/net/PaymentManager;

    #calls: Lmiui/net/PaymentManager;->internalGotoMiliCenter(Landroid/accounts/Account;)V
    invoke-static {v0, p1}, Lmiui/net/PaymentManager;->access$300(Lmiui/net/PaymentManager;Landroid/accounts/Account;)V

    return-void
.end method
