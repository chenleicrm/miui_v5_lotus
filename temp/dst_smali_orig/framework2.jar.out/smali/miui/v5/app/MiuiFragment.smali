.class public Lmiui/v5/app/MiuiFragment;
.super Landroid/app/Fragment;
.source "MiuiFragment.java"

# interfaces
.implements Lmiui/v5/app/MiuiViewPagerItem;


# instance fields
.field private mIsBottomPlaceholderEnabled:Z

.field private mIsMenuBarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayoutObserver()Lmiui/v5/app/LayoutObserver;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public createMotionDetectStrategy()Lmiui/v5/widget/MotionDetectStrategy;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public createPageScrollEffect()Lmiui/v5/widget/PageScrollEffect;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBottomPlaceHolderHeight()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/v5/app/MiuiActivity;

    .local v0, activity:Lmiui/v5/app/MiuiActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/v5/app/MiuiActivity;->getBottomPlaceholderHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBottomPlaceholderEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragment;->mIsBottomPlaceholderEnabled:Z

    return v0
.end method

.method public isMenuBarEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragment;->mIsMenuBarEnabled:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragment;->mIsBottomPlaceholderEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/v5/app/MiuiFragment;->setBottomPlaceHolderEnabledInternal(Z)V

    :cond_0
    return-void
.end method

.method public onCreateMenuBar(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onInertiaMotion(II)V
    .locals 0
    .parameter "velocityY"
    .parameter "anchor"

    .prologue
    return-void
.end method

.method public onMenuBarClose(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    return-void
.end method

.method public onMenuBarItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuBarModeChange(Landroid/view/Menu;I)V
    .locals 0
    .parameter "menu"
    .parameter "mode"

    .prologue
    return-void
.end method

.method public onMenuBarOpen(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    return-void
.end method

.method public onPrepareMenuBar(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setBottomPlaceHolderEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-boolean v0, p0, Lmiui/v5/app/MiuiFragment;->mIsBottomPlaceholderEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lmiui/v5/app/MiuiFragment;->mIsBottomPlaceholderEnabled:Z

    invoke-virtual {p0, p1}, Lmiui/v5/app/MiuiFragment;->setBottomPlaceHolderEnabledInternal(Z)V

    goto :goto_0
.end method

.method protected setBottomPlaceHolderEnabledInternal(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragment;->getView()Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lmiui/v5/app/MiuiFragment;->getBottomPlaceHolderHeight()I

    move-result v4

    .local v4, placeHolderHeight:I
    if-lez v4, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .local v1, paddingLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .local v2, paddingRight:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .local v3, paddingTop:I
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .local v0, paddingBottom:I
    if-eqz p1, :cond_1

    add-int/2addr v0, v4

    :goto_0
    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .end local v0           #paddingBottom:I
    .end local v1           #paddingLeft:I
    .end local v2           #paddingRight:I
    .end local v3           #paddingTop:I
    .end local v4           #placeHolderHeight:I
    :cond_0
    return-void

    .restart local v0       #paddingBottom:I
    .restart local v1       #paddingLeft:I
    .restart local v2       #paddingRight:I
    .restart local v3       #paddingTop:I
    .restart local v4       #placeHolderHeight:I
    :cond_1
    sub-int/2addr v0, v4

    goto :goto_0
.end method

.method public setMenuBarEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Lmiui/v5/app/MiuiFragment;->mIsMenuBarEnabled:Z

    return-void
.end method
