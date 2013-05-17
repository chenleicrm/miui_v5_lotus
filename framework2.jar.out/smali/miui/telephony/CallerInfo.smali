.class public Lmiui/telephony/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final SP_NAME_COLUMN:I = 0x0

.field private static final SP_PHOTO_COLUMN:I = 0x1

.field private static final SP_PROJECTION:[Ljava/lang/String; = null

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/telephony/CallerInfo;->SP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAntiSpamQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
    .locals 12
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"
    .parameter "listener"
    .parameter "token"
    .parameter "cookie"

    .prologue
    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object p2

    .line 127
    :cond_1
    const/4 v8, 0x0

    .line 128
    .local v8, isCached:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-boolean v0, v0, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-boolean v0, v0, Lmiui/telephony/ExtraCallerInfo;->isMardked:Z

    if-nez v0, :cond_0

    .line 131
    invoke-static {p0, p1}, Lmiui/provider/dataupdate/AntiSpamUtils;->queryFromLocal(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;

    move-result-object v9

    .line 132
    .local v9, item:Lmiui/provider/dataupdate/MarkedNumberItem;
    if-eqz v9, :cond_2

    .line 133
    invoke-virtual {v9}, Lmiui/provider/dataupdate/MarkedNumberItem;->getProvider()I

    move-result v10

    .line 134
    .local v10, provider:I
    invoke-virtual {v9}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCatTitle()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, title:Ljava/lang/String;
    invoke-virtual {v9}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCount()I

    move-result v7

    .line 137
    .local v7, count:I
    const/16 v0, 0x67

    if-ne v10, v0, :cond_5

    .line 138
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    .line 139
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iput-object v11, v0, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 146
    .end local v7           #count:I
    .end local v10           #provider:I
    .end local v11           #title:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-boolean v0, v0, Lmiui/telephony/ExtraCallerInfo;->isMardked:Z

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-boolean v0, v0, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    if-eqz v0, :cond_4

    .line 147
    :cond_3
    const/4 v8, 0x1

    .line 152
    :cond_4
    invoke-static {p0}, Lmiui/provider/dataupdate/AntiSpamUtils;->isCloudAntispamEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lmiui/telephony/CallerInfo$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/telephony/CallerInfo$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmiui/telephony/CallerInfo$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 141
    .restart local v7       #count:I
    .restart local v10       #provider:I
    .restart local v11       #title:Ljava/lang/String;
    :cond_5
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/telephony/ExtraCallerInfo;->isMardked:Z

    .line 142
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iput-object v11, v0, Lmiui/telephony/ExtraCallerInfo;->markTitle:Ljava/lang/String;

    .line 143
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iput v7, v0, Lmiui/telephony/ExtraCallerInfo;->markCount:I

    goto :goto_1
.end method

.method public static doSpNumberQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 11
    .parameter "context"
    .parameter "number"
    .parameter "previousResult"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-boolean v0, v0, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    if-nez v0, :cond_1

    .line 85
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v10

    .line 86
    .local v10, pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, address:Ljava/lang/String;
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lmiui/telephony/CallerInfo;->SP_PROJECTION:[Ljava/lang/String;

    const-string v3, "addr=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 93
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    .line 95
    iget-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 97
    .local v9, photoData:[B
    if-eqz v9, :cond_0

    .line 98
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    .local v8, inputStream:Ljava/io/InputStream;
    if-eqz v8, :cond_0

    .line 100
    invoke-static {v8, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v8           #inputStream:Ljava/io/InputStream;
    .end local v9           #photoData:[B
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    return-object p2

    .line 106
    .restart local v6       #address:Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v10       #pn:Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getColumnIndex(Landroid/net/Uri;Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 4
    .parameter "contactRef"
    .parameter "defaultName"
    .parameter "cursor"

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, url:Ljava/lang/String;
    move-object v1, p1

    .line 199
    .local v1, columnName:Ljava/lang/String;
    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    :cond_0
    const-string v3, "number"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    const-string v1, "data1"

    .line 211
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, columnIndex:I
    :goto_1
    return v0

    .line 203
    .end local v0           #columnIndex:I
    :cond_2
    const-string v3, "type"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    const-string v1, "data2"

    goto :goto_0

    .line 205
    :cond_3
    const-string v3, "label"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    const-string v1, "data3"

    goto :goto_0

    .line 207
    :cond_4
    const-string v3, "normalized_number"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    const-string v1, "data4"

    goto :goto_0

    .line 211
    :cond_5
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getPresentation(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "number"

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    .line 53
    :goto_0
    return v0

    .line 48
    :cond_1
    const-string v0, "-2"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    goto :goto_0

    .line 50
    :cond_2
    const-string v0, "-3"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    goto :goto_0

    .line 53
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    goto :goto_0
.end method

.method public static updateDisplayName(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V
    .locals 8
    .parameter "context"
    .parameter "ci"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x20

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 60
    const-string v5, "display_name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, columnIndex:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 62
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v4, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    const v5, 0x60c0040

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, delimiter:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 69
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v1           #columnIndex:I
    .end local v2           #delimiter:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 79
    return-void

    .line 72
    .restart local v1       #columnIndex:I
    .restart local v2       #delimiter:Ljava/lang/String;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
