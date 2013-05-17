.class public Lmiui/v5/widget/PageScrollEffects;
.super Ljava/lang/Object;
.source "PageScrollEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;,
        Lmiui/v5/widget/PageScrollEffects$ScrollAnimation;,
        Lmiui/v5/widget/PageScrollEffects$SerialTicker;,
        Lmiui/v5/widget/PageScrollEffects$Ticker;,
        Lmiui/v5/widget/PageScrollEffects$TickerListener;,
        Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;
    }
.end annotation


# static fields
.field static final MAX_REFRESH_INTERVAL:J = 0x5L

.field static final MIN_REFRESH_DIFF:F = 0.001f

.field static final SCROLL_ANIMATION_DURATION:J = 0x64L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelPageScrollEffect(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public static makePageChangeAdapter(Lmiui/v5/android/support/view/ViewPager;Lmiui/v5/util/Factory;)Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;
    .locals 2
    .parameter "pager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/v5/android/support/view/ViewPager;",
            "Lmiui/v5/util/Factory",
            "<",
            "Lmiui/v5/widget/PageScrollEffect;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lmiui/v5/android/support/view/ViewPager$OnPageChangeListener;"
        }
    .end annotation

    .prologue
    .local p1, factory:Lmiui/v5/util/Factory;,"Lmiui/v5/util/Factory<Lmiui/v5/widget/PageScrollEffect;Ljava/lang/Integer;>;"
    new-instance v0, Lmiui/v5/widget/PageChangeAdapter;

    invoke-direct {v0, p0}, Lmiui/v5/widget/PageChangeAdapter;-><init>(Lmiui/v5/android/support/view/ViewPager;)V

    .local v0, adapter:Lmiui/v5/widget/PageChangeAdapter;
    new-instance v1, Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;

    invoke-direct {v1, p1}, Lmiui/v5/widget/PageScrollEffects$PageScrolledDispatcher;-><init>(Lmiui/v5/util/Factory;)V

    invoke-virtual {v0, v1}, Lmiui/v5/widget/PageChangeAdapter;->setScrolledListener(Lmiui/v5/widget/PageChangeAdapter$OnPageScrollListener;)V

    return-object v0
.end method

.method public static makePageScrollEffect(Landroid/view/ViewGroup;)Lmiui/v5/widget/PageScrollEffect;
    .locals 1
    .parameter "group"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/v5/widget/PageScrollEffects;->makePageScrollEffect(Landroid/view/ViewGroup;[I)Lmiui/v5/widget/PageScrollEffect;

    move-result-object v0

    return-object v0
.end method

.method public static makePageScrollEffect(Landroid/view/ViewGroup;[I)Lmiui/v5/widget/PageScrollEffect;
    .locals 1
    .parameter "group"
    .parameter "resIds"

    .prologue
    const/4 v0, 0x0

    .local v0, effect:Lmiui/v5/widget/PageScrollEffect;
    if-eqz p0, :cond_0

    new-instance v0, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;

    .end local v0           #effect:Lmiui/v5/widget/PageScrollEffect;
    invoke-direct {v0, p0}, Lmiui/v5/widget/PageScrollEffects$DefaultPageScrollEffect;-><init>(Landroid/view/ViewGroup;)V

    .restart local v0       #effect:Lmiui/v5/widget/PageScrollEffect;
    invoke-interface {v0, p0, p1}, Lmiui/v5/widget/PageScrollEffect;->attach(Landroid/view/ViewGroup;[I)Z

    :cond_0
    return-object v0
.end method
