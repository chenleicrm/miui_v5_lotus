.class public Lcom/android/internal/widget/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActiveTarget:I

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 283
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 172
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 173
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 174
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 182
    iput v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 183
    iput v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 185
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 192
    iput v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 193
    iput v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 234
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$1;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 241
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$2;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$2;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 249
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$3;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$3;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 256
    new-instance v8, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 272
    iput v12, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 273
    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 286
    .local v4, res:Landroid/content/res/Resources;
    sget-object v8, Lcom/android/internal/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 287
    .local v0, a:Landroid/content/res/TypedArray;
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 288
    const/16 v8, 0x8

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 289
    const/16 v8, 0xa

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 290
    const/16 v8, 0x9

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 292
    const/16 v8, 0xb

    iget v9, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 294
    new-instance v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v8, v4, v9}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 296
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 297
    new-instance v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-direct {p0, v0, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v9

    invoke-direct {v8, v4, v9}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 300
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 302
    const/4 v8, 0x4

    invoke-direct {p0, v0, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v3

    .line 303
    .local v3, pointId:I
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 304
    .local v2, pointDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 306
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 309
    .local v1, outValue:Landroid/util/TypedValue;
    const/4 v8, 0x6

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 310
    iget v8, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 312
    :cond_0
    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 313
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify at least one target drawable"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    .end local v1           #outValue:Landroid/util/TypedValue;
    .end local v2           #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 317
    .restart local v1       #outValue:Landroid/util/TypedValue;
    .restart local v2       #pointDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 318
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 319
    .local v5, resourceId:I
    if-nez v5, :cond_4

    .line 320
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify target descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 322
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 326
    .end local v5           #resourceId:I
    :cond_5
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 327
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    .line 328
    .restart local v5       #resourceId:I
    if-nez v5, :cond_6

    .line 329
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Must specify direction descriptions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 331
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 334
    .end local v5           #resourceId:I
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    sget-object v8, Landroid/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 339
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v8, :cond_8

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 343
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 345
    new-instance v6, Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-direct {v6, v2}, Lcom/android/internal/widget/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    .line 346
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 347
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v6, v6, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 348
    return-void

    :cond_8
    move v6, v7

    .line 341
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/multiwaveview/GlowPadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/widget/multiwaveview/GlowPadView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/multiwaveview/GlowPadView;)Lcom/android/internal/widget/multiwaveview/PointCloud;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    return-object v0
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v5, utterance:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1166
    .local v2, targetCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1167
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1168
    .local v3, targetDescription:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, directionDescription:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1171
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, text:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    .end local v0           #directionDescription:Ljava/lang/String;
    .end local v3           #targetDescription:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1178
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1029
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1032
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1033
    const/4 v0, 0x1

    const/high16 v1, 0x41a0

    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1036
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1039
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, 0x0

    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getResolvedLayoutDirection()I

    move-result v1

    .line 1043
    .local v1, layoutDirection:I
    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1045
    .local v0, absoluteGravity:I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1054
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1057
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1066
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1069
    :goto_1
    return-void

    .line 1047
    :pswitch_1
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1050
    :pswitch_2
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1059
    :sswitch_0
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1062
    :sswitch_1
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1045
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1057
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 492
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 493
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 495
    .local v2, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 498
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 515
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .parameter "whichTarget"

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 506
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 509
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1150
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 356
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1196
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v0, 0x0

    .line 1201
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "a"
    .parameter "id"

    .prologue
    .line 351
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 352
    .local v0, tv:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 3

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1156
    const v1, 0x3fa66666

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float v0, v1, v2

    .line 1160
    .local v0, scaledTapRadius:F
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->square(F)F

    move-result v1

    return v1

    .line 1158
    .end local v0           #scaledTapRadius:F
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .restart local v0       #scaledTapRadius:F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1183
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1184
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v0, 0x0

    .line 1189
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 886
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 887
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 862
    .local v0, eventX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 863
    .local v1, eventY:F
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 864
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 869
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 873
    const/4 v0, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 874
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    const/4 v7, 0x0

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 489
    return-void
.end method

.method private hideUnselected(I)V
    .locals 3
    .parameter "active"

    .prologue
    .line 550
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 551
    if-eq v0, p1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 550
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .parameter "activeTarget"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 546
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 547
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .parameter "resourceId"

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 648
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 649
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 651
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 652
    .local v3, maxWidth:I
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 653
    .local v2, maxHeight:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 654
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 655
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 656
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 657
    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 660
    :cond_1
    iput v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 661
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->requestLayout()V

    .line 667
    :goto_1
    return-void

    .line 664
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 665
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1206
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1207
    .local v2, count:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1208
    .local v4, targetContentDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1209
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, contentDescription:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1212
    .end local v1           #contentDescription:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1213
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 8
    .parameter "resourceId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 634
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 635
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 636
    .local v1, count:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 637
    .local v2, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 638
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 639
    .local v6, value:Landroid/util/TypedValue;
    new-instance v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    invoke-direct {v5, v4, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    .line 640
    .local v5, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    .end local v5           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 642
    .end local v6           #value:Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 643
    return-object v2
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .parameter "res"
    .parameter "existingResourceId"
    .parameter "newResourceId"

    .prologue
    .line 1248
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1249
    :cond_0
    const/4 v2, 0x0

    .line 1267
    :cond_1
    :goto_0
    return v2

    .line 1252
    :cond_2
    const/4 v2, 0x0

    .line 1253
    .local v2, result:Z
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1254
    .local v0, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1255
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1257
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1258
    invoke-virtual {v4, p1, p3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1259
    const/4 v2, 0x1

    .line 1255
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1263
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1264
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 398
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 407
    move v0, v1

    .line 409
    :goto_0
    return v0

    .line 400
    :sswitch_0
    move v0, p2

    .line 401
    goto :goto_0

    .line 403
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 404
    goto :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 999
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1000
    if-eqz p1, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 1003
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 1004
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1005
    if-nez p1, :cond_2

    .line 1006
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1010
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1013
    :cond_1
    return-void

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .parameter "duration"
    .parameter "delay"
    .parameter "finalAlpha"
    .parameter "finishListener"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 468
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 475
    return-void
.end method

.method private square(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 1146
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .parameter "duration"
    .parameter "alpha"

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 807
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 808
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 811
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 817
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    .line 771
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 772
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 774
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/internal/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/internal/widget/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$5;-><init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 786
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 787
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 767
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 768
    return-void
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1016
    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1017
    .local v0, tx:F
    iget v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1018
    .local v1, ty:F
    iget-boolean v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 1020
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1021
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1022
    iput-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 1025
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 858
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1125
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 10
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 1110
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1111
    .local v5, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1112
    .local v3, size:I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1113
    .local v0, alpha:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1114
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1115
    .local v4, targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1116
    .local v1, angle:F
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1117
    invoke-virtual {v4, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1118
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1119
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    .end local v1           #angle:F
    .end local v4           #targetIcon:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 630
    :cond_0
    return-void
.end method


# virtual methods
.method callAnnounceTargets()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->announceTargets()V

    return-void
.end method

.method callDeactivateTargets()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    return-void
.end method

.method callDispatchTriggerEvent(I)V
    .locals 0
    .parameter "whichTarget"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    return-void
.end method

.method callGetTargetDescription(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method callSetGrabbedState(I)V
    .locals 0
    .parameter "newState"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    return-void
.end method

.method callVibrate()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->vibrate()V

    return-void
.end method

.method doFinish()V
    .locals 7
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 519
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 520
    .local v0, activeTarget:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    .line 522
    .local v1, targetHit:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 525
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 528
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v2, v5, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 529
    invoke-direct {p0, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 530
    iget-boolean v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 540
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 541
    return-void

    .end local v1           #targetHit:Z
    :cond_1
    move v1, v3

    .line 520
    goto :goto_0

    .line 536
    .restart local v1       #targetHit:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v6, v3, v5, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 537
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method getActiveTarget()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    return v0
.end method

.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method getDragging()Z
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    return v0
.end method

.method getHandleDrawable()Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method getOuterRadius()F
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    return v0
.end method

.method getOuterRing()Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    return-object v0
.end method

.method getResetListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method getResetListenerWithPing()Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1218
    .local v0, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method getSnapMargin()F
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method getTargetAnimations()Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    return-object v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method getTargetDrawables()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 1237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1238
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1239
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1243
    .end local v0           #i:I
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_1
    return v0

    .line 1237
    .restart local v0       #i:I
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 684
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method getUpdateListener()Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method getWaveCenterX()F
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method getWaveCenterY()F
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 110
    iget v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method handleMove(Landroid/view/MotionEvent;)V
    .locals 35
    .parameter "event"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 891
    const/4 v4, -0x1

    .line 892
    .local v4, activeTarget:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    .line 893
    .local v10, historySize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 894
    .local v25, targets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 895
    .local v15, ntargets:I
    const/16 v29, 0x0

    .line 896
    .local v29, x:F
    const/16 v30, 0x0

    .line 897
    .local v30, y:F
    const/4 v12, 0x0

    .local v12, k:I
    :goto_0
    add-int/lit8 v31, v10, 0x1

    move/from16 v0, v31

    if-ge v12, v0, :cond_9

    .line 898
    if-ge v12, v10, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v8

    .line 899
    .local v8, eventX:F
    :goto_1
    if-ge v12, v10, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v9

    .line 901
    .local v9, eventY:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v31, v0

    sub-float v27, v8, v31

    .line 902
    .local v27, tx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v31, v0

    sub-float v28, v9, v31

    .line 903
    .local v28, ty:F
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v31

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v26, v0

    .line 904
    .local v26, touchRadius:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    cmpl-float v31, v26, v31

    if-lez v31, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    div-float v16, v31, v26

    .line 905
    .local v16, scale:F
    :goto_3
    mul-float v13, v27, v16

    .line 906
    .local v13, limitX:F
    mul-float v14, v28, v16

    .line 907
    .local v14, limitY:F
    move/from16 v0, v28

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 909
    .local v6, angleRad:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    .line 910
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 913
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-eqz v31, :cond_8

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v32, v0

    sub-float v18, v31, v32

    .line 916
    .local v18, snapRadius:F
    mul-float v17, v18, v18

    .line 918
    .local v17, snapDistance2:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    if-ge v11, v15, :cond_8

    .line 919
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 921
    .local v19, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    int-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    sub-double v31, v31, v33

    const-wide/high16 v33, 0x4000

    mul-double v31, v31, v33

    const-wide v33, 0x400921fb54442d18L

    mul-double v31, v31, v33

    int-to-double v0, v15

    move-wide/from16 v33, v0

    div-double v23, v31, v33

    .line 922
    .local v23, targetMinRad:D
    int-to-double v0, v11

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    add-double v31, v31, v33

    const-wide/high16 v33, 0x4000

    mul-double v31, v31, v33

    const-wide v33, 0x400921fb54442d18L

    mul-double v31, v31, v33

    int-to-double v0, v15

    move-wide/from16 v33, v0

    div-double v21, v31, v33

    .line 923
    .local v21, targetMaxRad:D
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 924
    cmpl-double v31, v6, v23

    if-lez v31, :cond_1

    cmpg-double v31, v6, v21

    if-lez v31, :cond_2

    :cond_1
    const-wide v31, 0x401921fb54442d18L

    add-double v31, v31, v6

    cmpl-double v31, v31, v23

    if-lez v31, :cond_7

    const-wide v31, 0x401921fb54442d18L

    add-double v31, v31, v6

    cmpg-double v31, v31, v21

    if-gtz v31, :cond_7

    :cond_2
    const/4 v5, 0x1

    .line 928
    .local v5, angleMatches:Z
    :goto_5
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v31

    cmpl-float v31, v31, v17

    if-lez v31, :cond_3

    .line 929
    move v4, v11

    .line 918
    .end local v5           #angleMatches:Z
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 898
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v11           #i:I
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #scale:F
    .end local v17           #snapDistance2:F
    .end local v18           #snapRadius:F
    .end local v19           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v21           #targetMaxRad:D
    .end local v23           #targetMinRad:D
    .end local v26           #touchRadius:F
    .end local v27           #tx:F
    .end local v28           #ty:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    goto/16 :goto_1

    .line 899
    .restart local v8       #eventX:F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    goto/16 :goto_2

    .line 904
    .restart local v9       #eventY:F
    .restart local v26       #touchRadius:F
    .restart local v27       #tx:F
    .restart local v28       #ty:F
    :cond_6
    const/high16 v16, 0x3f80

    goto/16 :goto_3

    .line 924
    .restart local v6       #angleRad:D
    .restart local v11       #i:I
    .restart local v13       #limitX:F
    .restart local v14       #limitY:F
    .restart local v16       #scale:F
    .restart local v17       #snapDistance2:F
    .restart local v18       #snapRadius:F
    .restart local v19       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .restart local v21       #targetMaxRad:D
    .restart local v23       #targetMinRad:D
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 934
    .end local v11           #i:I
    .end local v17           #snapDistance2:F
    .end local v18           #snapRadius:F
    .end local v19           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v21           #targetMaxRad:D
    .end local v23           #targetMinRad:D
    :cond_8
    move/from16 v29, v13

    .line 935
    move/from16 v30, v14

    .line 897
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 938
    .end local v6           #angleRad:D
    .end local v8           #eventX:F
    .end local v9           #eventY:F
    .end local v13           #limitX:F
    .end local v14           #limitY:F
    .end local v16           #scale:F
    .end local v26           #touchRadius:F
    .end local v27           #tx:F
    .end local v28           #ty:F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v31, v0

    if-nez v31, :cond_a

    .line 971
    :goto_6
    return-void

    .line 942
    :cond_a
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v4, v0, :cond_e

    .line 943
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 944
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 950
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v0, v4, :cond_d

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    .line 953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 954
    .restart local v19       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v31, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 955
    sget-object v31, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 959
    .end local v19           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_b
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v4, v0, :cond_d

    .line 960
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 961
    .restart local v19       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v31, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->hasState([I)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 962
    sget-object v31, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 964
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 965
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v20

    .line 966
    .local v20, targetContentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 970
    .end local v19           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v20           #targetContentDescription:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_6

    .line 946
    :cond_e
    const/16 v31, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 947
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto/16 :goto_7
.end method

.method hideTargets(ZZ)V
    .locals 17
    .parameter "animate"
    .parameter "expanded"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 562
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 563
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 564
    .local v3, duration:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 566
    .local v2, delay:I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v9, 0x3f80

    .line 568
    .local v9, targetScale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 569
    .local v6, length:I
    sget-object v5, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 570
    .local v5, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 571
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 572
    .local v8, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string/jumbo v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string/jumbo v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 563
    .end local v2           #delay:I
    .end local v3           #duration:I
    .end local v4           #i:I
    .end local v5           #interpolator:Landroid/animation/TimeInterpolator;
    .end local v6           #length:I
    .end local v8           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v9           #targetScale:F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 564
    .restart local v3       #duration:I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 566
    .restart local v2       #delay:I
    :cond_2
    const v9, 0x3f4ccccd

    goto/16 :goto_2

    .line 582
    .restart local v4       #i:I
    .restart local v5       #interpolator:Landroid/animation/TimeInterpolator;
    .restart local v6       #length:I
    .restart local v9       #targetScale:F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v7, 0x3f80

    .line 584
    .local v7, ringScaleTarget:F
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string/jumbo v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string/jumbo v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string/jumbo v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 594
    return-void

    .line 582
    .end local v7           #ringScaleTarget:F
    :cond_4
    const/high16 v7, 0x3f00

    goto :goto_4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1129
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/internal/widget/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1130
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1131
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1132
    .local v1, ntargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1133
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1134
    .local v2, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1135
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    .end local v2           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1139
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 977
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 988
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 989
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 991
    .end local v0           #action:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 979
    .restart local v0       #action:I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 982
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 985
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1073
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1074
    sub-int v5, p4, p2

    .line 1075
    .local v5, width:I
    sub-int v0, p5, p3

    .line 1079
    .local v0, height:I
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1080
    .local v4, placementWidth:F
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1081
    .local v3, placementHeight:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    int-to-float v7, v5

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1083
    .local v1, newWaveCenterX:F
    iget v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    int-to-float v7, v0

    iget v8, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v2, v6, v7

    .line 1086
    .local v2, newWaveCenterY:F
    iget-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1087
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1088
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1089
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1092
    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1093
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1095
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1096
    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1098
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1099
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1100
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1102
    iput v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1103
    iput v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1106
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 415
    .local v3, minimumWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 416
    .local v2, minimumHeight:I
    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 417
    .local v1, computedWidth:I
    invoke-direct {p0, p2, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 418
    .local v0, computedHeight:I
    sub-int v4, v1, v3

    sub-int v5, v0, v2

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 419
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setMeasuredDimension(II)V

    .line 420
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 822
    .local v0, action:I
    const/4 v1, 0x0

    .line 823
    .local v1, handled:Z
    packed-switch v0, :pswitch_data_0

    .line 851
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->invalidate()V

    .line 852
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 826
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 827
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 828
    const/4 v1, 0x1

    .line 829
    goto :goto_0

    .line 833
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 834
    const/4 v1, 0x1

    .line 835
    goto :goto_0

    .line 839
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 840
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 841
    const/4 v1, 0x1

    .line 842
    goto :goto_0

    .line 846
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 847
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 848
    const/4 v1, 0x1

    goto :goto_0

    .line 852
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 747
    iget v4, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 748
    const/4 v0, 0x1

    .line 749
    .local v0, doWaveAnimation:Z
    iget-object v3, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 752
    .local v3, waveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 753
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 754
    .local v1, t:J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 755
    const/4 v0, 0x0

    .line 759
    .end local v1           #t:J
    :cond_0
    if-eqz v0, :cond_1

    .line 760
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 763
    .end local v0           #doWaveAnimation:Z
    .end local v3           #waveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .parameter "component"
    .parameter "name"
    .parameter "existingResId"

    .prologue
    .line 1280
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1308
    :cond_0
    :goto_0
    return v5

    .line 1282
    :cond_1
    const/4 v5, 0x0

    .line 1283
    .local v5, replaced:Z
    if-eqz p1, :cond_2

    .line 1285
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1287
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1289
    .local v2, metaData:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1290
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1291
    .local v1, iconResId:I
    if-eqz v1, :cond_2

    .line 1292
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1293
    .local v6, res:Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1304
    .end local v1           #iconResId:I
    .end local v2           #metaData:Landroid/os/Bundle;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1306
    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1296
    :catch_0
    move-exception v0

    .line 1297
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1299
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1300
    .local v3, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 796
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 798
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 799
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 800
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 801
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 802
    invoke-static {}, Lcom/android/internal/widget/multiwaveview/Tweener;->reset()V

    .line 803
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 378
    return-void
.end method

.method setActiveTarget(I)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    return-void
.end method

.method setAnimatingTargets(Z)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 714
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 715
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 718
    :cond_0
    return-void
.end method

.method setDragging(Z)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mDragging:Z

    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .parameter "resourceId"
    .parameter "enabled"

    .prologue
    .line 1222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 1224
    .local v1, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1225
    invoke-virtual {v1, p2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 1229
    .end local v1           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void

    .line 1222
    .restart local v1       #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setGlowRadius(F)V
    .locals 0
    .parameter "value"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1143
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 693
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 694
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 697
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 677
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 735
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method showTargets(Z)V
    .locals 12
    .parameter "animate"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 598
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 599
    iput-boolean p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 600
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 601
    .local v0, delay:I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 602
    .local v1, duration:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 603
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 604
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    .line 605
    .local v4, target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    sget-object v5, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 606
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v6, v1

    const/16 v8, 0xc

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "ease"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "alpha"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "scaleX"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v10, "scaleY"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/high16 v10, 0x3f80

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "delay"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string/jumbo v10, "onUpdate"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v10, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 600
    .end local v0           #delay:I
    .end local v1           #duration:I
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #target:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    .restart local v0       #delay:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 614
    .restart local v1       #duration:I
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    int-to-long v7, v1

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/internal/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f80

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string/jumbo v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string/jumbo v11, "onComplete"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/widget/multiwaveview/Tweener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 624
    return-void
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 369
    return-void
.end method

.method switchToState(IFF)V
    .locals 6
    .parameter "state"
    .parameter "x"
    .parameter "y"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 424
    packed-switch p1, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 426
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 427
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 428
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 429
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 434
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 439
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 440
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 441
    const/16 v0, 0xc8

    invoke-direct {p0, v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 442
    invoke-direct {p0, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 449
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 450
    invoke-direct {p0, v1, v1, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 455
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 456
    invoke-direct {p0, v1, v1, v2, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 460
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method updateTargetPosition(IFFF)V
    .locals 0
    .parameter "i"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "angle"

    .prologue
    .line 127
    return-void
.end method
