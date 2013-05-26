.class Landroid/view/ViewGroup$Injector;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static CHILD_SEQUENCE_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x6010013

    aput v2, v0, v1

    sput-object v0, Landroid/view/ViewGroup$Injector;->CHILD_SEQUENCE_STATE:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initTagChildSequenceState(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v2, Landroid/view/ViewGroup$Injector;->CHILD_SEQUENCE_STATE:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p0}, Lmiui/util/UiUtils;->isV5Ui(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 110
    .local v1, value:Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return v1

    .end local v1           #value:Z
    :cond_0
    move v2, v3

    .line 109
    goto :goto_0
.end method

.method static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 115
    iget-boolean v11, p0, Landroid/view/ViewGroup;->mTagChildrenSequenceState:Z

    if-nez v11, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v6, 0x1

    .line 120
    .local v6, isFirst:Z
    const/4 v8, 0x0

    .line 121
    .local v8, taggingChild:Landroid/view/View;
    const/4 v7, 0x1

    .line 122
    .local v7, prevDiff:Z
    const/4 v9, -0x1

    .line 123
    .local v9, taggingChildDrawableId:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 124
    .local v1, childrenCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_d

    .line 125
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getId()I

    move-result v4

    .line 128
    .local v4, drawableId:I
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    .line 129
    .local v10, visibility:I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_2

    if-nez v10, :cond_2

    .line 130
    const/4 v10, 0x4

    .line 132
    :cond_2
    sparse-switch v10, :sswitch_data_0

    .line 124
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 127
    .end local v4           #drawableId:I
    .end local v10           #visibility:I
    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    .line 134
    .restart local v4       #drawableId:I
    .restart local v10       #visibility:I
    :sswitch_0
    if-eqz v6, :cond_5

    .line 135
    const/4 v6, 0x0

    .line 136
    iget-object v11, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    if-nez v11, :cond_4

    const/4 v7, 0x1

    .line 151
    :goto_4
    move v9, v4

    .line 152
    move-object v8, v0

    .line 153
    goto :goto_3

    .line 136
    :cond_4
    iget-object v11, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    invoke-interface {v11, p0, v0}, Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;->onTaggingFirstChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v7

    goto :goto_4

    .line 139
    :cond_5
    if-nez v8, :cond_6

    .line 140
    const/4 v7, 0x1

    goto :goto_4

    .line 142
    :cond_6
    if-eq v4, v9, :cond_7

    const/4 v3, 0x1

    .line 143
    .local v3, diff:Z
    :goto_5
    if-eqz v7, :cond_9

    .line 144
    if-eqz v3, :cond_8

    const v11, 0x6010039

    :goto_6
    invoke-virtual {v8, v11}, Landroid/view/View;->setAdditionalState(I)V

    .line 148
    :goto_7
    move v7, v3

    goto :goto_4

    .line 142
    .end local v3           #diff:Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 144
    .restart local v3       #diff:Z
    :cond_8
    const v11, 0x6010036

    goto :goto_6

    .line 146
    :cond_9
    if-eqz v3, :cond_a

    const v11, 0x6010037

    :goto_8
    invoke-virtual {v8, v11}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_7

    :cond_a
    const v11, 0x6010038

    goto :goto_8

    .line 155
    .end local v3           #diff:Z
    :sswitch_1
    const/4 v6, 0x0

    .line 156
    if-eqz v8, :cond_b

    .line 157
    if-eqz v7, :cond_c

    const v11, 0x6010039

    :goto_9
    invoke-virtual {v8, v11}, Landroid/view/View;->setAdditionalState(I)V

    .line 159
    :cond_b
    const/4 v7, 0x1

    .line 160
    const/4 v9, -0x1

    .line 161
    const/4 v8, 0x0

    goto :goto_3

    .line 157
    :cond_c
    const v11, 0x6010037

    goto :goto_9

    .line 166
    .end local v0           #child:Landroid/view/View;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #drawableId:I
    .end local v10           #visibility:I
    :cond_d
    if-eqz v8, :cond_0

    .line 167
    iget-object v11, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    if-nez v11, :cond_e

    const/4 v3, 0x1

    .line 169
    .restart local v3       #diff:Z
    :goto_a
    if-eqz v7, :cond_10

    .line 170
    if-eqz v3, :cond_f

    const v11, 0x6010039

    :goto_b
    invoke-virtual {v8, v11}, Landroid/view/View;->setAdditionalState(I)V

    goto/16 :goto_0

    .line 167
    .end local v3           #diff:Z
    :cond_e
    iget-object v11, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    invoke-interface {v11, p0, v8}, Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;->onTaggingLastChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v3

    goto :goto_a

    .line 170
    .restart local v3       #diff:Z
    :cond_f
    const v11, 0x6010036

    goto :goto_b

    .line 172
    :cond_10
    if-eqz v3, :cond_11

    const v11, 0x6010037

    :goto_c
    invoke-virtual {v8, v11}, Landroid/view/View;->setAdditionalState(I)V

    goto/16 :goto_0

    :cond_11
    const v11, 0x6010038

    goto :goto_c

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
