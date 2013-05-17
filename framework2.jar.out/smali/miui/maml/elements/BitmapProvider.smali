.class public abstract Lmiui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;,
        Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;,
        Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;,
        Lmiui/maml/elements/BitmapProvider$AppIconProvider;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 36
    return-void
.end method

.method public static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .locals 1
    .parameter "root"
    .parameter "type"

    .prologue
    .line 21
    const-string v0, "ResourceImage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    .line 31
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v0, "VirtualScreen"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "ApplicationIcon"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 27
    :cond_2
    const-string v0, "Screenshot"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    .line 31
    :cond_3
    new-instance v0, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {v0, p0}, Lmiui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 50
    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 39
    invoke-virtual {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 40
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
