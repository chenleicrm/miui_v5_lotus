.class public Landroid/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final syncSource:I

.field final userId:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "account"
    .parameter "userId"
    .parameter "source"
    .parameter "authority"
    .parameter "extras"
    .parameter "expedited"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    .line 171
    iput p2, p0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    .line 172
    iput p3, p0, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 173
    iput-object p4, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    .line 174
    if-eqz p5, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p5, v0

    .end local p5
    :cond_0
    iput-object p5, p0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 175
    iput-boolean p6, p0, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 177
    return-void
.end method

.method constructor <init>(Landroid/content/SyncStorageEngine$PendingOperation;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    .line 181
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    .line 182
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 183
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 185
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iput v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 186
    iget-boolean v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v0, p0, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 187
    return-void
.end method
