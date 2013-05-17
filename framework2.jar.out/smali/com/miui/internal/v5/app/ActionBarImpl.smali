.class public Lcom/miui/internal/v5/app/ActionBarImpl;
.super Lcom/android/internal/app/ActionBarImpl;
.source "ActionBarImpl.java"

# interfaces
.implements Lmiui/v5/app/MiuiActionBar;
.implements Lmiui/v5/view/DefaultActionMode$ActionModeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;,
        Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field static final sLisenter:Landroid/app/ActionBar$TabListener;


# instance fields
.field private mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

.field private mCurrentActionModeView:Lcom/miui/internal/v5/view/ActionModeView;

.field private mDecor:Landroid/view/ViewGroup;

.field private mDimView:Landroid/view/View;

.field private mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    new-instance v0, Lcom/miui/internal/v5/app/ActionBarImpl$2;

    invoke-direct {v0}, Lcom/miui/internal/v5/app/ActionBarImpl$2;-><init>()V

    sput-object v0, Lcom/miui/internal/v5/app/ActionBarImpl;->sLisenter:Landroid/app/ActionBar$TabListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Activity;)V

    .line 49
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->init(Landroid/view/Window;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    .line 54
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->init(Landroid/view/Window;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/v5/app/ActionBarImpl;)Lmiui/v5/view/DefaultActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/v5/app/ActionBarImpl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getContainerView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/v5/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public static getActionBarByView(Landroid/view/View;)Lcom/miui/internal/v5/app/ActionBarImpl;
    .locals 1
    .parameter "view"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->getActionBar()Lcom/miui/internal/v5/app/ActionBarImpl;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mWindow:Landroid/view/Window;

    .line 152
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDecor:Landroid/view/ViewGroup;

    .line 153
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDecor:Landroid/view/ViewGroup;

    const v1, 0x60b00a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDimView:Landroid/view/View;

    .line 155
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v0, p0}, Lcom/miui/internal/v5/widget/ActionBarView;->setActionBar(Lcom/miui/internal/v5/app/ActionBarImpl;)V

    .line 156
    return-void
.end method


# virtual methods
.method public addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I
    .locals 6
    .parameter "tag"
    .parameter "tab"
    .parameter
    .parameter "args"
    .parameter "hasActionMenu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, fragment:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/v5/app/ViewPagerController;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    .line 231
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 306
    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 2
    .parameter "tab"
    .parameter "position"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;I)V

    .line 335
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 346
    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 324
    return-void

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add tab directly in fragment view pager mode!\n Please using addFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createActionMode(Landroid/view/ActionMode$Callback;)Lmiui/v5/view/DefaultActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 113
    instance-of v0, p1, Lmiui/v5/view/SearchActionMode$Callback;

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lmiui/v5/view/SearchActionMode;

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lmiui/v5/view/SearchActionMode$Callback;

    .end local p1
    invoke-direct {v0, v1, p1}, Lmiui/v5/view/SearchActionMode;-><init>(Landroid/content/Context;Lmiui/v5/view/SearchActionMode$Callback;)V

    .line 116
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    new-instance v0, Lmiui/v5/view/EditActionMode;

    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lmiui/v5/view/EditActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method public createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/v5/view/ActionModeView;
    .locals 5
    .parameter "callback"

    .prologue
    .line 121
    instance-of v2, p1, Lmiui/v5/view/SearchActionMode$Callback;

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 123
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x6030043

    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDecor:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/widget/SearchActionModeView;

    .line 125
    .local v1, view:Lcom/miui/internal/v5/widget/SearchActionModeView;
    iget-object v2, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    new-instance v2, Lcom/miui/internal/v5/app/ActionBarImpl$1;

    invoke-direct {v2, p0}, Lcom/miui/internal/v5/app/ActionBarImpl$1;-><init>(Lcom/miui/internal/v5/app/ActionBarImpl;)V

    invoke-virtual {v1, v2}, Lcom/miui/internal/v5/widget/SearchActionModeView;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Lcom/miui/internal/v5/widget/SearchActionModeView;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getContextView()Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/v5/view/ActionModeView;

    move-object v1, v2

    goto :goto_0
.end method

