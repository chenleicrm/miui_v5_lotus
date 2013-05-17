.class Landroid/content/pm/ResolveInfo$Injector;
.super Ljava/lang/Object;
.source "ResolveInfo.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compare(Ljava/text/Collator;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "collator"
    .parameter "a"
    .parameter "sa"
    .parameter "b"
    .parameter "sb"

    .prologue
    .line 47
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v1, p3, Landroid/content/pm/ResolveInfo;->system:Z

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p3, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static getDrawable(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "ri"
    .parameter "pm"
    .parameter "packageName"
    .parameter "icon"
    .parameter "ai"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    .local v4, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-static {v0}, Landroid/app/MiuiThemeHelper;->isCustomizedIcon(Landroid/content/IntentFilter;)Z

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 41
    .end local v4           #ci:Landroid/content/pm/ComponentInfo;
    :cond_0
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0
.end method
