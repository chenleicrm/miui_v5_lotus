.class public Lcom/miui/internal/app/MiuiLicenseActivity;
.super Landroid/app/Activity;
.source "MiuiLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static CACHE_PATH_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_MIBI_LICENSE:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

.field private static CACHE_SUFFIX:Ljava/lang/String;

.field public static EXTRA_MIUI_DOC_URL:Ljava/lang/String;

.field public static URL_MIUI_COPYRIGHT:Ljava/lang/String;

.field public static URL_MIUI_MIBI_LICENSE:Ljava/lang/String;

.field public static URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

.field public static URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

.field public static URL_MIUI_USER_MANUAL:Ljava/lang/String;


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "http://www.miui.com/res/doc/copyright.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    const-string v0, "http://product.xiaomi.com/policy/privacy.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    const-string v0, "http://product.xiaomi.com/policy/eula.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    const-string v0, "http://p.www.xiaomi.com/manual/index.html?lang=%s&miphone=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    const-string v0, "http://www.miui.com/res/doc/mibilicense.html?lang=%s"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_MIBI_LICENSE:Ljava/lang/String;

    const-string v0, "file://"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_SUFFIX:Ljava/lang/String;

    const-string v0, "/system/etc/license/%s/copyright.html?"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_COPYRIGHT:Ljava/lang/String;

    const-string v0, "/system/etc/license/%s/privacy.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    const-string v0, "/system/etc/license/%s/eula.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_AGREEMENT:Ljava/lang/String;

    const-string v0, "/system/etc/user_manual_%s/%s/index.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

    const-string v0, "/system/etc/license/%s/mibilicense.html"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_MIBI_LICENSE:Ljava/lang/String;

    const-string v0, "url"

    sput-object v0, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/app/MiuiLicenseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/app/MiuiLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/internal/app/MiuiLicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/app/MiuiLicenseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V

    return-void
.end method

.method private dismissSpinnerDlg()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private showErrorAndFinish(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x60c019d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public isConnectivityActive()Z
    .locals 2

    .prologue
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/miui/internal/app/MiuiLicenseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    sget-object v8, Lcom/miui/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    const-string v4, "zh_CN"

    .local v4, defaultLanguage:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .local v1, am:Landroid/app/IActivityManager;
    move-object v5, v4

    .local v5, language:Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .local v3, config:Landroid/content/res/Configuration;
    iget-object v7, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v3           #config:Landroid/content/res/Configuration;
    :goto_0
    const/4 v2, 0x0

    .local v2, cachepath:Ljava/lang/String;
    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_COPYRIGHT:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x60c0174

    invoke-virtual {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_COPYRIGHT:Ljava/lang/String;

    :cond_0
    :goto_1
    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_MANUAL:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x60c0178

    invoke-virtual {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v9, v8, v10

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_MANUAL:Ljava/lang/String;

    new-array v8, v12, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v9, v8, v10

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    :cond_1
    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v5, v8, v10

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    :cond_2
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->setContentView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/miui/internal/app/MiuiLicenseActivity$1;

    invoke-direct {v8, p0}, Lcom/miui/internal/app/MiuiLicenseActivity$1;-><init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/miui/internal/app/MiuiLicenseActivity$2;

    invoke-direct {v8, p0}, Lcom/miui/internal/app/MiuiLicenseActivity$2;-><init>(Lcom/miui/internal/app/MiuiLicenseActivity;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->isConnectivityActive()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v7, ""

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    invoke-static {p0, v7, v8, v11, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    .local v6, pd:Landroid/app/ProgressDialog;
    invoke-virtual {v6, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iput-object v6, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-void

    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v6           #pd:Landroid/app/ProgressDialog;
    :cond_4
    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x60c0176

    invoke-virtual {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_PRIVACY_POLICY:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_USER_AGREEMENT:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x60c0177

    invoke-virtual {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_USER_AGREEMENT:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    sget-object v7, Lcom/miui/internal/app/MiuiLicenseActivity;->URL_MIUI_MIBI_LICENSE:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x60c0175

    invoke-virtual {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mTitle:Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/app/MiuiLicenseActivity;->CACHE_PATH_MIUI_MIBI_LICENSE:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    :cond_8
    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/miui/internal/app/MiuiLicenseActivity;->showErrorAndFinish(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget-object v7, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/miui/internal/app/MiuiLicenseActivity;->mCachePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v2           #cachepath:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/miui/internal/app/MiuiLicenseActivity;->dismissSpinnerDlg()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
