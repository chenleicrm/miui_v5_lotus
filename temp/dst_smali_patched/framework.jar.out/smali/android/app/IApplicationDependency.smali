.class public interface abstract Landroid/app/IApplicationDependency;
.super Ljava/lang/Object;
.source "IApplicationDependency.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationDependency$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDependencyForUid(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setObserver(Landroid/app/IApplicationDependencyObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
