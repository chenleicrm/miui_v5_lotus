.class final Landroid/net/wifi/AutoRegulatoryDomain;
.super Ljava/lang/Object;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
    }
.end annotation


# instance fields
.field private final mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;->sendEmptyMessage(I)Z

    return-void
.end method
