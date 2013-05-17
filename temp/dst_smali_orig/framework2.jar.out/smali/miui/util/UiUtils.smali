.class public Lmiui/util/UiUtils;
.super Ljava/lang/Object;
.source "UiUtils.java"


# static fields
.field static final MIUI_TYPEFACE_FAMILY:Ljava/lang/String; = "miui"

.field static mFontsWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sActionBarOverlayHeight:I

.field static sCurrentTypefaces:[Landroid/graphics/Typeface;

.field static sSplitActionBarOverlayHeight:I

.field static sSplitActionMenuHeight:I

.field static sStateAttributeIndexes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sThemeChanged:I

.field static sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SimplePool$PoolInstance",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field static sViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    new-instance v0, Lmiui/util/UiUtils$1;

    invoke-direct {v0}, Lmiui/util/UiUtils$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/SimplePool;->newInsance(Lmiui/util/SimplePool$Manager;I)Lmiui/util/SimplePool$PoolInstance;

    move-result-object v0

    sput-object v0, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    sput v2, Lmiui/util/UiUtils;->sThemeChanged:I

    sput v2, Lmiui/util/UiUtils;->sSplitActionMenuHeight:I

    sput v2, Lmiui/util/UiUtils;->sActionBarOverlayHeight:I

    sput v2, Lmiui/util/UiUtils;->sSplitActionBarOverlayHeight:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/UiUtils;->sViewStates:Landroid/util/SparseArray;

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x101009c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x101009e

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x101009f

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a0

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a1

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a2

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a3

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a4

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a5

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a6

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a7

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10100a9

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x10102fe

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x6010039

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x6010036

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x6010038

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    const v1, 0x6010037

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    shl-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionBarOverlayHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/UiUtils;->updateHeightValuesSinceThemeChanged(Landroid/content/Context;)V

    sget v0, Lmiui/util/UiUtils;->sActionBarOverlayHeight:I

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;IZ)Z
    .locals 6
    .parameter "context"
    .parameter "attrId"
    .parameter "defValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v4, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v4}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .local v1, typedValue:Landroid/util/TypedValue;
    move v0, p2

    .local v0, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v1}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    return v0

    :cond_1
    iget v4, v1, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "attrId"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "attrId"

    .prologue
    invoke-static {p0, p1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v0

    .local v0, id:I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getIndexOfStates(I)I
    .locals 4
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .local v0, index:I
    if-eqz p0, :cond_1

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, value:Ljava/lang/Integer;
    if-nez v1, :cond_2

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "State attribute cannot exceed 32!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    sget-object v3, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    shl-int v0, v2, v3

    sget-object v2, Lmiui/util/UiUtils;->sStateAttributeIndexes:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v1           #value:Ljava/lang/Integer;
    :cond_1
    :goto_0
    return v0

    .restart local v1       #value:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static getIndexOfStates([I)I
    .locals 3
    .parameter "states"

    .prologue
    const/4 v1, 0x0

    .local v1, index:I
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2}, Lmiui/util/UiUtils;->getIndexOfStates(I)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    return v1
.end method

.method public static getMiuiUiVersion(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .local v0, ret:I
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .local v1, typedValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x6010026

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/util/TypedValue;->data:I

    :cond_0
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v1}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    return v0
.end method

.method public static getSplitActionBarOverlayHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/UiUtils;->updateHeightValuesSinceThemeChanged(Landroid/content/Context;)V

    sget v0, Lmiui/util/UiUtils;->sSplitActionBarOverlayHeight:I

    return v0
.end method

.method public static getSplitActionMenuHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/UiUtils;->updateHeightValuesSinceThemeChanged(Landroid/content/Context;)V

    sget v0, Lmiui/util/UiUtils;->sSplitActionMenuHeight:I

    return v0
.end method

