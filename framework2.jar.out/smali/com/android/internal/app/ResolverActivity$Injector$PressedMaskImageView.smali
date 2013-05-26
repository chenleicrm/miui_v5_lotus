.class Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;
.super Landroid/widget/ImageView;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PressedMaskImageView"
.end annotation


# instance fields
.field private mMaskColor:I

.field private mMasked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    .line 157
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->init(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    .line 162
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->init(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->init(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMaskColor:I

    .line 172
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMaskColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 185
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->isPressed()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 186
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->mMasked:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$Injector$PressedMaskImageView;->invalidate()V

    .line 189
    :cond_0
    return-void

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
