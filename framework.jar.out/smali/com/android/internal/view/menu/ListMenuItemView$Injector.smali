.class Lcom/android/internal/view/menu/ListMenuItemView$Injector;
.super Ljava/lang/Object;
.source "ListMenuItemView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkTextColor(Landroid/widget/TextView;Z)V
    .locals 2
    .parameter "titleView"
    .parameter "checked"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x601005a

    invoke-static {v0, v1}, Lmiui/util/UiUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static insertCheckBox(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/CheckBox;)Z
    .locals 7
    .parameter "v"
    .parameter "child"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 76
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 77
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 82
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, next:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    neg-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 86
    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 87
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 91
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    neg-int v5, v5

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v4, v6, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 92
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/4 v4, 0x1

    .line 96
    .end local v0           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #next:Landroid/view/View;
    :cond_1
    return v4

    .line 79
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v0       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0
.end method

.method static insertRadioButton(Lcom/android/internal/view/menu/ListMenuItemView;Landroid/widget/RadioButton;)Z
    .locals 7
    .parameter "v"
    .parameter "child"

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 44
    const v5, 0x602013e

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 45
    const/16 v5, 0xa

    invoke-virtual {p1, v4, v4, v5, v4}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 48
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 49
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 54
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ListMenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, next:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    neg-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 57
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 58
    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 59
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 63
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    const/4 v5, -0x1

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 65
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const/4 v4, 0x1

    .line 69
    .end local v0           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #next:Landroid/view/View;
    :cond_1
    return v4

    .line 51
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v0           #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v0       #layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_0
.end method