.method public static getViewStates([II)[I
    .locals 6
    .parameter "states"
    .parameter "additional"

    .prologue
    const/4 v3, 0x0

    move-object v2, p0

    .local v2, newStates:[I
    if-eqz p1, :cond_1

    invoke-static {p0}, Lmiui/util/UiUtils;->getIndexOfStates([I)I

    move-result v4

    invoke-static {p1}, Lmiui/util/UiUtils;->getIndexOfStates(I)I

    move-result v5

    or-int v0, v4, v5

    .local v0, index:I
    sget-object v4, Lmiui/util/UiUtils;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #newStates:[I
    check-cast v2, [I

    .restart local v2       #newStates:[I
    if-nez v2, :cond_1

    if-eqz p0, :cond_2

    array-length v1, p0

    .local v1, length:I
    :goto_0
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [I

    if-eqz v1, :cond_0

    array-length v4, p0

    invoke-static {p0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    aput p1, v2, v1

    sget-object v3, Lmiui/util/UiUtils;->sViewStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0           #index:I
    .end local v1           #length:I
    :cond_1
    return-object v2

    .restart local v0       #index:I
    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public static isFloatingWindowAllowed(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public static isV5Ui(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/UiUtils;->getMiuiUiVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 7
    .parameter "context"
    .parameter "oldTypeface"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, newTypeface:Landroid/graphics/Typeface;
    invoke-static {p0}, Lmiui/util/UiUtils;->usingMiuiFonts(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eq p1, v3, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-eq p1, v3, :cond_0

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    if-ne p1, v3, :cond_3

    :cond_0
    sget-object v3, Lmiui/util/UiUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_2

    const-class v4, Lmiui/util/UiUtils;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lmiui/util/UiUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    if-nez v3, :cond_1

    const/4 v3, 0x4

    new-array v2, v3, [Landroid/graphics/Typeface;

    .local v2, typefaces:[Landroid/graphics/Typeface;
    const/4 v3, 0x0

    const-string v5, "miui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "miui"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "miui"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "miui"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    aput-object v5, v2, v3

    sput-object v2, Lmiui/util/UiUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    .end local v2           #typefaces:[Landroid/graphics/Typeface;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez p1, :cond_4

    .local v1, style:I
    :goto_0
    sget-object v3, Lmiui/util/UiUtils;->sCurrentTypefaces:[Landroid/graphics/Typeface;

    aget-object v0, v3, v1

    .end local v1           #style:I
    :cond_3
    if-nez v0, :cond_5

    .end local p1
    :goto_1
    return-object p1

    .restart local p1
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_0

    :cond_5
    move-object p1, v0

    goto :goto_1
.end method

.method public static resolveAttribute(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "attrId"

    .prologue
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2}, Lmiui/util/SimplePool$PoolInstance;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TypedValue;

    .local v1, typedValue:Landroid/util/TypedValue;
    const/4 v0, -0x1

    .local v0, ret:I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    sget-object v2, Lmiui/util/UiUtils;->sTypedValuePool:Lmiui/util/SimplePool$PoolInstance;

    invoke-virtual {v2, v1}, Lmiui/util/SimplePool$PoolInstance;->release(Ljava/lang/Object;)V

    return v0
.end method

.method private static updateHeightValuesSinceThemeChanged(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    sget v2, Lmiui/util/UiUtils;->sThemeChanged:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v3, v3, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v2, v2, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    sput v2, Lmiui/util/UiUtils;->sThemeChanged:I

    sput v4, Lmiui/util/UiUtils;->sSplitActionMenuHeight:I

    sput v4, Lmiui/util/UiUtils;->sActionBarOverlayHeight:I

    sput v4, Lmiui/util/UiUtils;->sSplitActionBarOverlayHeight:I

    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x6010044

    invoke-static {p0, v2}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, padding:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sput v2, Lmiui/util/UiUtils;->sSplitActionMenuHeight:I

    .end local v1           #padding:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lmiui/util/UiUtils;->sActionBarOverlayHeight:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x60a003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lmiui/util/UiUtils;->sSplitActionBarOverlayHeight:I

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public static usingMiuiFonts(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.UCMobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qzone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qvod.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.kugou.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.youku.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sds.android.ttpod"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo.appstore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.pplive.androidphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.minihd.qq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "tv.pps.mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.channel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.shuqi.controller"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.storm.smart"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qbx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.moji.mjweather"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.wandoujia.phoenix2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.renren.mobile.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.duokan.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qiyi.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.WBlog"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "qsbk.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.netease.newsreader.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sohu.newsclient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.mtt"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.tieba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.wochacha"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.shop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mt.mtxx.mtxx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.mobilesafe.opti.powerctl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.dragon.android.pandaspace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.etouch.ecalendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.changba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.chaozh.iReaderFree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.snda.wifilocating"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.duowan.mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.hiapk.marketpho"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.launcher"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.mobilesafe.opti"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.com.fetion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.nd.android.pandahome2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.youdao.dict"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.kuwo.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.wps.moffice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.alibaba.mobileim"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.letv.android.client"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.searchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.funshion.video.mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.gau.go.launcherex"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qq.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.duomi.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.meitu.meiyancamera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.nd.android.pandareader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.kingsoft"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.cleanmaster.mguard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sohu.sohuvideo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "bubei.tingshu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.alipay.android.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "vStudio.Android.Camera360"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.androidesk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ss.android.article.news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "org.funship.findsomething.withRK"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mybook66"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.token"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tmall.wireless"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqgame.qqlordwvga"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.budejie.www"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sankuai.meituan"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.kascend.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.android.pad"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.muzhiwan.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mymoney"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.browser.apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.geili.koudai"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.androidqqmail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.myzaker.ZAKER_Phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ifeng.news2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.handsgo.jiakao.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.hexin.plat.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqphonebook"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "my.beautyCamera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.cubic.autohome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.clov4r.android.nil"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.yangzhibin.chengrenxiaohua"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.dianxinos.powermanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ijinshan.duba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.wuba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "sina.mobile.tianqitong"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mandi.lol"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.duowan.lolbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.chinamworld.main"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ss.android.essay.joke"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "air.com.tencent.qqpasture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.kingreader.framework"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.ibuka.manga.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ting.mp3.qianqian.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.jiubang.goscreenlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.shoujiduoduo.ringtone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.lbe.security"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.snda.youni"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.jiasoft.swreader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.anyview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baidu.appsearch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sohu.inputmethod.sogou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.zdworks.android.zdclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "dopool.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.uc.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ijinshan.mguard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "bdmobile.android.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.alensw.PicFolder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.topic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.oupeng.mini.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qihoo360.launcher.screenlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.meilishuo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.qidian.QDReader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.research.drop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sinovatech.unicom.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.dianping.v1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.yx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.dianxinos.dxhome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.yiche.price"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.iBookStar.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.dazhihui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.wps.moffice_eng"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.taobao.wwseller"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.icbc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.chinabus.main"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ganji.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ting.mp3.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.hy.minifetion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mogujie"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.baozoumanhua.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.calendar.UI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.wacai365"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.cnvcs.junqi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.cntv"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xunlei.kankan"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xikang.android.slimcoach"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.thunder.ktvdaren"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.goapk.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.htjyb.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.blovestorm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "me.papa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.when.android.calendar365"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.android.wallpaper.livepicker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.vancl.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.netease.mkey"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.youba.barcode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.hupu.games"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.kandian.vodapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.dewmobile.kuaiya"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.anguanjia.safe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tudou.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cmb.pb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.weico.sinaweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.ireadercity.b2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cn.wps.livespace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.estrongs.android.pop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.disney.WMW"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tuan800.tao800"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.byread.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "me.imid.fuubo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.lingdong.client.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mop.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.sina.mfweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "cld.navi.mainframe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mappn.gfan"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.pengyou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.xunlei.downloadprovider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.tencent.android.qqdownloader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    const-string v1, "com.mx.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lmiui/util/UiUtils;->mFontsWhiteList:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method
