.class Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;
.super Ljava/lang/Object;
.source "PageScrollEffects.java"

# interfaces
.implements Lmiui/v5/widget/PageScrollEffects$TickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/PageScrollEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollAnimation"
.end annotation


# instance fields
.field private mLeft:Z

.field private mListener:Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;

.field private final mRoot:Landroid/view/ViewGroup;

.field private final mSerialTicker:Lmiui/v5/widget/PageScrollEffects$SerialTicker;

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "root"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mLeft:Z

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mStarted:Z

    iput-object p1, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    new-instance v0, Lmiui/v5/widget/PageScrollEffects$SerialTicker;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2, p0}, Lmiui/v5/widget/PageScrollEffects$SerialTicker;-><init>(JLmiui/v5/widget/PageScrollEffects$TickerListener;)V

    iput-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mSerialTicker:Lmiui/v5/widget/PageScrollEffects$SerialTicker;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mSerialTicker:Lmiui/v5/widget/PageScrollEffects$SerialTicker;

    invoke-virtual {v0}, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->cancel()V

    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V

    invoke-virtual {p0}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->onComplete()V

    return-void
.end method

.method public onAbort(F)V
    .locals 0
    .parameter "percent"

    .prologue
    return-void
.end method

.method public onComplete()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mStarted:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mStarted:Z

    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mListener:Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mListener:Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;

    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;->onEffectFinished()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mStarted:Z

    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mListener:Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mListener:Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;

    invoke-interface {v0}, Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;->onEffectStarted()V

    goto :goto_0
.end method

.method public onUpdate(F)V
    .locals 4
    .parameter "percent"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mLeft:Z

    invoke-static {v0, v1, v2, p1, v3}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;->translateView(Landroid/view/ViewGroup;IIFZ)V

    return-void
.end method

.method public scrollTo(F)V
    .locals 1
    .parameter "percent"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mSerialTicker:Lmiui/v5/widget/PageScrollEffects$SerialTicker;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/PageScrollEffects$SerialTicker;->setPercent(F)V

    return-void
.end method

.method public setNavigator(Z)V
    .locals 1
    .parameter "isLeft"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mLeft:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mLeft:Z

    invoke-virtual {p0}, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;->mListener:Lmiui/v5/widget/PageScrollEffect$OnStateChangeListener;

    return-void
.end method
