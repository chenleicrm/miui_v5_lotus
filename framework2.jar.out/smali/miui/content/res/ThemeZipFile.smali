.class public final Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_THEME_VALUE_FILE:Ljava/lang/String; = "theme_values%s.xml"

.field private static final ATTR_FILTER_PATH:Ljava/lang/String; = "path"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field static DBG:Z = false

.field private static final FILTER_DESCRIPTION_FILE:Ljava/lang/String; = "filters.xml"

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field private static final TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TAG_COLOR:Ljava/lang/String; = "color"

.field private static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field private static final TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final TAG_FILTER:Ljava/lang/String; = "filter"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field private static final TRUE:Ljava/lang/String; = "true"

.field private static final sDensities:[I

.field private static final sDensity:I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mBasePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterForPackage:Ljava/lang/String;

.field private mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastModifyTime:J

.field private mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field private mPackageName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    .line 60
    const-string v0, "ThemeZipFile"

    sput-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    .line 62
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    .line 63
    sget v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lmiui/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "zipFilePath"
    .parameter "metaData"
    .parameter "packageName"
    .parameter "resources"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    .line 143
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ThemeZipFile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iput-object p4, p0, Lmiui/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    .line 145
    iput-object p3, p0, Lmiui/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    .line 148
    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    .line 376
    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    .line 380
    :try_start_0
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    .line 386
    :cond_1
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clearCache()V

    .line 387
    return-void

    .line 381
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 405
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 406
    return-void
.end method

.method private getInputStreamInner(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 11
    .parameter "relativeFilePath"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 215
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 216
    .local v3, result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 236
    .end local v3           #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .local v4, result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :goto_0
    return-object v4

    .line 218
    .end local v4           #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v3       #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_0
    const-string v6, "dpi/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, index:I
    if-lez v1, :cond_4

    .line 220
    add-int/lit8 v6, v1, 0x3

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, suffix:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p1, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, prefix:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 225
    const-string v6, "%s%s%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    sget-object v8, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    aget v8, v8, v1

    invoke-static {v8}, Lmiui/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, fallbackPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 228
    if-eqz v3, :cond_3

    .line 229
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    aget v6, v6, v1

    if-le v6, v10, :cond_2

    .line 230
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    aget v6, v6, v1

    iput v6, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    :cond_2
    move-object v4, v3

    .line 232
    .end local v3           #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v4       #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    goto :goto_0

    .line 224
    .end local v4           #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v3       #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #fallbackPath:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    .end local v5           #suffix:Ljava/lang/String;
    :cond_4
    move-object v4, v3

    .line 236
    .end local v3           #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v4       #result:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    goto :goto_0
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "componentName"

    .prologue
    .line 118
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    const-string p0, "android"

    .line 126
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 122
    .restart local p0
    :cond_2
    const-string v0, "framework-miui-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_3
    const-string p0, "miui"

    goto :goto_0
.end method

.method protected static getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)Lmiui/content/res/ThemeZipFile;
    .locals 9
    .parameter "metaData"
    .parameter "componentName"
    .parameter "resources"

    .prologue
    const/4 v7, 0x0

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, path:Ljava/lang/String;
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 102
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/res/ThemeZipFile;

    move-object v4, v6

    .line 103
    .local v4, zipFile:Lmiui/content/res/ThemeZipFile;
    :goto_0
    if-nez v4, :cond_1

    .line 104
    sget-object v8, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v8

    .line 105
    :try_start_0
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v2, v0

    .line 106
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/content/res/ThemeZipFile;

    move-object v4, v6

    .line 107
    :goto_1
    if-nez v4, :cond_0

    .line 108
    new-instance v5, Lmiui/content/res/ThemeZipFile;

    invoke-static {p1}, Lmiui/content/res/ThemeZipFile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, p0, v6, p2}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local v4           #zipFile:Lmiui/content/res/ThemeZipFile;
    .local v5, zipFile:Lmiui/content/res/ThemeZipFile;
    :try_start_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .local v3, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :try_start_2
    sget-object v6, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .local v4, zipFile:Ljava/lang/Object;
    move-object v2, v3

    .line 112
    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .end local v4           #zipFile:Ljava/lang/Object;
    .end local v5           #zipFile:Lmiui/content/res/ThemeZipFile;
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :cond_0
    :try_start_3
    monitor-exit v8

    .line 114
    :cond_1
    return-object v4

    :cond_2
    move-object v4, v7

    .line 102
    goto :goto_0

    .local v4, zipFile:Lmiui/content/res/ThemeZipFile;
    :cond_3
    move-object v4, v7

    .line 106
    goto :goto_1

    .line 112
    .end local v4           #zipFile:Lmiui/content/res/ThemeZipFile;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .restart local v5       #zipFile:Lmiui/content/res/ThemeZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .local v4, zipFile:Ljava/lang/Object;
    goto :goto_2

    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .end local v4           #zipFile:Ljava/lang/Object;
    .restart local v3       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    :catchall_2
    move-exception v6

    move-object v4, v5

    .restart local v4       #zipFile:Ljava/lang/Object;
    move-object v2, v3

    .end local v3           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    .restart local v2       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeZipFile;>;"
    goto :goto_2
