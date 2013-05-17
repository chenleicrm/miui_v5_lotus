.class public Lmiui/widget/CheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "CheckedTextView.java"


# static fields
.field private static final CHECKED_STATE_SET:[I = null

.field public static final CHECK_MARK_PADDING:I = 0xa


# instance fields
.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 126
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 130
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 132
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->invalidate()V

    .line 134
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/CheckedTextView;->jumpDrawablesToCurrentState()V

    .line 144
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 145
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 115
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CheckedTextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 116
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lmiui/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lmiui/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 119
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 168
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingLeft()I

    move-result v1

    .line 170
    .local v1, x:I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingTop()I

    move-result v2

    .line 172
    .local v2, y:I
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 173
    .local v0, height:I
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 186
    :goto_0
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int v5, v2, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 190
    iget-object v3, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 191
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 196
    .end local v0           #height:I
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_1
    return-void

    .line 176
    .restart local v0       #height:I
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getGravity()I

    move-result v3

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 181
    :sswitch_0
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getHeight()I

    move-result v3

    sub-int v2, v3, v0

    .line 179
    goto :goto_0

    .line 194
    .end local v0           #height:I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 201
    const-class v0, Lmiui/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 202
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 203
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 208
    const-class v0, Lmiui/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 210
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 211
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->onMeasure(II)V

    .line 150
    iget-object v4, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 153
    .local v2, widthMode:I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v3

    .line 154
    .local v3, widthSize:I
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getMeasuredHeight()I

    move-result v0

    .line 156
    .local v0, heightSize:I
    move v1, v3

    .line 158
    .local v1, width:I
    const/high16 v4, 0x4000

    if-eq v2, v4, :cond_0

    .line 159
    iget-object v4, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v1, v4, 0xa

    .line 162
    :cond_0
    invoke-virtual {p0, v1, v0}, Lmiui/widget/CheckedTextView;->setMeasuredDimension(II)V

    .line 164
    .end local v0           #heightSize:I
    .end local v1           #width:I
    .end local v2           #widthMode:I
    .end local v3           #widthSize:I
    :cond_1
    return-void
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 87
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 90
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 91
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 92
    iput-object p1, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 94
    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setMinHeight(I)V

    .line 96
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 65
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 66
    iput-boolean p1, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    .line 67
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->refreshDrawableState()V

    .line 68
    invoke-virtual {p0}, Lmiui/widget/CheckedTextView;->notifyAccessibilityStateChanged()V

    .line 70
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lmiui/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/CheckedTextView;->setChecked(Z)V

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
