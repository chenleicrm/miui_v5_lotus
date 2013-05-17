.class Lmiui/widget/IconPanelActivity$2;
.super Ljava/lang/Object;
.source "IconPanelActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/IconPanelActivity;->startCloseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/IconPanelActivity;


# direct methods
.method constructor <init>(Lmiui/widget/IconPanelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lmiui/widget/IconPanelActivity$2;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 306
    iget-object v0, p0, Lmiui/widget/IconPanelActivity$2;->this$0:Lmiui/widget/IconPanelActivity;

    invoke-virtual {v0}, Lmiui/widget/IconPanelActivity;->finish()V

    .line 307
    iget-object v0, p0, Lmiui/widget/IconPanelActivity$2;->this$0:Lmiui/widget/IconPanelActivity;

    sget v1, Lmiui/widget/IconPanelActivity;->STATUS_CLOSED:I

    invoke-virtual {v0, v1}, Lmiui/widget/IconPanelActivity;->setStatus(I)V

    .line 308
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 302
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 298
    return-void
.end method
