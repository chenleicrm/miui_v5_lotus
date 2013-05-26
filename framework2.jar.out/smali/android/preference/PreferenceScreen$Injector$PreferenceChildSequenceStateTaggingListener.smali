.class Landroid/preference/PreferenceScreen$Injector$PreferenceChildSequenceStateTaggingListener;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreferenceChildSequenceStateTaggingListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaggingFirstChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 8
    .parameter "parent"
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    .line 297
    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    .line 298
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 299
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 300
    .local v3, pos:I
    if-lez v3, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 301
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 302
    .local v1, cur:Ljava/lang/Object;
    add-int/lit8 v6, v3, -0x1

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 303
    .local v4, prev:Ljava/lang/Object;
    instance-of v6, v1, Landroid/preference/Preference;

    if-eqz v6, :cond_0

    instance-of v6, v4, Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 304
    check-cast v1, Landroid/preference/Preference;

    .end local v1           #cur:Ljava/lang/Object;
    iget-object v6, v1, Landroid/preference/Preference;->mPreferenceParent:Landroid/preference/PreferenceGroup;

    check-cast v4, Landroid/preference/Preference;

    .end local v4           #prev:Ljava/lang/Object;
    iget-object v7, v4, Landroid/preference/Preference;->mPreferenceParent:Landroid/preference/PreferenceGroup;

    if-eq v6, v7, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v5

    .line 304
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onTaggingLastChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 8
    .parameter "parent"
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    .line 312
    move-object v2, p1

    check-cast v2, Landroid/widget/ListView;

    .line 313
    .local v2, list:Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 314
    .local v4, pos:I
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 315
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-lez v4, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    .line 316
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 317
    .local v1, cur:Ljava/lang/Object;
    add-int/lit8 v6, v4, 0x1

    invoke-interface {v0, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 318
    .local v3, next:Ljava/lang/Object;
    instance-of v6, v1, Landroid/preference/Preference;

    if-eqz v6, :cond_0

    instance-of v6, v3, Landroid/preference/Preference;

    if-eqz v6, :cond_0

    .line 319
    check-cast v1, Landroid/preference/Preference;

    .end local v1           #cur:Ljava/lang/Object;
    iget-object v6, v1, Landroid/preference/Preference;->mPreferenceParent:Landroid/preference/PreferenceGroup;

    check-cast v3, Landroid/preference/Preference;

    .end local v3           #next:Ljava/lang/Object;
    iget-object v7, v3, Landroid/preference/Preference;->mPreferenceParent:Landroid/preference/PreferenceGroup;

    if-eq v6, v7, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v5

    .line 319
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
