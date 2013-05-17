.class Lcom/android/internal/app/ResolverActivity$Injector$IconListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    .line 128
    .local v4, tag:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v0, v4, v5

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 129
    .local v0, activity:Lcom/android/internal/app/ResolverActivity;
    const/4 v5, 0x2

    aget-object v3, v4, v5

    check-cast v3, Ljava/lang/Integer;

    .line 130
    .local v3, position:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 131
    .local v1, always:Z
    const v5, 0x60b00a1

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 132
    .local v2, alwaysOption:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 135
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    .line 136
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 141
    .local v2, tag:[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v0, v2, v3

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 142
    .local v0, activity:Lcom/android/internal/app/ResolverActivity;
    aget-object v1, v2, v4

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 143
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 144
    return v4
.end method
