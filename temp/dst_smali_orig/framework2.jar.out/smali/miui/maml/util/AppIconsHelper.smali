.class public Lmiui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"


# static fields
.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, con:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v1, v2, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    .local v1, version:I
    sget v2, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    if-le v1, v2, :cond_0

    invoke-static {}, Lmiui/maml/util/AppIconsHelper;->clearCache()V

    sput v1, Lmiui/maml/util/AppIconsHelper;->mThemeChanged:I

    :cond_0
    return-void
.end method

.method public static cleanUp()V
    .locals 0

    .prologue
    invoke-static {}, Lmiui/maml/RenderThread;->globalThreadStop()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0}, Lmiui/maml/util/RendererCoreCache;->clear()V

    :cond_0
    return-void
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"
    .parameter "h"

    .prologue
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .local v2, activityName:Ljava/lang/String;
    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, d:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v6

    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "pm"

    .prologue
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"

    .prologue
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "info"
    .parameter "pm"
    .parameter "cacheTime"
    .parameter "h"

    .prologue
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"

    .prologue
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"

    .prologue
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "activityName"
    .parameter "cacheTime"
    .parameter "h"

    .prologue
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/maml/util/RendererCoreCache;

    invoke-direct {v0, p5}, Lmiui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    :cond_0
    invoke-static {p0}, Lmiui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    invoke-virtual {v0, v1, p3, p4}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v8

    .local v8, ri:Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v8, :cond_1

    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, fancyIconRelativePath:Ljava/lang/String;
    sget-object v0, Lmiui/maml/util/AppIconsHelper;->mRendererCoreCache:Lmiui/maml/util/RendererCoreCache;

    new-instance v5, Lmiui/maml/util/FancyIconResourceLoader;

    invoke-direct {v5, v7}, Lmiui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-wide v3, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Landroid/os/Handler;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v8

    .end local v7           #fancyIconRelativePath:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_2

    iget-object v0, v8, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-eqz v0, :cond_2

    new-instance v0, Lmiui/maml/FancyDrawable;

    iget-object v2, v8, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    invoke-direct {v0, v2}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
