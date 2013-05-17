.class public Lmiui/widget/SyncStatePreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStatePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncStatePreference"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mActivating:Z

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mNoSim:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lmiui/widget/SyncStatePreference;->mIsActive:Z

    iput-boolean v1, p0, Lmiui/widget/SyncStatePreference;->mIsPending:Z

    iput-boolean v1, p0, Lmiui/widget/SyncStatePreference;->mFailed:Z

    iput-boolean v1, p0, Lmiui/widget/SyncStatePreference;->mNoSim:Z

    iput-boolean v1, p0, Lmiui/widget/SyncStatePreference;->mActivating:Z

    iput-boolean v1, p0, Lmiui/widget/SyncStatePreference;->mOneTimeSyncMode:Z

    iput-object p2, p0, Lmiui/widget/SyncStatePreference;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lmiui/widget/SyncStatePreference;->mAuthority:Ljava/lang/String;

    const v0, 0x6030013

    invoke-virtual {p0, v0}, Lmiui/widget/SyncStatePreference;->setLayoutResource(I)V

    const v0, 0x6030012

    invoke-virtual {p0, v0}, Lmiui/widget/SyncStatePreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mIsActive:Z

    iput-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mIsPending:Z

    iput-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mFailed:Z

    iput-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mNoSim:Z

    iput-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mActivating:Z

    iput-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mOneTimeSyncMode:Z

    const v0, 0x6030013

    invoke-virtual {p0, v0}, Lmiui/widget/SyncStatePreference;->setLayoutResource(I)V

    const v0, 0x6030012

    invoke-virtual {p0, v0}, Lmiui/widget/SyncStatePreference;->setWidgetLayoutResource(I)V

    iput-object v1, p0, Lmiui/widget/SyncStatePreference;->mAccount:Landroid/accounts/Account;

    iput-object v1, p0, Lmiui/widget/SyncStatePreference;->mAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/SyncStatePreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/widget/SyncStatePreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v8, 0x60b0087

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lmiui/widget/AnimatedImageView;

    .local v6, syncActiveView:Lmiui/widget/AnimatedImageView;
    const v8, 0x60b0088

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, syncFailedView:Landroid/view/View;
    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mIsActive:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mIsPending:Z

    if-eqz v8, :cond_3

    :cond_0
    const/4 v0, 0x1

    .local v0, activeVisible:Z
    :goto_0
    if-eqz v0, :cond_4

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6, v8}, Lmiui/widget/AnimatedImageView;->setVisibility(I)V

    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mIsActive:Z

    invoke-virtual {v6, v8}, Lmiui/widget/AnimatedImageView;->setAnimating(Z)V

    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mFailed:Z

    if-eqz v8, :cond_5

    if-nez v0, :cond_5

    const/4 v3, 0x1

    .local v3, failedVisible:Z
    :goto_2
    if-eqz v3, :cond_6

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, checkBox:Landroid/view/View;
    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mOneTimeSyncMode:Z

    if-eqz v8, :cond_7

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, summary:Landroid/widget/TextView;
    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x60c01e6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5           #summary:Landroid/widget/TextView;
    :goto_4
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .restart local v5       #summary:Landroid/widget/TextView;
    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mNoSim:Z

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x60c018a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_5
    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, checkableView:Landroid/view/View;
    if-eqz v2, :cond_2

    instance-of v8, v2, Landroid/widget/Checkable;

    if-eqz v8, :cond_2

    check-cast v2, Landroid/widget/Checkable;

    .end local v2           #checkableView:Landroid/view/View;
    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->isChecked()Z

    move-result v8

    invoke-interface {v2, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_2
    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .local v4, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    const/high16 v8, 0x3f80

    :goto_6
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .end local v0           #activeVisible:Z
    .end local v1           #checkBox:Landroid/view/View;
    .end local v3           #failedVisible:Z
    .end local v4           #iconView:Landroid/widget/ImageView;
    .end local v5           #summary:Landroid/widget/TextView;
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .restart local v0       #activeVisible:Z
    :cond_4
    const/16 v8, 0x8

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .restart local v3       #failedVisible:Z
    :cond_6
    const/16 v8, 0x8

    goto/16 :goto_3

    .restart local v1       #checkBox:Landroid/view/View;
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .restart local v5       #summary:Landroid/widget/TextView;
    :cond_8
    iget-boolean v8, p0, Lmiui/widget/SyncStatePreference;->mActivating:Z

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x60c0002

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .restart local v4       #iconView:Landroid/widget/ImageView;
    :cond_a
    const v8, 0x3e99999a

    goto :goto_6
.end method

.method protected onClick()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/widget/SyncStatePreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    :cond_0
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    iput-object p1, p0, Lmiui/widget/SyncStatePreference;->mAccount:Landroid/accounts/Account;

    return-void
.end method

.method public setActivating(Z)V
    .locals 0
    .parameter "activating"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SyncStatePreference;->mActivating:Z

    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SyncStatePreference;->mIsActive:Z

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->notifyChanged()V

    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 0
    .parameter "authority"

    .prologue
    iput-object p1, p0, Lmiui/widget/SyncStatePreference;->mAuthority:Ljava/lang/String;

    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SyncStatePreference;->mFailed:Z

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->notifyChanged()V

    return-void
.end method

.method public setNoSim(Z)V
    .locals 0
    .parameter "noSim"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SyncStatePreference;->mNoSim:Z

    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter "oneTimeSyncMode"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SyncStatePreference;->mOneTimeSyncMode:Z

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->notifyChanged()V

    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SyncStatePreference;->mIsPending:Z

    invoke-virtual {p0}, Lmiui/widget/SyncStatePreference;->notifyChanged()V

    return-void
.end method
