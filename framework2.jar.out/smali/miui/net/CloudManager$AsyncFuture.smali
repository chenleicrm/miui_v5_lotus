.class final Lmiui/net/CloudManager$AsyncFuture;
.super Ljava/util/concurrent/FutureTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 878
    .local p0, this:Lmiui/net/CloudManager$AsyncFuture;,"Lmiui/net/CloudManager$AsyncFuture<TV;>;"
    new-instance v0, Lmiui/net/CloudManager$AsyncFuture$1;

    invoke-direct {v0}, Lmiui/net/CloudManager$AsyncFuture$1;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 885
    return-void
.end method


# virtual methods
.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 888
    .local p0, this:Lmiui/net/CloudManager$AsyncFuture;,"Lmiui/net/CloudManager$AsyncFuture<TV;>;"
    .local p1, result:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1}, Lmiui/net/CloudManager$AsyncFuture;->set(Ljava/lang/Object;)V

    .line 889
    return-void
.end method
