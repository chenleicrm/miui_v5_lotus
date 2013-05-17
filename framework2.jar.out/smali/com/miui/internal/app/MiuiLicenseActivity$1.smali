.class Lcom/miui/internal/app/MiuiLicenseActivity$1;
.super Landroid/webkit/WebViewClient;
.source "MiuiLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/app/MiuiLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasLoadFirstPage:Z

.field final synthetic this$0:Lcom/miui/internal/app/MiuiLicenseActivity;


# direct methods
.method constructor <init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 108
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #calls: Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V
    invoke-static {v0, p4}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$100(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    #getter for: Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-boolean v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->mHasLoadFirstPage:Z

    if-eqz v2, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->this$0:Lcom/miui/internal/app/MiuiLicenseActivity;

    invoke-virtual {v2, v0}, Lcom/miui/internal/app/MiuiLicenseActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 129
    :cond_0
    iput-boolean v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity$1;->mHasLoadFirstPage:Z

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method
