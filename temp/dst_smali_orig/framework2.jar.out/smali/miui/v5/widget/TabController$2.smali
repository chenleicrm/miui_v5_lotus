.class Lmiui/v5/widget/TabController$2;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/v5/widget/TabController;


# direct methods
.method constructor <init>(Lmiui/v5/widget/TabController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iput p1, v0, Lmiui/v5/widget/TabController;->mViewPagerState:I

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mTabIndicator:Lmiui/v5/widget/TabIndicator;

    invoke-interface {v0, p1, p2}, Lmiui/v5/widget/TabIndicator;->apply(IF)F

    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mTabContainer:Lmiui/v5/widget/TabContainerLayout;

    invoke-virtual {v0}, Lmiui/v5/widget/TabContainerLayout;->findCurrentTabPos()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabController;->selectTab(I)Z

    :cond_0
    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    invoke-virtual {v0, p1}, Lmiui/v5/widget/TabController;->invalideFragmentMenu(I)V

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/v5/widget/TabController$2;->this$0:Lmiui/v5/widget/TabController;

    iget-object v0, v0, Lmiui/v5/widget/TabController;->mViewPagerListener:Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_1
    return-void
.end method
