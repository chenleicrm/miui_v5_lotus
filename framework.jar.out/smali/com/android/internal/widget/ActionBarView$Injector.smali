.class Lcom/android/internal/widget/ActionBarView$Injector;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createActionMenuPresenter(Landroid/content/Context;)Lcom/android/internal/view/menu/ActionMenuPresenter;
    .locals 4
    .parameter "context"

    .prologue
    .line 114
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;

    const v1, 0x6030020

    const v2, 0x603001d

    const v3, 0x603001f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/internal/v5/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;III)V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static getUpViewVisibility(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/view/View;)I
    .locals 2
    .parameter "homeView"
    .parameter "upView"

    .prologue
    const/16 v0, 0x8

    .line 107
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 2
    .parameter "homeView"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 77
    .local v0, iconView:Landroid/widget/ImageView;
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "homeView"
    .parameter "icon"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-static {p0}, Lcom/android/internal/widget/ActionBarView$Injector;->setIcon(Lcom/android/internal/widget/ActionBarView$HomeView;)V

    .line 87
    return-void
.end method

.method static switchToCompactMode(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 7
    .parameter "homeView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpView()Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, upView:Landroid/view/View;
    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 96
    check-cast v1, Landroid/widget/ImageView;

    .end local v1           #upView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v2, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    .line 104
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    move v2, v3

    .line 98
    goto :goto_0

    .line 101
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mCompactMode:Z

    goto :goto_1
.end method
