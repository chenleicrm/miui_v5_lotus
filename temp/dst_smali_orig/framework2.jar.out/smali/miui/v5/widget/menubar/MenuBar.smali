.class public Lmiui/v5/widget/menubar/MenuBar;
.super Ljava/lang/Object;
.source "MenuBar.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/menubar/MenuBar$ItemInvoker;,
        Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;,
        Lmiui/v5/widget/menubar/MenuBar$Callback;
    }
.end annotation


# static fields
.field public static final MENU_BAR_MODE_COLLAPSE:I = 0x1

.field public static final MENU_BAR_MODE_EXPAND:I = 0x0

.field private static final MENU_BAR_STATE_CLOSED:I = 0x0

.field private static final MENU_BAR_STATE_CLOSING:I = 0x3

.field private static final MENU_BAR_STATE_OPENED:I = 0x2

.field private static final MENU_BAR_STATE_OPENING:I = 0x1


# instance fields
.field private mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

.field private mCloseMenuBarViewCount:I

.field protected mContext:Landroid/content/Context;

.field private mIsCreated:Z

.field private mIsPrepared:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field mMenuBarScrollHandler:Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

.field private mMenuBarState:I

.field mMenuPresenterCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

.field private mOpenMenuBarViewCount:I

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field protected mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    new-instance v0, Lmiui/v5/widget/menubar/MenuBar$1;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$1;-><init>(Lmiui/v5/widget/menubar/MenuBar;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarScrollHandler:Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

    new-instance v0, Lmiui/v5/widget/menubar/MenuBar$2;

    invoke-direct {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$2;-><init>(Lmiui/v5/widget/menubar/MenuBar;)V

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuPresenterCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmiui/v5/widget/menubar/MenuBar;FZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBar;->dispatchMenuBarScroll(FZZ)V

    return-void
.end method

.method static synthetic access$100(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    return v0
.end method

.method static synthetic access$110(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    return v0
.end method

.method static synthetic access$202(Lmiui/v5/widget/menubar/MenuBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    return p1
.end method

.method static synthetic access$300(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    return v0
.end method

.method static synthetic access$310(Lmiui/v5/widget/menubar/MenuBar;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    return v0
.end method

.method private dispatchMenuBarScroll(FZZ)V
    .locals 4
    .parameter "percent"
    .parameter "fromHasMenuBar"
    .parameter "toHasMenuBar"

    .prologue
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->stopDispatchingItemsChanged()V

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .local v1, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v1, :cond_1

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onScroll(FZZ)V

    goto :goto_1

    .end local v1           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .parameter "cleared"

    .prologue
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->stopDispatchingItemsChanged()V

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .local v1, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v1, :cond_1

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->updateMenuView(Z)V

    goto :goto_1

    .end local v1           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "ordering"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/v5/widget/menubar/MenuBarItem;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->getOrder()I

    move-result v2

    if-gt v2, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_1
    return v2

    .restart local v1       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findItemIndex(I)I
    .locals 3
    .parameter "id"

    .prologue
    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, size:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarItem;

    invoke-virtual {v2}, Lmiui/v5/widget/menubar/MenuBarItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .end local v0           #i:I
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .parameter "index"
    .parameter "updateChildrenOnMenuViews"

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v0}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    invoke-virtual {p0, p2, p3, p4}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmiui/v5/widget/menubar/MenuBar;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    new-instance v0, Lmiui/v5/widget/menubar/MenuBarItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lmiui/v5/widget/menubar/MenuBarItem;-><init>(Lmiui/v5/widget/menubar/MenuBar;IILjava/lang/CharSequence;)V

    .local v0, item:Lmiui/v5/widget/menubar/MenuBarItem;
    iget-object v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lmiui/v5/widget/menubar/MenuBar;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    return-object v0
.end method

.method public addMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V
    .locals 2
    .parameter "presenter"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lmiui/v5/widget/menubar/MenuBarPresenter;->initForMenu(Landroid/content/Context;Lmiui/v5/widget/menubar/MenuBar;)V

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuPresenterCallback:Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;

    invoke-interface {p1, v0}, Lmiui/v5/widget/menubar/MenuBarPresenter;->setCallback(Lmiui/v5/widget/menubar/MenuBarPresenter$Callback;)V

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 7
    .parameter "animate"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v6, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    const/4 v0, 0x0

    .local v0, handled:Z
    iput v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .local v2, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v2, :cond_2

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCloseMenuBarViewCount:I

    invoke-interface {v2, p0, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onCloseMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    goto :goto_1

    .end local v2           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_3
    if-nez v0, :cond_0

    iput v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    goto :goto_0
.end method

.method dispatchMenuClose()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelClose(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method dispatchMenuItemSelected(Lmiui/v5/widget/menubar/MenuBar;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p1, p2}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelItemSelected(Landroid/view/Menu;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchMenuModeChange(I)V
    .locals 1
    .parameter "mode"

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0, p1}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelModeChange(Landroid/view/Menu;I)V

    :cond_0
    return-void
.end method

.method dispatchMenuOpen()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onMenuBarPanelOpen(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public expand(Z)Z
    .locals 6
    .parameter "expand"

    .prologue
    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, handled:Z
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .local v2, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v2, :cond_2

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onExpandMenu(Lmiui/v5/widget/menubar/MenuBar;Z)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .parameter "id"

    .prologue
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->size()I

    move-result v2

    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_1
    return-object v1

    .restart local v1       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public getMenuBarSrollHandler()Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarScrollHandler:Lmiui/v5/widget/menubar/MenuBar$MenuBarScrollHandler;

    return-object v0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/v5/widget/menubar/MenuBarItem;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, itemsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmiui/v5/widget/menubar/MenuBarItem;->setTag(Ljava/lang/Object;)Landroid/view/MenuItem;

    goto :goto_1

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    return-object v3
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Lmiui/v5/widget/menubar/MenuBar;->size()I

    move-result v2

    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .local v1, item:Lmiui/v5/widget/menubar/MenuBarItem;
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :goto_1
    return v3

    .restart local v1       #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v0, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onPrepareMenuBarPanel(Landroid/view/Menu;)Z

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    iget v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method onItemVisibleChanged(Lmiui/v5/widget/menubar/MenuBarItem;)V
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    return-void
.end method

.method onItemsChanged(Z)V
    .locals 1
    .parameter "structureChanged"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lmiui/v5/widget/menubar/MenuBar;->dispatchPresenterUpdate(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->open(Z)V

    return-void
.end method

.method public open(Z)V
    .locals 7
    .parameter "animate"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v6, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    iput-boolean v6, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v4, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onPrepareMenuBarPanel(Landroid/view/Menu;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    :goto_1
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    const/4 v0, 0x0

    .local v0, handled:Z
    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    if-eqz v4, :cond_6

    iput v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .local v2, presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-nez v2, :cond_5

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #handled:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v4, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onCreateMenuBarPanel(Landroid/view/Menu;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    iget-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    invoke-interface {v4, p0}, Lmiui/v5/widget/menubar/MenuBar$Callback;->onPrepareMenuBarPanel(Landroid/view/Menu;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    goto :goto_1

    :cond_3
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    goto :goto_1

    :cond_4
    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    iput-boolean v5, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsPrepared:Z

    goto :goto_1

    .restart local v0       #handled:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .restart local v3       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_5
    const/4 v0, 0x1

    iget v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/v5/widget/menubar/MenuBar;->mOpenMenuBarViewCount:I

    invoke-interface {v2, p0, p1}, Lmiui/v5/widget/menubar/MenuBarPresenter;->onOpenMenu(Lmiui/v5/widget/menubar/MenuBar;Z)V

    goto :goto_2

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #presenter:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_6
    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lmiui/v5/widget/menubar/MenuBar;->close(Z)V

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 3
    .parameter "item"
    .parameter "flags"

    .prologue
    move-object v1, p1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarItem;

    .local v1, itemImpl:Lmiui/v5/widget/menubar/MenuBarItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lmiui/v5/widget/menubar/MenuBarItem;->invoke()Z

    move-result v0

    .local v0, invoked:Z
    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .locals 0
    .parameter "groupId"

    .prologue
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    invoke-direct {p0, p1}, Lmiui/v5/widget/menubar/MenuBar;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmiui/v5/widget/menubar/MenuBar;->removeItemAtInt(IZ)V

    return-void
.end method

.method public removeMenuPresenter(Lmiui/v5/widget/menubar/MenuBarPresenter;)V
    .locals 4
    .parameter "presenter"

    .prologue
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/v5/widget/menubar/MenuBarPresenter;

    .local v1, item:Lmiui/v5/widget/menubar/MenuBarPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    :cond_1
    iget-object v3, p0, Lmiui/v5/widget/menubar/MenuBar;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #item:Lmiui/v5/widget/menubar/MenuBarPresenter;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/v5/widget/menubar/MenuBarPresenter;>;"
    :cond_2
    return-void
.end method

.method public reopen()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->reopen(Z)V

    return-void
.end method

.method public reopen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mIsCreated:Z

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mMenuBarState:I

    invoke-virtual {p0, p1}, Lmiui/v5/widget/menubar/MenuBar;->open(Z)V

    return-void
.end method

.method public setCallback(Lmiui/v5/widget/menubar/MenuBar$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    iput-object p1, p0, Lmiui/v5/widget/menubar/MenuBar;->mCallback:Lmiui/v5/widget/menubar/MenuBar$Callback;

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 0
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 0
    .parameter "group"
    .parameter "enabled"

    .prologue
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 0
    .parameter "group"
    .parameter "visible"

    .prologue
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .parameter "isQwerty"

    .prologue
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    iget-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/widget/menubar/MenuBar;->onItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/v5/widget/menubar/MenuBar;->mItemsChangedWhileDispatchPrevented:Z

    :cond_0
    return-void
.end method
