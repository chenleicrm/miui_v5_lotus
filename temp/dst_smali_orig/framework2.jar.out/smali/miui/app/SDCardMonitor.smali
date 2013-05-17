.class public Lmiui/app/SDCardMonitor;
.super Ljava/lang/Object;
.source "SDCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/SDCardMonitor$1;,
        Lmiui/app/SDCardMonitor$SDCardStatusListener;,
        Lmiui/app/SDCardMonitor$SDCardReceiver;
    }
.end annotation


# static fields
.field private static mMonitor:Lmiui/app/SDCardMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsMount:Ljava/lang/Boolean;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lmiui/app/SDCardMonitor$SDCardStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;

    iput-object p1, p0, Lmiui/app/SDCardMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/app/SDCardMonitor$SDCardReceiver;

    invoke-direct {v0, p0, v1}, Lmiui/app/SDCardMonitor$SDCardReceiver;-><init>(Lmiui/app/SDCardMonitor;Lmiui/app/SDCardMonitor$1;)V

    iput-object v0, p0, Lmiui/app/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$100(Lmiui/app/SDCardMonitor;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/app/SDCardMonitor;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lmiui/app/SDCardMonitor;->mIsMount:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/app/SDCardMonitor;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getSDCardMonitor(Landroid/content/Context;)Lmiui/app/SDCardMonitor;
    .locals 2
    .parameter "context"

    .prologue
    sget-object v0, Lmiui/app/SDCardMonitor;->mMonitor:Lmiui/app/SDCardMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/app/SDCardMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/SDCardMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/SDCardMonitor;->mMonitor:Lmiui/app/SDCardMonitor;

    :cond_0
    sget-object v0, Lmiui/app/SDCardMonitor;->mMonitor:Lmiui/app/SDCardMonitor;

    return-object v0
.end method

.method public static isSdCardAvailable()Z
    .locals 1

    .prologue
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lmiui/app/SDCardMonitor$SDCardStatusListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    iget-object v1, p0, Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/app/SDCardMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/app/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lmiui/app/SDCardMonitor$SDCardStatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/app/SDCardMonitor;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/SDCardMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/SDCardMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
