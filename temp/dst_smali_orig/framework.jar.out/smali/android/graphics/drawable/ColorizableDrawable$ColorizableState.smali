.class final Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorizableDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorizableDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorizableState"
.end annotation


# instance fields
.field private mCanConstantState:Z

.field mChangingConfigurations:I

.field private mCheckedConstantState:Z

.field private mColor:I

.field private mColorExists:Z

.field mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/graphics/drawable/ColorizableDrawable;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "orig"
    .parameter "owner"
    .parameter "res"

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    iget-object v0, p1, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v0, p1, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColor:I

    iget-boolean v0, p1, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColorExists:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColorExists:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mCanConstantState:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mCheckedConstantState:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->applyColorFilter()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColorExists:Z

    return p1
.end method

.method static synthetic access$102(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColor:I

    return p1
.end method


# virtual methods
.method applyColorFilter()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColorExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method canConstantState()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mCheckedConstantState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mCanConstantState:Z

    iput-boolean v1, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mCheckedConstantState:Z

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mCanConstantState:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorizableDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ColorizableDrawable;-><init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorizableDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    new-instance v0, Landroid/graphics/drawable/ColorizableDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ColorizableDrawable;-><init>(Landroid/graphics/drawable/ColorizableDrawable$ColorizableState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorizableDrawable$1;)V

    return-object v0
.end method
