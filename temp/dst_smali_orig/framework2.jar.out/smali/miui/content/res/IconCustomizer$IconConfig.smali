.class Lmiui/content/res/IconCustomizer$IconConfig;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/res/IconCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconConfig"
.end annotation


# instance fields
.field mCameraX:F

.field mCameraY:F

.field mPointsMappingFrom:[F

.field mPointsMappingTo:[F

.field mRotateX:F

.field mRotateY:F

.field mRotateZ:F

.field mScaleX:F

.field mScaleY:F

.field mSkewX:F

.field mSkewY:F

.field mTransX:F

.field mTransY:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/content/res/IconCustomizer$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    iput v0, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    iput v1, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    iput-object v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    iput-object v2, p0, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    return-void
.end method
