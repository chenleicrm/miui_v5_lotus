.class public final Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
.super Ljava/lang/Object;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SimpleDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertDialogFragmentBuilder"
.end annotation


# instance fields
.field private mCancelable:Z

.field private mCreated:Z

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    iput p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    return-void
.end method


# virtual methods
.method public create()Lmiui/widget/SimpleDialogFragment;
    .locals 4

    .prologue
    iget-boolean v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "dialog has been created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCreated:Z

    new-instance v1, Lmiui/widget/SimpleDialogFragment;

    invoke-direct {v1}, Lmiui/widget/SimpleDialogFragment;-><init>()V

    .local v1, f:Lmiui/widget/SimpleDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msg_res_id"

    iget-object v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cancelable"

    iget-boolean v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "type"

    iget v3, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lmiui/widget/SimpleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setCancelable(Z)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0
    .parameter "cancelable"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mCancelable:Z

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0
    .parameter "message"

    .prologue
    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;
    .locals 0
    .parameter "title"

    .prologue
    iput-object p1, p0, Lmiui/widget/SimpleDialogFragment$AlertDialogFragmentBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
