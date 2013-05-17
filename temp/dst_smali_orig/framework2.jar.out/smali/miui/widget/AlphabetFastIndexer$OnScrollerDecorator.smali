.class Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;
.super Ljava/lang/Object;
.source "AlphabetFastIndexer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AlphabetFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnScrollerDecorator"
.end annotation


# instance fields
.field private final mIndexerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/widget/AlphabetFastIndexer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Lmiui/widget/AlphabetFastIndexer;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .parameter "indexer"
    .parameter "l"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mIndexerRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mIndexerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .local v0, indexer:Lmiui/widget/AlphabetFastIndexer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/widget/AlphabetFastIndexer;->refreshMask()V

    :cond_0
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mIndexerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/widget/AlphabetFastIndexer;

    .local v0, indexer:Lmiui/widget/AlphabetFastIndexer;
    if-eqz v0, :cond_0

    iput p2, v0, Lmiui/widget/AlphabetFastIndexer;->mListScrollState:I

    :cond_0
    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/widget/AlphabetFastIndexer$OnScrollerDecorator;->mListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
