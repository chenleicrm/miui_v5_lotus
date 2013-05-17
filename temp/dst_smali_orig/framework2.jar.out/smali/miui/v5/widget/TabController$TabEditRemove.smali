.class Lmiui/v5/widget/TabController$TabEditRemove;
.super Ljava/lang/Object;
.source "TabController.java"

# interfaces
.implements Lmiui/v5/widget/TabController$TabEditCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/widget/TabController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabEditRemove"
.end annotation


# instance fields
.field private final mTab:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/v5/widget/TabController$TabEditRemove;->mTab:Landroid/app/ActionBar$Tab;

    return-void
.end method


# virtual methods
.method public execute(Lmiui/v5/widget/TabContainerLayout;Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/widget/TabController$DynamicPagerAdapter;Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)Z
    .locals 3
    .parameter "container"
    .parameter "pager"
    .parameter "adapter"
    .parameter "transaction"
    .parameter "fm"

    .prologue
    iget-object v2, p0, Lmiui/v5/widget/TabController$TabEditRemove;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p1, v2}, Lmiui/v5/widget/TabContainerLayout;->findTabPosition(Landroid/app/ActionBar$Tab;)I

    move-result v1

    .local v1, pos:I
    iget-object v2, p0, Lmiui/v5/widget/TabController$TabEditRemove;->mTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {p1, v2}, Lmiui/v5/widget/TabContainerLayout;->removeTab(Landroid/app/ActionBar$Tab;)Z

    invoke-virtual {p3, v1}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Lmiui/v5/widget/TabController$DynamicPagerAdapter;->removeFragment(Landroid/app/Fragment;)Z

    invoke-virtual {p4, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
