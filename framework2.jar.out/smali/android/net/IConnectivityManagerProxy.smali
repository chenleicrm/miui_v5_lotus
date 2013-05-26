.class public Landroid/net/IConnectivityManagerProxy;
.super Ljava/lang/Object;
.source "IConnectivityManagerProxy.java"


# instance fields
.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/net/IConnectivityManagerProxy;->mService:Landroid/net/IConnectivityManager;

    .line 18
    return-void
.end method


# virtual methods
.method public startLegacyVpn([BLcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "encodedProfile"
    .parameter "config"
    .parameter "racoon"
    .parameter "mtpd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Landroid/net/IConnectivityManagerProxy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p2, p3, p4}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 28
    return-void
.end method
