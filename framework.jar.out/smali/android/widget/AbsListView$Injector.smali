.class Landroid/widget/AbsListView$Injector;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;
    }
.end annotation


# static fields
.field static FALSE:Z

.field static mChildSequenceStateTaggingListener:Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/AbsListView$Injector;->FALSE:Z

    .line 133
    new-instance v0, Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;

    invoke-direct {v0}, Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;-><init>()V

    sput-object v0, Landroid/widget/AbsListView$Injector;->mChildSequenceStateTaggingListener:Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method static clearScrollFY(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 229
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mScrollFY:F

    .line 230
    return-void
.end method

.method static drawBorder(Landroid/widget/AbsListView;Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "listView"
    .parameter "canvas"

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getId()I

    move-result v12

    const v13, 0x102000a

    if-ne v12, v13, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v10, 0x1

    .line 167
    .local v10, shouldDrawBottomLine:Z
    :goto_0
    if-eqz v10, :cond_0

    .line 168
    invoke-static {p0}, Lcom/miui/internal/v5/widget/ActionBarView;->findActionBarViewByView(Landroid/view/View;)Lcom/miui/internal/v5/widget/ActionBarView;

    move-result-object v0

    .line 169
    .local v0, abv:Lcom/miui/internal/v5/widget/ActionBarView;
    if-nez v0, :cond_3

    const/4 v10, 0x0

    .line 172
    .end local v0           #abv:Lcom/miui/internal/v5/widget/ActionBarView;
    :cond_0
    :goto_1
    if-nez v10, :cond_4

    .line 209
    :cond_1
    :goto_2
    return-void

    .line 165
    .end local v10           #shouldDrawBottomLine:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 169
    .restart local v0       #abv:Lcom/miui/internal/v5/widget/ActionBarView;
    .restart local v10       #shouldDrawBottomLine:Z
    :cond_3
    invoke-virtual {v0}, Lcom/miui/internal/v5/widget/ActionBarView;->isSplitActionBar()Z

    move-result v10

    goto :goto_1

    .line 176
    .end local v0           #abv:Lcom/miui/internal/v5/widget/ActionBarView;
    :cond_4
    iget-object v12, p0, Landroid/widget/AbsListView;->mBottomLineDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v12, :cond_5

    .line 177
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x6010050

    invoke-static {v12, v13}, Lmiui/util/UiUtils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, p0, Landroid/widget/AbsListView;->mBottomLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    :cond_5
    iget-object v4, p0, Landroid/widget/AbsListView;->mBottomLineDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 184
    .local v3, childCount:I
    if-lez v3, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v11

    .line 186
    .local v11, width:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    .line 187
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScrollX()I

    move-result v8

    .line 188
    .local v8, scrollX:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v9

    .line 190
    .local v9, scrollY:I
    add-int/lit8 v12, v3, -0x1

    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    sub-int/2addr v12, v9

    iget-object v13, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v6, v13

    if-gt v12, v13, :cond_7

    const/4 v5, 0x1

    .line 192
    .local v5, fit:Z
    :goto_3
    if-nez v5, :cond_1

    .line 193
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 194
    .local v1, bottomLineHeight:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int v2, v6, v12

    .line 195
    .local v2, bottomLineTop:I
    const/4 v12, 0x0

    add-int v13, v2, v1

    invoke-virtual {v4, v12, v2, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    .line 199
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 200
    .local v7, restoreCount:I
    int-to-float v12, v8

    int-to-float v13, v9

    invoke-virtual {p1, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    .line 190
    .end local v1           #bottomLineHeight:I
    .end local v2           #bottomLineTop:I
    .end local v5           #fit:Z
    .end local v7           #restoreCount:I
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 204
    .restart local v1       #bottomLineHeight:I
    .restart local v2       #bottomLineTop:I
    .restart local v5       #fit:Z
    :cond_8
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method static finishActionModeIfNeeded(Landroid/widget/AbsListView;Landroid/view/ActionMode;)V
    .locals 1
    .parameter "listView"
    .parameter "actionMode"

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 217
    :cond_0
    return-void
.end method

.method static initAbsListView(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter "listView"

    .prologue
    const v1, 0x7fffffff

    .line 220
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iput v1, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 222
    iput v1, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 225
    :cond_0
    invoke-static {p0}, Landroid/widget/AbsListView$Injector;->setChildSequenceStateTaggingListener(Landroid/widget/AbsListView;)V

    .line 226
    return-void
.end method

.method static isOutOfTouchRange(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "alv"
    .parameter "ev"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchPaddingLeft:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mTouchPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static scaleOverScrollDeltaY(Landroid/widget/AbsListView;II)I
    .locals 10
    .parameter "listView"
    .parameter "deltaY"
    .parameter "scrollY"

    .prologue
    .line 233
    move v5, p1

    .line 234
    .local v5, vRet:I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSpringOverScrollEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    const/4 v4, 0x0

    .line 236
    .local v4, t:F
    const/4 v3, 0x0

    .line 237
    .local v3, scale:F
    const/4 v0, 0x0

    .line 238
    .local v0, deltaYdiv:F
    int-to-float v6, p1

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 239
    .local v1, depth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 240
    int-to-float v6, p2

    iget v7, p0, Landroid/widget/AbsListView;->mScrollFY:F

    add-float/2addr v6, v7

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 241
    float-to-double v6, v4

    const-wide/high16 v8, 0x4008

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x42c4

    mul-float/2addr v6, v7

    const/high16 v7, 0x4000

    add-float v3, v6, v7

    .line 242
    int-to-float v6, v1

    div-float/2addr v6, v3

    add-float/2addr v0, v6

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iget v6, p0, Landroid/widget/AbsListView;->mScrollFY:F

    add-float/2addr v6, v0

    float-to-int v5, v6

    .line 245
    iget v6, p0, Landroid/widget/AbsListView;->mScrollFY:F

    add-float/2addr v6, v0

    int-to-float v7, v5

    sub-float/2addr v6, v7

    iput v6, p0, Landroid/widget/AbsListView;->mScrollFY:F

    .line 247
    .end local v0           #deltaYdiv:F
    .end local v1           #depth:I
    .end local v2           #i:I
    .end local v3           #scale:F
    .end local v4           #t:F
    :cond_1
    return v5
.end method

.method static setChildSequenceStateTaggingListener(Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 157
    sget-object v0, Landroid/widget/AbsListView$Injector;->mChildSequenceStateTaggingListener:Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChildSequenceStateTaggingListener(Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;)V

    .line 158
    return-void
.end method
