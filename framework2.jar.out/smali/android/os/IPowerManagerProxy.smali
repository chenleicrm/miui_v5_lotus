.class public Landroid/os/IPowerManagerProxy;
.super Ljava/lang/Object;
.source "IPowerManagerProxy.java"


# instance fields
.field private mService:Landroid/os/IPowerManager;


# direct methods
.method public constructor <init>(Landroid/os/IPowerManager;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/os/IPowerManagerProxy;->mService:Landroid/os/IPowerManager;

    .line 15
    return-void
.end method


# virtual methods
.method public setAutoBrightnessAdjustment(F)V
    .locals 1
    .parameter "adj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Landroid/os/IPowerManagerProxy;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAutoBrightnessAdjustment(F)V

    .line 23
    return-void
.end method

.method public setBacklightBrightness(I)V
    .locals 1
    .parameter "brightness"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Landroid/os/IPowerManagerProxy;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 19
    return-void
.end method
