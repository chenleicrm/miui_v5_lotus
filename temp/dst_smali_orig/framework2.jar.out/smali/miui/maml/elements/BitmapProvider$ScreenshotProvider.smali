.class Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenshotProvider"
.end annotation


# static fields
.field private static final KEYGUARD_LAYER:I = 0xb

.field public static final TAG_NAME:Ljava/lang/String; = "Screenshot"

.field private static final TYPE_LAYER_MULTIPLIER:I = 0x2710


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/BitmapProvider;->reset()V

    const v0, 0x1adaf

    .local v0, maxLayer:I
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getScreenHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/view/Surface;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/BitmapProvider$ScreenshotProvider;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
