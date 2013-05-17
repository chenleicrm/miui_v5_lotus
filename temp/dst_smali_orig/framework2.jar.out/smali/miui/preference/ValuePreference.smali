.class public Lmiui/preference/ValuePreference;
.super Landroid/preference/Preference;
.source "ValuePreference.java"


# instance fields
.field private mRightArrowRes:I

.field private mShowRightArrow:Z

.field private mValue:Ljava/lang/CharSequence;

.field private mValueRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/preference/ValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x603003d

    invoke-virtual {p0, v0}, Lmiui/preference/ValuePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValueRes()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/preference/ValuePreference;->mValueRes:I

    return v0
.end method

.method public isShowRightArrow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v5, 0x60b0078

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, valueView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getValue()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, value:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v1           #value:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v5, 0x60b0077

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, rightArrowView:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v3, p0, Lmiui/preference/ValuePreference;->mRightArrowRes:I

    if-eqz v3, :cond_1

    iget v3, p0, Lmiui/preference/ValuePreference;->mRightArrowRes:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void

    .end local v0           #rightArrowView:Landroid/widget/ImageView;
    .restart local v1       #value:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v1           #value:Ljava/lang/CharSequence;
    .restart local v0       #rightArrowView:Landroid/widget/ImageView;
    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public setRightArrowRes(I)V
    .locals 0
    .parameter "rightArrowRes"

    .prologue
    iput p1, p0, Lmiui/preference/ValuePreference;->mRightArrowRes:I

    return-void
.end method

.method public setShowRightArrow(Z)V
    .locals 0
    .parameter "isShowRightArrow"

    .prologue
    iput-boolean p1, p0, Lmiui/preference/ValuePreference;->mShowRightArrow:Z

    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "valueResId"

    .prologue
    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    iput p1, p0, Lmiui/preference/ValuePreference;->mValueRes:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/preference/ValuePreference;->mValueRes:I

    iput-object p1, p0, Lmiui/preference/ValuePreference;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lmiui/preference/ValuePreference;->notifyChanged()V

    :cond_2
    return-void
.end method
