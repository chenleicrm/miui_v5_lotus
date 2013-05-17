.class Landroid/preference/PreferenceScreen$Injector;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$Injector$PreferenceChildSequenceStateTaggingListener;
    }
.end annotation


# static fields
.field static sChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Landroid/preference/PreferenceScreen$Injector$PreferenceChildSequenceStateTaggingListener;

    invoke-direct {v0}, Landroid/preference/PreferenceScreen$Injector$PreferenceChildSequenceStateTaggingListener;-><init>()V

    sput-object v0, Landroid/preference/PreferenceScreen$Injector;->sChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    return-void
.end method

.method static addHeaderView(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V
    .locals 6
    .parameter "listView"
    .parameter "listAdapter"

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 335
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Landroid/preference/PreferenceCategory;

    if-nez v4, :cond_0

    .line 338
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, headView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x60a0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 341
    .local v1, height:I
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 342
    .local v2, params:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static bind(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, 0x0

    .line 347
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x60a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 352
    .local v0, paddingBottom:I
    invoke-virtual {p0, v3, v3, v3, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 353
    sget-object v1, Landroid/preference/PreferenceScreen$Injector;->sChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setChildSequenceStateTaggingListener(Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;)V

    goto :goto_0
.end method
