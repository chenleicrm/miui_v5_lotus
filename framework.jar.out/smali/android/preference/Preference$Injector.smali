.class Landroid/preference/Preference$Injector;
.super Ljava/lang/Object;
.source "Preference.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onBindView(Landroid/preference/Preference;Landroid/view/View;)V
    .locals 12
    .parameter "preference"
    .parameter "view"

    .prologue
    .line 562
    iget-object v5, p0, Landroid/preference/Preference;->mPreferenceParent:Landroid/preference/PreferenceGroup;

    .line 563
    .local v5, parent:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 564
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    .line 565
    .local v7, size:I
    if-eqz v7, :cond_0

    invoke-static {v1}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    instance-of v8, p0, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_3

    .line 570
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x60201ef

    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v8, 0x60201ee

    goto :goto_1

    .line 576
    :cond_3
    const v8, 0x60201f2

    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 578
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60a0036

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 580
    .local v4, paddingRight:I
    move v3, v4

    .line 581
    .local v3, paddingLeft:I
    invoke-virtual {p0}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 582
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x60a0033

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 585
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 586
    .local v0, bgDrawable:Landroid/graphics/drawable/StateListDrawable;
    if-eqz v0, :cond_5

    .line 587
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 588
    .local v2, padding:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 589
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    iget v9, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v4

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 592
    .end local v2           #padding:Landroid/graphics/Rect;
    :cond_5
    const v8, 0x60b0077

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 593
    .local v6, rightArrow:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 594
    invoke-virtual {p0}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const/16 v8, 0x8

    goto :goto_2
.end method
