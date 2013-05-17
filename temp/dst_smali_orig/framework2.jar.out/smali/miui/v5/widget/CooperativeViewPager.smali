.class public Lmiui/v5/widget/CooperativeViewPager;
.super Lmiui/v5/android/support/view/ViewPager;
.source "CooperativeViewPager.java"


# instance fields
.field private mDragEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Lmiui/v5/android/support/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/CooperativeViewPager;->mDragEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/v5/android/support/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/CooperativeViewPager;->mDragEnabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/CooperativeViewPager;->mDragEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/v5/android/support/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Lmiui/v5/widget/CooperativeViewPager;->mDragEnabled:Z

    return-void
.end method
