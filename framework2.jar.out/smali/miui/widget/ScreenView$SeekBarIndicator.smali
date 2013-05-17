.class public Lmiui/widget/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "ScreenView.java"

# interfaces
.implements Lmiui/widget/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarIndicator"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ScreenView;


# direct methods
.method public constructor <init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 453
    iput-object p1, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->this$0:Lmiui/widget/ScreenView;

    .line 454
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 455
    return-void
.end method


# virtual methods
.method public fastOffset(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 459
    iget v0, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->mLeft:I

    if-eq v0, p1, :cond_0

    .line 460
    iget v0, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->mRight:I

    .line 461
    iput p1, p0, Lmiui/widget/ScreenView$SeekBarIndicator;->mLeft:I

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
