.class Lmiui/cache/AsyncLIFORequestManager$3;
.super Landroid/os/Handler;
.source "AsyncLIFORequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cache/AsyncLIFORequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cache/AsyncLIFORequestManager;


# direct methods
.method constructor <init>(Lmiui/cache/AsyncLIFORequestManager;)V
    .locals 0
    .parameter

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$3;,"Lmiui/cache/AsyncLIFORequestManager.3;"
    iput-object p1, p0, Lmiui/cache/AsyncLIFORequestManager$3;->this$0:Lmiui/cache/AsyncLIFORequestManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .local p0, this:Lmiui/cache/AsyncLIFORequestManager$3;,"Lmiui/cache/AsyncLIFORequestManager.3;"
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/cache/AsyncLIFORequestManager$Response;

    .local v0, holder:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    iget-object v1, p0, Lmiui/cache/AsyncLIFORequestManager$3;->this$0:Lmiui/cache/AsyncLIFORequestManager;

    invoke-virtual {v1, v0}, Lmiui/cache/AsyncLIFORequestManager;->onComputeCompleted(Lmiui/cache/AsyncLIFORequestManager$Response;)V

    iget-object v1, p0, Lmiui/cache/AsyncLIFORequestManager$3;->this$0:Lmiui/cache/AsyncLIFORequestManager;

    iget-object v1, v1, Lmiui/cache/AsyncLIFORequestManager;->mResponsePool:Landroid/util/Pool;

    invoke-interface {v1, v0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .end local v0           #holder:Lmiui/cache/AsyncLIFORequestManager$Response;,"Lmiui/cache/AsyncLIFORequestManager$Response<TK;TV;>;"
    :cond_0
    return-void
.end method