.method public getDimAnimator(ZLandroid/view/View$OnClickListener;)Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;
    .locals 1
    .parameter "fromActionBar"
    .parameter "listener"

    .prologue
    .line 179
    new-instance v0, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/internal/v5/app/ActionBarImpl$DimAnimator;-><init>(Lcom/miui/internal/v5/app/ActionBarImpl;ZLandroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public getFragmentAt(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentTabCount()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ViewPagerController;->getFragmentTabCount()I

    move-result v0

    return v0
.end method

.method public getTertiaryTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->getTertiaryTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewPagerOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ViewPagerController;->getViewPagerOffscreenPageLimit()I

    move-result v0

    return v0
.end method

.method getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method internalAddTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method internalRemoveAllTabs()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/internal/app/ActionBarImpl;->removeAllTabs()V

    .line 405
    return-void
.end method

.method internalRemoveTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 369
    return-void
.end method

.method internalRemoveTabAt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->removeTabAt(I)V

    .line 387
    return-void
.end method

.method public isFragmentViewPagerMode()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method miuiAnimateToMode(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getTabScrollView()Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;

    .line 98
    .local v0, tabScrollView:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    if-eqz v0, :cond_0

    .line 100
    if-nez p1, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->bringToFront()V

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionModeView:Lcom/miui/internal/v5/view/ActionModeView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Lcom/miui/internal/v5/view/ActionModeView;->animateToVisibility(I)V

    .line 106
    if-eqz p1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionModeView:Lcom/miui/internal/v5/view/ActionModeView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 110
    :cond_1
    return-void

    .line 105
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;-><init>(Lcom/miui/internal/v5/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onActionModeFinish(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->miuiAnimateToMode(Z)V

    .line 144
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    if-ne p1, v0, :cond_0

    .line 145
    iput-object v1, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    .line 146
    iput-object v1, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionModeView:Lcom/miui/internal/v5/view/ActionModeView;

    .line 148
    :cond_0
    return-void
.end method

.method public onWindowHide()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->onWindowHide()V

    .line 176
    return-void
.end method

.method public onWindowShow()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->onWindowShow()V

    .line 172
    return-void
.end method

.method public removeAllFragmentTab()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0}, Lcom/miui/internal/v5/app/ViewPagerController;->removeAllFragmentTab()V

    .line 276
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-super {p0}, Lcom/android/internal/app/ActionBarImpl;->removeAllTabs()V

    .line 393
    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove tab directly in fragment view pager mode!\n Please using removeAllFragmentTabs()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFragmentTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->removeFragmentTab(Landroid/app/ActionBar$Tab;)V

    .line 266
    return-void
.end method

.method public removeFragmentTab(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->removeFragment(Landroid/app/Fragment;)V

    .line 271
    return-void
.end method

.method public removeFragmentTab(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->removeFragmentTab(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public removeFragmentTabAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->removeFragmentAt(I)V

    .line 256
    return-void
.end method

.method public removeOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->removeOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    .line 236
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->removeTab(Landroid/app/ActionBar$Tab;)V

    .line 357
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove tab directly in fragment view pager mode!\n Please using removeFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    invoke-super {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->removeTabAt(I)V

    .line 375
    return-void

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove tab directly in fragment view pager mode!\n Please using removeFragmentTab()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFragmentActionMenuAt(IZ)V
    .locals 1
    .parameter "position"
    .parameter "hasActionMenu"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/v5/app/ViewPagerController;->setFragmentActionMenuAt(IZ)V

    .line 281
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "context"
    .parameter "fm"

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V

    .line 210
    return-void
.end method

.method public setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;Z)V
    .locals 2
    .parameter "context"
    .parameter "fm"
    .parameter "allowListAnimation"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->removeAllTabs()V

    .line 219
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/app/ActionBarImpl;->setNavigationMode(I)V

    .line 220
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getTabScrollView()Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;

    .line 221
    .local v0, scrollingTabContainerView:Lcom/miui/internal/v5/widget/ScrollingTabContainerView;
    new-instance v1, Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-direct {v1, p0, p2, p3}, Lcom/miui/internal/v5/app/ViewPagerController;-><init>(Lcom/miui/internal/v5/app/ActionBarImpl;Landroid/app/FragmentManager;Z)V

    iput-object v1, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    .line 222
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->isFragmentViewPagerMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/v5/widget/ScrollingTabContainerView;->setFragmentViewPagerMode(Z)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/v5/widget/ActionBarContainer;

    invoke-virtual {p0, v1}, Lcom/miui/internal/v5/app/ActionBarImpl;->addOnFragmentViewPagerChangeListener(Lmiui/v5/app/MiuiActionBar$FragmentViewPagerChangeListener;)V

    goto :goto_0
.end method

.method public setTertiaryTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/internal/v5/app/ActionBarImpl;->setTertiaryTitle(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public setTertiaryTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/widget/ActionBarView;->setTertiaryTitle(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public setViewPagerOffscreenPageLimit(I)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mViewPagerController:Lcom/miui/internal/v5/app/ViewPagerController;

    invoke-virtual {v0, p1}, Lcom/miui/internal/v5/app/ViewPagerController;->setViewPagerOffscreenPageLimit(I)V

    .line 291
    return-void
.end method

.method public showActionBarShadow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mDecor:Landroid/view/ViewGroup;

    const v1, 0x60b009c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void

    .line 199
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSplitActionBar(ZZ)V
    .locals 2
    .parameter "show"
    .parameter "animation"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionView()Lcom/android/internal/widget/ActionBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 162
    .local v0, split:Lcom/miui/internal/v5/widget/ActionBarContainer;
    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {v0, p2}, Lcom/miui/internal/v5/widget/ActionBarContainer;->show(Z)V

    .line 168
    .end local v0           #split:Lcom/miui/internal/v5/widget/ActionBarContainer;
    :cond_0
    :goto_0
    return-void

    .line 165
    .restart local v0       #split:Lcom/miui/internal/v5/widget/ActionBarContainer;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/miui/internal/v5/widget/ActionBarContainer;->hide(Z)V

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 6
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getSplitView()Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v2

    check-cast v2, Lcom/miui/internal/v5/widget/ActionBarContainer;

    .line 60
    .local v2, splitView:Lcom/miui/internal/v5/widget/ActionBarContainer;
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getContextDisplayMode()I

    move-result v0

    .line 61
    .local v0, contextDisplayMode:I
    invoke-virtual {p0}, Lcom/miui/internal/v5/app/ActionBarImpl;->getActionBarOverlayLayout()Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v1

    .line 63
    .local v1, overlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    invoke-virtual {v3}, Lmiui/v5/view/DefaultActionMode;->finish()V

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->createActionMode(Landroid/view/ActionMode$Callback;)Lmiui/v5/view/DefaultActionMode;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    .line 68
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    invoke-virtual {v3, p0}, Lmiui/v5/view/DefaultActionMode;->setActionModeCallback(Lmiui/v5/view/DefaultActionMode$ActionModeCallback;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/miui/internal/v5/app/ActionBarImpl;->createActionModeView(Landroid/view/ActionMode$Callback;)Lcom/miui/internal/v5/view/ActionModeView;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionModeView:Lcom/miui/internal/v5/view/ActionModeView;

    .line 70
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    iget-object v4, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionModeView:Lcom/miui/internal/v5/view/ActionModeView;

    invoke-virtual {v3, v4}, Lmiui/v5/view/DefaultActionMode;->setActionModeView(Lcom/miui/internal/v5/view/ActionModeView;)V

    .line 72
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    invoke-virtual {v3}, Lmiui/v5/view/DefaultActionMode;->dispatchOnCreate()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    invoke-virtual {v3}, Lmiui/v5/view/DefaultActionMode;->invalidate()V

    .line 74
    invoke-virtual {p0, v5}, Lcom/miui/internal/v5/app/ActionBarImpl;->miuiAnimateToMode(Z)V

    .line 75
    if-eqz v2, :cond_1

    if-ne v0, v5, :cond_1

    .line 77
    invoke-virtual {v2}, Lcom/miui/internal/v5/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/internal/v5/widget/ActionBarContainer;->setVisibility(I)V

    .line 79
    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 85
    :cond_1
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    .line 92
    :goto_0
    return-object v3

    .line 88
    :cond_2
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    if-eqz v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/miui/internal/v5/app/ActionBarImpl;->mCurrentActionMode:Lmiui/v5/view/DefaultActionMode;

    invoke-virtual {v3}, Lmiui/v5/view/DefaultActionMode;->finish()V

    .line 92
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
