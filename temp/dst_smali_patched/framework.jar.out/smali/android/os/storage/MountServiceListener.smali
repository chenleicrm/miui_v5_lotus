.class public abstract Landroid/os/storage/MountServiceListener;
.super Ljava/lang/Object;
.source "MountServiceListener.java"


# static fields
.field public static final EXTRA_STORAGE_ACTION:Ljava/lang/String; = "storageAction"

.field public static final MEDIA_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.intent.action.MEDIA_STATE_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onStorageStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    return-void
.end method

.method onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .parameter "connected"

    .prologue
    return-void
.end method
