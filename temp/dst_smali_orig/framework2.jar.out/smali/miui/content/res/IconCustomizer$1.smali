.class final Lmiui/content/res/IconCustomizer$1;
.super Ljava/lang/Object;
.source "IconCustomizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$savedIcon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/content/res/IconCustomizer$1;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lmiui/content/res/IconCustomizer$1;->val$savedIcon:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lmiui/content/res/IconCustomizer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/content/res/IconCustomizer$1;->val$filename:Ljava/lang/String;

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$1;->val$savedIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/content/res/IconCustomizer$1;->val$context:Landroid/content/Context;

    #calls: Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lmiui/content/res/IconCustomizer;->access$000(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    return-void
.end method
