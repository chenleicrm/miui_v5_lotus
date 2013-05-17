.class public final Lmiui/provider/ExtraTelephony$Sms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Sms$Intents;
    }
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ADDRESSES:Ljava/lang/String; = "addresses"

.field public static final BIND_ID:Ljava/lang/String; = "bind_id"

.field public static final BLOCKED:Ljava/lang/String; = "blocked"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final MARKER:Ljava/lang/String; = "marker"

.field public static final MX_ID:Ljava/lang/String; = "mx_id"

.field public static final MX_STATUS:Ljava/lang/String; = "mx_status"

.field public static final OUT_TIME:Ljava/lang/String; = "out_time"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SYNC_STATE:Ljava/lang/String; = "sync_state"

.field public static final TIMED:Ljava/lang/String; = "timed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static addMiMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    const/4 v3, 0x1

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 153
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz p5, :cond_0

    .line 155
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz p7, :cond_1

    .line 161
    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    .line 164
    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    :cond_2
    const-string v1, "mx_status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 157
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;I)Z
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "error"
    .parameter "outTime"
    .parameter "status"
    .parameter "mxStatus"

    .prologue
    .line 173
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lmiui/provider/ExtraTelephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;ILjava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;IILjava/lang/Long;Ljava/lang/Integer;ILjava/lang/Long;)Z
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "error"
    .parameter "outTime"
    .parameter "status"
    .parameter "mxStatus"
    .parameter "mxId"

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 233
    :goto_0
    return v1

    .line 197
    :cond_0
    const/4 v8, 0x0

    .line 198
    .local v8, markAsUnread:Z
    const/4 v7, 0x0

    .line 199
    .local v7, markAsRead:Z
    packed-switch p2, :pswitch_data_0

    .line 212
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :pswitch_0
    const/4 v7, 0x1

    .line 215
    :goto_1
    :pswitch_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    if-eqz v8, :cond_5

    .line 218
    const-string v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :cond_1
    :goto_2
    if-eqz p4, :cond_2

    .line 223
    const-string v1, "out_time"

    invoke-virtual {v4, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    :cond_2
    if-eqz p5, :cond_3

    .line 226
    const-string v1, "status"

    invoke-virtual {v4, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    :cond_3
    const-string v1, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v1, "mx_status"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    if-eqz p7, :cond_4

    .line 231
    const-string v1, "mx_id"

    move-object/from16 v0, p7

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v9, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    .line 209
    .end local v4           #values:Landroid/content/ContentValues;
    :pswitch_2
    const/4 v8, 0x1

    .line 210
    goto :goto_1

    .line 219
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_5
    if-eqz v7, :cond_1

    .line 220
    const-string v1, "read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 233
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
