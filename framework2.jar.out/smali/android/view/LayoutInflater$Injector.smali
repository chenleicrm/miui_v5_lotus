.class Landroid/view/LayoutInflater$Injector;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static sLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLayoutPairs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/LayoutInflater$Injector;->sLayoutPairs:[I

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x9t 0x1t
        0x4ct 0x0t 0x3t 0x6t
        0x5ct 0x0t 0x3t 0x6t
        0x4et 0x0t 0x3t 0x6t
        0x9t 0x0t 0x9t 0x1t
        0x4bt 0x0t 0x3t 0x6t
        0x5dt 0x0t 0x3t 0x6t
        0x71t 0x0t 0x1t 0x6t
        0x5et 0x0t 0x3t 0x6t
        0x85t 0x0t 0x1t 0x6t
        0x5ft 0x0t 0x3t 0x6t
        0x3et 0x0t 0x3t 0x6t
        0x60t 0x0t 0x3t 0x6t
        0x3ft 0x0t 0x3t 0x6t
        0x64t 0x0t 0x3t 0x6t
        0x65t 0x0t 0x3t 0x6t
        0x63t 0x0t 0x3t 0x6t
        0x66t 0x0t 0x3t 0x6t
        0x74t 0x0t 0x3t 0x6t
        0x75t 0x0t 0x3t 0x6t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildLayoutMap(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 93
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutMap:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    const-class v3, Landroid/view/LayoutInflater$Injector;

    monitor-enter v3

    .line 98
    :try_start_0
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutMap:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 99
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutMap:Landroid/util/SparseArray;

    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutPairs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 101
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutPairs:[I

    aget v2, v2, v0

    invoke-static {v2}, Landroid/view/LayoutInflater$Injector;->needResolveReference(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutPairs:[I

    aget v2, v2, v0

    invoke-static {p0, v2}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v1

    .line 103
    .local v1, index:I
    :goto_2
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutMap:Landroid/util/SparseArray;

    sget-object v4, Landroid/view/LayoutInflater$Injector;->sLayoutPairs:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 101
    .end local v1           #index:I
    :cond_1
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutPairs:[I

    aget v1, v2, v0

    goto :goto_2

    .line 106
    .end local v0           #i:I
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getResourceId(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 110
    move v1, p1

    .line 111
    .local v1, newResource:I
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-static {p0}, Landroid/view/LayoutInflater$Injector;->buildLayoutMap(Landroid/content/Context;)V

    .line 113
    sget-object v2, Landroid/view/LayoutInflater$Injector;->sLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    .local v0, layout:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    invoke-static {v1}, Landroid/view/LayoutInflater$Injector;->isMiuiAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-static {p0, v1}, Lmiui/util/UiUtils;->resolveAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 118
    if-gtz v1, :cond_0

    .line 119
    move v1, p1

    .line 124
    .end local v0           #layout:Ljava/lang/Integer;
    :cond_0
    return v1
.end method

.method static isMiuiAttribute(I)Z
    .locals 2
    .parameter "layoutId"

    .prologue
    .line 89
    const/high16 v0, 0xff

    and-int/2addr v0, p0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static needResolveReference(I)Z
    .locals 2
    .parameter "layoutId"

    .prologue
    .line 85
    const/high16 v0, -0x100

    and-int/2addr v0, p0

    const/high16 v1, 0x100

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
