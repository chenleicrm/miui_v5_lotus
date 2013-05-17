.class Lmiui/maml/elements/MusicControlScreenElement$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicControlScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/MusicControlScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setTrackInfo(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    const-string v2, "track"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, title:Ljava/lang/String;
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, artist:Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-boolean v2, v2, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "title"

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v6}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$602(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;

    .line 205
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    new-instance v3, Lmiui/maml/util/IndexedStringVariable;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    iget-object v4, v4, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v5, "artist"

    iget-object v6, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    invoke-virtual {v6}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$702(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;

    .line 209
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v7}, Lmiui/maml/elements/MusicControlScreenElement;->access$402(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    .line 213
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    if-nez v2, :cond_3

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v7}, Lmiui/maml/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 218
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 225
    :goto_1
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lmiui/maml/elements/TextScreenElement;->show(Z)V

    goto :goto_0

    .line 220
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 221
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    const-string v3, "%s   %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    const-string v2, "other"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, extra:Ljava/lang/String;
    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 178
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    .line 195
    .end local v1           #extra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v1       #extra:Ljava/lang/String;
    :cond_1
    const-string v2, "meta_changed_album"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const/4 v3, 0x1

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V
    invoke-static {v2, p2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$100(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$200(Lmiui/maml/elements/MusicControlScreenElement;)V

    goto :goto_0

    .line 184
    .end local v1           #extra:Ljava/lang/String;
    :cond_3
    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 186
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    :cond_4
    const-string v2, "com.miui.player.refreshprogress"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    const-string v3, "blocking"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z
    invoke-static {v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->access$402(Lmiui/maml/elements/MusicControlScreenElement;Z)Z

    goto :goto_0

    .line 189
    :cond_5
    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #getter for: Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;
    invoke-static {v2}, Lmiui/maml/elements/MusicControlScreenElement;->access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_6

    .line 191
    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicControlScreenElement$1;->setTrackInfo(Landroid/content/Intent;)V

    .line 193
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement$1;->this$0:Lmiui/maml/elements/MusicControlScreenElement;

    #calls: Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lmiui/maml/elements/MusicControlScreenElement;->access$000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V

    goto :goto_0
.end method
