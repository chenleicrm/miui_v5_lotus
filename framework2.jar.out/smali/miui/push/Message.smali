.class public Lmiui/push/Message;
.super Lmiui/push/Packet;
.source "Message.java"


# static fields
.field public static final MSG_TYPE_CHAT:Ljava/lang/String; = "chat"

.field public static final MSG_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final MSG_TYPE_GROUPCHAT:Ljava/lang/String; = "groupchat"

.field public static final MSG_TYPE_HEADLINE:Ljava/lang/String; = "hearline"

.field public static final MSG_TYPE_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field private language:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mEncrypted:Z

.field private mSubject:Ljava/lang/String;

.field private mTransient:Z

.field private thread:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 103
    iput-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 110
    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 112
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 112
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 144
    const-string v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 145
    const-string v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 146
    const-string v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 147
    const-string v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 148
    const-string v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 149
    const-string v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 150
    const-string v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "to"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 103
    iput-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 110
    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 112
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 128
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "to"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 103
    iput-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 110
    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 112
    iput-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 138
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 139
    iput-object p2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 392
    :cond_0
    :goto_0
    return v2

    .line 372
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 375
    check-cast v0, Lmiui/push/Message;

    .line 377
    .local v0, message:Lmiui/push/Message;
    invoke-super {p0, v0}, Lmiui/push/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 380
    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    :cond_2
    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    :cond_3
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    :cond_4
    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    :cond_5
    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_a

    :goto_1
    move v2, v1

    goto :goto_0

    .line 380
    :cond_6
    iget-object v3, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 383
    :cond_7
    iget-object v3, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 386
    :cond_8
    iget-object v3, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 389
    :cond_9
    iget-object v3, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_a
    move v1, v2

    .line 392
    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypted()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 399
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 400
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 401
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 402
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 403
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 398
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 399
    goto :goto_1

    :cond_3
    move v2, v1

    .line 400
    goto :goto_2

    :cond_4
    move v2, v1

    .line 401
    goto :goto_3
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 172
    iput-object p1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 239
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .parameter "encrypted"

    .prologue
    .line 186
    iput-boolean p1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 187
    return-void
.end method

.method public setIsTransient(Z)V
    .locals 0
    .parameter "isTransient"

    .prologue
    .line 164
    iput-boolean p1, p0, Lmiui/push/Message;->mTransient:Z

    .line 165
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 281
    iput-object p1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 215
    iput-object p1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 261
    iput-object p1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 182
    iput-object p1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 286
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const-string v1, "ext_msg_type"

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "ext_msg_lang"

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 294
    const-string v1, "ext_msg_sub"

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_2
    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 297
    const-string v1, "ext_msg_body"

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_3
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 300
    const-string v1, "ext_msg_thread"

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_4
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 303
    const-string v1, "ext_msg_appid"

    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_5
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_6

    .line 306
    const-string v1, "ext_msg_trans"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    :cond_6
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_0
    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 318
    const-string v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_2
    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 324
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_3
    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 327
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_4
    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 330
    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_5
    iget-boolean v2, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v2, :cond_6

    .line 333
    const-string v2, " transient=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_6
    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 336
    const-string v2, " appid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_7
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 339
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_8
    iget-boolean v2, p0, Lmiui/push/Message;->mEncrypted:Z

    if-eqz v2, :cond_9

    .line 342
    const-string v2, " s=\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_9
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 347
    const-string v2, "<subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v2, "</subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_a
    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 351
    const-string v2, "<body>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_b
    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 354
    const-string v2, "<thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thread>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_c
    const-string v2, "error"

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 358
    invoke-virtual {p0}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .line 359
    .local v1, error:Lmiui/push/XMPPError;
    if-eqz v1, :cond_d

    .line 360
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .end local v1           #error:Lmiui/push/XMPPError;
    :cond_d
    invoke-virtual {p0}, Lmiui/push/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v2, "</message>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
