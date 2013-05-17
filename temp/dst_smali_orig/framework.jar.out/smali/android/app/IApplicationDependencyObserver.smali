.class public interface abstract Landroid/app/IApplicationDependencyObserver;
.super Ljava/lang/Object;
.source "IApplicationDependencyObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationDependencyObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDependencyAdded(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDependencyRemoved(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