.end method

.method private getZipInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 9
    .parameter "relativeFilePath"

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v6

    if-nez v6, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v5

    .line 243
    :cond_1
    const/4 v1, 0x0

    .line 244
    .local v1, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    const-string v6, "#*.png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 245
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "#*.png"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, fuzzyIconName:Ljava/lang/String;
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 248
    .local v0, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 249
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 250
    .local v2, enumEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 253
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    move-object v1, v2

    .line 261
    .end local v0           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v2           #enumEntry:Ljava/util/zip/ZipEntry;
    .end local v3           #fuzzyIconName:Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 262
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 263
    .local v4, input:Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 264
    new-instance v6, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    invoke-direct {v6, p0, v4, v7, v8}, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/InputStream;J)V

    move-object v5, v6

    goto :goto_0

    .line 259
    .end local v4           #input:Ljava/io/InputStream;
    :cond_4
    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 267
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private isValid()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadThemeValues()V
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 286
    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/content/res/ThemeZipFile;->loadThemeValues(Ljava/lang/String;)V

    .line 285
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method private loadThemeValues(Ljava/lang/String;)V
    .locals 11
    .parameter "basePath"

    .prologue
    .line 291
    sget-boolean v7, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadThemeValues for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    sget-object v7, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "theme_values%s.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmiui/content/res/ThemeZipFile;->sDensities:[I

    aget v10, v10, v2

    invoke-static {v10}, Lmiui/util/DisplayUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, file:Ljava/lang/String;
    invoke-direct {p0, v1}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 296
    .local v3, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v3, :cond_1

    .line 297
    iget-object v4, v3, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 299
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 300
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v5, v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, v6}, Lmiui/content/res/ThemeZipFile;->mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4

    .line 306
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 293
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 307
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 306
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 307
    :catch_2
    move-exception v0

    .line 308
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 306
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 309
    :goto_4
    throw v7

    .line 307
    :catch_3
    move-exception v0

    .line 308
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 313
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/lang/String;
    .end local v3           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_2
    return-void

    .line 305
    .restart local v1       #file:Ljava/lang/String;
    .restart local v3       #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 303
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private mergeThemeValues(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .parameter "parser"

    .prologue
    .line 318
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, tagtype:I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_1

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 321
    :cond_1
    const/4 v10, 0x2

    if-eq v7, v10, :cond_3

    .line 322
    new-instance v10, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "No start tag found"

    invoke-direct {v10, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v7           #tagtype:I
    :catch_0
    move-exception v2

    .line 371
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 326
    .restart local v7       #tagtype:I
    :cond_3
    :goto_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x2

    if-eq v7, v10, :cond_4

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3

    .line 328
    :cond_4
    const/4 v10, 0x1

    if-eq v7, v10, :cond_2

    .line 330
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, type:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 333
    const/4 v5, 0x0

    .line 334
    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 335
    .local v6, pkg:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    add-int/lit8 v3, v10, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_7

    .line 336
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, attrName:Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 338
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 335
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 339
    :cond_6
    const-string v10, "package"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 340
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 343
    .end local v0           #attrName:Ljava/lang/String;
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, value:Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 346
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mResources:Landroid/content/res/Resources;

    if-nez v6, :cond_8

    iget-object v6, p0, Lmiui/content/res/ThemeZipFile;->mPackageName:Ljava/lang/String;

    .end local v6           #pkg:Ljava/lang/String;
    :cond_8
    invoke-virtual {v10, v5, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 347
    .local v4, id:I
    if-lez v4, :cond_3

    .line 348
    const-string v10, "bool"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 349
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lmiui/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_3

    .line 350
    iget-object v11, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    const-string v10, "true"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 352
    :cond_a
    const-string v10, "color"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "integer"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "drawable"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 353
    :cond_b
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lmiui/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_3

    .line 354
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 356
    :cond_c
    const-string v10, "string"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 357
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lmiui/content/res/ThemeResources$MetaData;->supportCharSequence:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_3

    .line 358
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v10, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 360
    :cond_d
    const-string v10, "dimen"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 361
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v10, v10, Lmiui/content/res/ThemeResources$MetaData;->supportInt:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_3

    .line 362
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 363
    .local v1, dimen:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    .line 364
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v10, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private openZipFile()V
    .locals 6

    .prologue
    .line 390
    sget-boolean v2, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openZipFile for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    .line 394
    iget-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 5

    .prologue
    .line 151
    sget-boolean v2, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdate for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 154
    .local v0, lastModified:J
    iget-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v2, p0, Lmiui/content/res/ThemeZipFile;->mLastModifyTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 157
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    .line 158
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->openZipFile()V

    .line 159
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->initBasePaths()V

    .line 160
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->loadThemeValues()V

    .line 161
    const/4 v2, 0x1

    monitor-exit p0

    .line 166
    :goto_0
    return v2

    .line 163
    :cond_1
    monitor-exit p0

    .line 166
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public containsEntry(Ljava/lang/String;)Z
    .locals 5
    .parameter "relativePath"

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 184
    :goto_0
    return v2

    .line 180
    :cond_0
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 181
    if-nez v0, :cond_1

    move-object v1, p1

    .line 182
    .local v1, path:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 181
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 180
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #path:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 184
    goto :goto_0
.end method

.method public containsOverlayEntry(Ljava/lang/String;)Z
    .locals 5
    .parameter "relativePath"

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 194
    :goto_0
    return v2

    .line 190
    :cond_0
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-lez v0, :cond_3

    .line 191
    if-nez v0, :cond_1

    move-object v1, p1

    .line 192
    .local v1, path:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 191
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 190
    .restart local v1       #path:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #path:Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 194
    goto :goto_0
.end method

.method public enableFilter(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 409
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mFilterForPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mFilterForPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mFilterForPackage:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "filters.xml"

    invoke-direct {p0, v0}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clearCache()V

    .line 416
    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->initBasePaths()V

    .line 417
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->loadThemeValues()V

    .line 418
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 8
    .parameter "relativePath"

    .prologue
    const/4 v4, 0x0

    .line 198
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v3, v3, Lmiui/content/res/ThemeResources$MetaData;->supportFile:Z

    if-nez v3, :cond_1

    move-object v1, v4

    .line 211
    :cond_0
    :goto_0
    return-object v1

    .line 200
    :cond_1
    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 201
    if-nez v0, :cond_3

    move-object v2, p1

    .line 202
    .local v2, path:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v2}, Lmiui/content/res/ThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 203
    .local v1, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v1, :cond_0

    .line 205
    const-string v3, ".9.png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".9.png"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-direct {p0, v2}, Lmiui/content/res/ThemeZipFile;->getInputStreamInner(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 208
    if-nez v1, :cond_0

    .line 200
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 201
    .end local v1           #info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    .end local v2           #path:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v1, v4

    .line 211
    goto :goto_0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 281
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 277
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValues()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initBasePaths()V
    .locals 13

    .prologue
    .line 423
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mFilterForPackage:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string v10, "filters.xml"

    invoke-direct {p0, v10}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v6

    .line 429
    .local v6, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v6, :cond_0

    .line 432
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 433
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 434
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    iget-object v10, v6, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v0, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 436
    .local v1, document:Lorg/w3c/dom/Document;
    const-string v10, "filter"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 437
    .local v4, filters:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 438
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 440
    .local v3, filter:Lorg/w3c/dom/Element;
    const-string v10, "path"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, path:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    const-string v10, "res"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 437
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 443
    :cond_3
    const-string v10, "package"

    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 444
    .local v8, packages:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 445
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mFilterForPackage:Ljava/lang/String;

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 446
    iget-object v10, p0, Lmiui/content/res/ThemeZipFile;->mBasePaths:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 451
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #document:Lorg/w3c/dom/Document;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3           #filter:Lorg/w3c/dom/Element;
    .end local v4           #filters:Lorg/w3c/dom/NodeList;
    .end local v5           #i:I
    .end local v7           #j:I
    .end local v8           #packages:Lorg/w3c/dom/NodeList;
    .end local v9           #path:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 454
    :try_start_1
    iget-object v10, v6, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 455
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 444
    .restart local v0       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1       #document:Lorg/w3c/dom/Document;
    .restart local v2       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v3       #filter:Lorg/w3c/dom/Element;
    .restart local v4       #filters:Lorg/w3c/dom/NodeList;
    .restart local v5       #i:I
    .restart local v7       #j:I
    .restart local v8       #packages:Lorg/w3c/dom/NodeList;
    .restart local v9       #path:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 454
    .end local v3           #filter:Lorg/w3c/dom/Element;
    .end local v7           #j:I
    .end local v8           #packages:Lorg/w3c/dom/NodeList;
    .end local v9           #path:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v10, v6, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 455
    :catch_2
    move-exception v10

    goto/16 :goto_0

    .line 453
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #document:Lorg/w3c/dom/Document;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #filters:Lorg/w3c/dom/NodeList;
    .end local v5           #i:I
    :catchall_0
    move-exception v10

    .line 454
    :try_start_3
    iget-object v11, v6, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 456
    :goto_4
    throw v10

    .line 455
    :catch_3
    move-exception v11

    goto :goto_4
.end method
