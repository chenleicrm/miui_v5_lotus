.class final Lcom/miui/internal/v5/app/ActionBarImpl$2;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/v5/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    .local v0, impl:Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    .local v0, impl:Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;

    .local v0, impl:Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mSystemLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_0
    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/internal/v5/app/ActionBarImpl$TabImpl;->mUserLisenter:Landroid/app/ActionBar$TabListener;

    invoke-interface {v1, p1, p2}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_1
    return-void
.end method
