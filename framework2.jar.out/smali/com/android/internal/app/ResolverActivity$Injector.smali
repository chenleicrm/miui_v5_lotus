.class Lcom/android/internal/app/ResolverActivity$Injector;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;,
        Lcom/android/internal/app/ResolverActivity$Injector$IconListener;
    }
.end annotation


# static fields
.field static sIconListener:Lcom/android/internal/app/ResolverActivity$Injector$IconListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/internal/app/ResolverActivity$Injector$IconListener;

    invoke-direct {v0}, Lcom/android/internal/app/ResolverActivity$Injector$IconListener;-><init>()V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$Injector;->sIconListener:Lcom/android/internal/app/ResolverActivity$Injector$IconListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method static addListener(Landroid/view/View;Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;I)V
    .locals 4
    .parameter "view"
    .parameter "activity"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 118
    invoke-virtual {p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 119
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    sget-object v1, Lcom/android/internal/app/ResolverActivity$Injector;->sIconListener:Lcom/android/internal/app/ResolverActivity$Injector$IconListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v1, Lcom/android/internal/app/ResolverActivity$Injector;->sIconListener:Lcom/android/internal/app/ResolverActivity$Injector$IconListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    return-void
.end method

.method static getMaxColumns(Lcom/android/internal/app/ResolverActivity;)I
    .locals 2
    .parameter "activity"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 112
    .local v0, rotation:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method static initialize(Lcom/android/internal/app/ResolverActivity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "alwaysUseOption"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const v3, 0x60b003d

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 85
    .local v1, cancel:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 86
    new-instance v3, Lcom/android/internal/app/ResolverActivity$Injector$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ResolverActivity$Injector$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    if-eqz p1, :cond_1

    .line 94
    const v3, 0x60b00a1

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 95
    .local v0, alwaysOption:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 97
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setAlwaysUseOption(Z)V

    .line 101
    .end local v0           #alwaysOption:Landroid/widget/CheckBox;
    :cond_1
    const v3, 0x60b0023

    invoke-static {p0, v3}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 103
    .local v2, grid:Landroid/widget/GridView;
    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 108
    .end local v1           #cancel:Landroid/widget/Button;
    .end local v2           #grid:Landroid/widget/GridView;
    :cond_2
    return-void
.end method

.method static loadIconForResolveInfo(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "activity"
    .parameter "ri"

    .prologue
    .line 79
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
