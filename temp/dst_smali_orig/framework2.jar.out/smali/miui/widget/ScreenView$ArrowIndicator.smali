.class public Lmiui/widget/ScreenView$ArrowIndicator;
.super Landroid/widget/ImageView;
.source "ScreenView.java"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ArrowIndicator"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lmiui/widget/ScreenView$ArrowIndicator;->this$0:Lmiui/widget/ScreenView;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fastOffset(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    iget v0, p0, Lmiui/widget/ScreenView$ArrowIndicator;->mLeft:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lmiui/widget/ScreenView$ArrowIndicator;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView$ArrowIndicator;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView$ArrowIndicator;->mRight:I

    iput p1, p0, Lmiui/widget/ScreenView$ArrowIndicator;->mLeft:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
