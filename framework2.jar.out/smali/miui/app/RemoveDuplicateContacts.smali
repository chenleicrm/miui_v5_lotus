.class public Lmiui/app/RemoveDuplicateContacts;
.super Ljava/lang/Object;
.source "RemoveDuplicateContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/RemoveDuplicateContacts$ContactsInfo;,
        Lmiui/app/RemoveDuplicateContacts$MergeContacts;,
        Lmiui/app/RemoveDuplicateContacts$GroupsData;,
        Lmiui/app/RemoveDuplicateContacts$RawContactData;,
        Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DBG:Z = false

.field private static final NAME_SELECTION:Ljava/lang/String; = "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

.field public static final TAG:Ljava/lang/String; = "RemoveDuplicateContacts"

.field private static final sGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOtherMimeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    .line 61
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/gender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/bloodType"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/constellation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/animalSign"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/emotionStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/interest"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/hobby"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/degree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/schools"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/characteristic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/xiaomiId"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    const-string v1, "vnd.com.miui.cursor.item/lunarBirthday"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    return-void
.end method

.method public static getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 11
    .parameter "account"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 187
    new-array v7, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 191
    .local v7, selectionArgs:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    invoke-static {p1, v7}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 194
    .local v3, nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 196
    .local v0, count:I
    if-lez v0, :cond_1

    .line 197
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 200
    .local v4, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v10, :cond_0

    .line 204
    invoke-static {p1, v4, v2}, Lmiui/app/RemoveDuplicateContacts;->getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 207
    .local v5, rawContactsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    if-eqz v5, :cond_0

    .line 208
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 213
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5           #rawContactsIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    :cond_1
    return-object v6
.end method

.method private static getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;
    .locals 10
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/content/EntityIterator;"
        }
    .end annotation

    .prologue
    .local p1, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v6, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 378
    .local v9, rawContactId:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, " OR "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 385
    .end local v9           #rawContactId:Ljava/lang/Long;
    :cond_1
    sget-object v1, Lmiui/app/RemoveDuplicateContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 387
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 391
    :goto_1
    return-object v2

    :cond_2
    invoke-static {v7}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v2

    goto :goto_1
.end method

.method private static getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 14
    .parameter "account"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$GroupsData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 495
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "title"

    aput-object v0, v2, v3

    const-string v0, "sourceid"

    aput-object v0, v2, v5

    .line 500
    .local v2, COLUMNS:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 501
    .local v7, GROUP_ID:I
    const/4 v8, 0x1

    .line 502
    .local v8, GROUP_TITLE:I
    const/4 v6, 0x2

    .line 503
    .local v6, GROUPS_SOURCE_ID:I
    const-string v13, "account_name = ? AND account_type = ? "

    .line 505
    .local v13, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v3

    .line 508
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v9, "title,sourceid DESC"

    .line 509
    .local v9, ORDER_BY:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account_name = ? AND account_type = ? "

    const-string v5, "title,sourceid DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 510
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v12, groups:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    if-eqz v10, :cond_1

    .line 513
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    new-instance v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    invoke-direct {v11}, Lmiui/app/RemoveDuplicateContacts$GroupsData;-><init>()V

    .line 515
    .local v11, group:Lmiui/app/RemoveDuplicateContacts$GroupsData;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    .line 516
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    .line 517
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    .line 519
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 522
    .end local v11           #group:Lmiui/app/RemoveDuplicateContacts$GroupsData;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_1
    return-object v12
.end method

.method public static getMergeRawContacts([Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 30
    .parameter "accounts"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$MergeContacts;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v26, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$MergeContacts;>;"
    move-object/from16 v11, p0

    .local v11, arr$:[Landroid/accounts/Account;
    array-length v0, v11

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    move/from16 v19, v17

    .end local v17           #i$:I
    .local v19, i$:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    aget-object v10, v11, v19

    .line 645
    .local v10, account:Landroid/accounts/Account;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/4 v2, 0x0

    iget-object v0, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v27, v2

    const/4 v2, 0x1

    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v27, v2

    .line 649
    .local v27, selectionArgs:[Ljava/lang/String;
    const-string v2, "RemoveDuplicateContacts"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "start scan raw_contact of account "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lmiui/app/RemoveDuplicateContacts;->getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v22

    .line 654
    .local v22, nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 656
    .local v12, count:I
    if-nez v12, :cond_1

    .line 644
    .end local v19           #i$:I
    :cond_0
    add-int/lit8 v17, v19, 0x1

    .restart local v17       #i$:I
    move/from16 v19, v17

    .end local v17           #i$:I
    .restart local v19       #i$:I
    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v19           #i$:I
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 661
    .local v5, name:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 663
    .local v24, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v2

    const/16 v28, 0x2

    move/from16 v0, v28

    if-lt v2, v0, :cond_2

    .line 667
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v14

    .line 669
    .local v14, entities:Landroid/content/EntityIterator;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v25, rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$ContactsInfo;>;"
    :goto_2
    :try_start_0
    invoke-interface {v14}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 673
    invoke-interface {v14}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 674
    .local v15, entity:Landroid/content/Entity;
    invoke-virtual {v15}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 676
    .local v16, entityValues:Landroid/content/ContentValues;
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 677
    .local v8, id:J
    const-wide/16 v3, 0x0

    .line 678
    .local v3, photoId:J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v6, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v7, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Entity$NamedContentValues;

    .line 681
    .local v23, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v23

    iget-object v13, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 682
    .local v13, cv:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 683
    .local v21, mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 684
    const-string v2, "_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    .line 685
    :cond_4
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 686
    const-string v2, "data1"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 695
    .end local v3           #photoId:J
    .end local v6           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #id:J
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v15           #entity:Landroid/content/Entity;
    .end local v16           #entityValues:Landroid/content/ContentValues;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #mimeType:Ljava/lang/String;
    .end local v23           #ncv:Landroid/content/Entity$NamedContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    throw v2

    .line 687
    .restart local v3       #photoId:J
    .restart local v6       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #id:J
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v15       #entity:Landroid/content/Entity;
    .restart local v16       #entityValues:Landroid/content/ContentValues;
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v21       #mimeType:Ljava/lang/String;
    .restart local v23       #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_5
    :try_start_1
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    const-string v2, "data1"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 692
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v21           #mimeType:Ljava/lang/String;
    .end local v23           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_6
    new-instance v2, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;

    invoke-direct/range {v2 .. v9}, Lmiui/app/RemoveDuplicateContacts$ContactsInfo;-><init>(JLjava/lang/String;Ljava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 695
    .end local v3           #photoId:J
    .end local v6           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #id:J
    .end local v15           #entity:Landroid/content/Entity;
    .end local v16           #entityValues:Landroid/content/ContentValues;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v14}, Landroid/content/EntityIterator;->close()V

    .line 698
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v2, v0, :cond_2

    .line 699
    new-instance v2, Lmiui/app/RemoveDuplicateContacts$MergeContacts;

    move-object/from16 v0, v25

    invoke-direct {v2, v0, v5}, Lmiui/app/RemoveDuplicateContacts$MergeContacts;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 704
    .end local v5           #name:Ljava/lang/String;
    .end local v10           #account:Landroid/accounts/Account;
    .end local v12           #count:I
    .end local v14           #entities:Landroid/content/EntityIterator;
    .end local v22           #nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v24           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v25           #rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$ContactsInfo;>;"
    .end local v27           #selectionArgs:[Ljava/lang/String;
    .restart local v19       #i$:I
    :cond_8
    return-object v26
.end method

.method private static getNameWithRawContactIds(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .parameter "resolver"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v8, nameWithRawContactIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Long;>;>;"
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v3

    const-string v0, "_id"

    aput-object v0, v2, v4

    const-string v3, "deleted=0 AND account_name=? AND account_type=? AND data_set IS NULL "

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 252
    :goto_0
    return-object v5

    .line 233
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, name:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 237
    .local v9, rawContactId:J
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 239
    .local v11, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v11, :cond_1

    .line 240
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .restart local v11       #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v8, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 249
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #rawContactId:J
    .end local v11           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 245
    .restart local v7       #name:Ljava/lang/String;
    .restart local v9       #rawContactId:J
    .restart local v11       #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 249
    .end local v7           #name:Ljava/lang/String;
    .end local v9           #rawContactId:J
    .end local v11           #rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v8

    .line 252
    goto :goto_0
.end method

.method private static getNeedDeletedRawContacts(Landroid/content/ContentResolver;Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 31
    .parameter "resolver"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/RemoveDuplicateContacts$RawContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, rawContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_1

    .line 259
    :cond_0
    const/16 v24, 0x0

    .line 368
    :goto_0
    return-object v24

    .line 262
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 264
    .local v25, start:J
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getEntityByIds(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/content/EntityIterator;

    move-result-object v9

    .line 266
    .local v9, entities:Landroid/content/EntityIterator;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v23, rawContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 270
    invoke-interface {v9}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Entity;

    .line 272
    .local v10, entity:Landroid/content/Entity;
    new-instance v20, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    invoke-direct/range {v20 .. v20}, Lmiui/app/RemoveDuplicateContacts$RawContactData;-><init>()V

    .line 273
    .local v20, rawContact:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    invoke-virtual {v10}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v11

    .line 275
    .local v11, entityValues:Landroid/content/ContentValues;
    const-string v28, "_id"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setRawContactId(J)V

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    iput-object v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mName:Ljava/lang/String;

    .line 277
    const-string v28, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    iput-object v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    .line 279
    invoke-virtual {v10}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Entity$NamedContentValues;

    .line 280
    .local v19, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 281
    .local v3, cv:Landroid/content/ContentValues;
    const-string v28, "mimetype"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 284
    .local v17, mimeType:Ljava/lang/String;
    const-string v28, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 285
    const-string v28, "_id"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v20

    iput-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mPhotoId:J

    .line 287
    const-string v28, "data14"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    const/16 v28, 0x64

    :goto_3
    move/from16 v0, v28

    move-object/from16 v1, v20

    iput v0, v1, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 310
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v10           #entity:Landroid/content/Entity;
    .end local v11           #entityValues:Landroid/content/ContentValues;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v19           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v20           #rawContact:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :catchall_0
    move-exception v28

    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    throw v28

    .line 287
    .restart local v3       #cv:Landroid/content/ContentValues;
    .restart local v10       #entity:Landroid/content/Entity;
    .restart local v11       #entityValues:Landroid/content/ContentValues;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #mimeType:Ljava/lang/String;
    .restart local v19       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v20       #rawContact:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_3
    const/16 v28, 0xa

    goto :goto_3

    .line 289
    :cond_4
    :try_start_1
    const-string v28, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 290
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 291
    .local v12, groupId:J
    sget-object v28, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 292
    .local v27, title:Ljava/lang/String;
    if-nez v27, :cond_5

    const-string v27, ""

    .end local v27           #title:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 293
    .end local v12           #groupId:J
    :cond_6
    const-string v28, "vnd.android.cursor.item/im"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 294
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, data:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    .end local v4           #data:Ljava/lang/String;
    :cond_7
    const-string v28, "vnd.android.cursor.item/name"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 297
    sget-object v28, Lmiui/app/RemoveDuplicateContacts;->sOtherMimeTypes:Ljava/util/HashSet;

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 298
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .restart local v4       #data:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 300
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 303
    .end local v4           #data:Ljava/lang/String;
    :cond_8
    const-string v28, "RemoveDuplicateContacts"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ignore unknown mimetype "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 307
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v17           #mimeType:Ljava/lang/String;
    .end local v19           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_9
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 310
    .end local v10           #entity:Landroid/content/Entity;
    .end local v11           #entityValues:Landroid/content/ContentValues;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #rawContact:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_a
    invoke-interface {v9}, Landroid/content/EntityIterator;->close()V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 318
    .local v5, end:J
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 320
    .local v18, n:I
    const/16 v28, 0x2

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    .line 321
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 324
    :cond_b
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v24, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    add-int/lit8 v28, v18, -0x1

    move/from16 v0, v28

    if-ge v14, v0, :cond_13

    .line 328
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .line 330
    .local v21, rawContactA:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    invoke-virtual/range {v21 .. v21}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 327
    :cond_c
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 334
    :cond_d
    add-int/lit8 v16, v14, 0x1

    .local v16, j:I
    :goto_6
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 335
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .line 337
    .local v22, rawContactB:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    invoke-virtual/range {v22 .. v22}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->isDeleted()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 334
    :cond_e
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 342
    :cond_f
    invoke-virtual/range {v21 .. v22}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->compare(Lmiui/app/RemoveDuplicateContacts$RawContactData;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 344
    move-object/from16 v0, v21

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    .line 345
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 346
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 347
    :cond_10
    move-object/from16 v0, v21

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mN:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 348
    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 349
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 351
    :cond_11
    move-object/from16 v0, v22

    iget-object v0, v0, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_12

    .line 353
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 354
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 356
    :cond_12
    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RawContactData;->setDeleted(Z)V

    .line 357
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 364
    .end local v16           #j:I
    .end local v21           #rawContactA:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    .end local v22           #rawContactB:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 368
    .local v7, end1:J
    goto/16 :goto_0
.end method

.method public static declared-synchronized remove([Landroid/accounts/Account;Landroid/content/ContentResolver;Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;Z)I
    .locals 24
    .parameter "accounts"
    .parameter "resolver"
    .parameter "listener"
    .parameter "auto"

    .prologue
    .line 103
    const-class v21, Lmiui/app/RemoveDuplicateContacts;

    monitor-enter v21

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 104
    :cond_0
    const/16 v16, 0x0

    .line 181
    :goto_0
    monitor-exit v21

    return v16

    .line 107
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 108
    .local v17, start:J
    const/16 v16, 0x0

    .line 110
    .local v16, result:I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v13, needDeleted:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    if-eqz p2, :cond_2

    .line 113
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    .line 116
    :cond_2
    move-object/from16 v4, p0

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v3, v4, v11

    .line 117
    .local v3, account:Landroid/accounts/Account;
    sget-object v20, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 118
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v9

    .line 119
    .local v9, groups:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    .line 120
    .local v8, group:Lmiui/app/RemoveDuplicateContacts$GroupsData;
    sget-object v20, Lmiui/app/RemoveDuplicateContacts;->sGroups:Ljava/util/HashMap;

    iget-wide v0, v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    iget-object v0, v8, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 103
    .end local v3           #account:Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v8           #group:Lmiui/app/RemoveDuplicateContacts$GroupsData;
    .end local v9           #groups:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #len$:I
    .end local v13           #needDeleted:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    .end local v16           #result:I
    .end local v17           #start:J
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 123
    .restart local v3       #account:Landroid/accounts/Account;
    .restart local v4       #arr$:[Landroid/accounts/Account;
    .restart local v9       #groups:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #len$:I
    .restart local v13       #needDeleted:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$RawContactData;>;"
    .restart local v16       #result:I
    .restart local v17       #start:J
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lmiui/app/RemoveDuplicateContacts;->getDeletedRawContacts(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    add-int/lit8 v10, v11, 0x1

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_1

    .line 126
    .end local v3           #account:Landroid/accounts/Account;
    .end local v9           #groups:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    :cond_4
    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_c

    .line 127
    new-instance v5, Lmiui/provider/BatchOperation;

    const-string v20, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 130
    .local v5, batchOperation:Lmiui/provider/BatchOperation;
    if-eqz p2, :cond_5

    .line 131
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onBegin(I)V

    .line 135
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/app/RemoveDuplicateContacts$RawContactData;

    .line 136
    .local v15, rawContact:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v15, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mRawContactId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 138
    .local v19, uri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 141
    .local v14, operation:Landroid/content/ContentProviderOperation;
    iget-object v0, v15, Lmiui/app/RemoveDuplicateContacts$RawContactData;->mSourceId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 142
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    const-string v22, "caller_is_syncadapter"

    const-string v23, "true"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    .line 151
    :cond_6
    :goto_4
    if-eqz v14, :cond_7

    .line 152
    invoke-virtual {v5, v14}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 155
    :cond_7
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v20

    const/16 v22, 0x64

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 156
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 159
    :cond_8
    if-eqz p2, :cond_9

    .line 160
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onProgress(I)V

    .line 163
    :cond_9
    add-int/lit8 v16, v16, 0x1

    .line 164
    goto :goto_3

    .line 146
    :cond_a
    if-nez p3, :cond_6

    .line 148
    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    goto :goto_4

    .line 166
    .end local v14           #operation:Landroid/content/ContentProviderOperation;
    .end local v15           #rawContact:Lmiui/app/RemoveDuplicateContacts$RawContactData;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_b
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->size()I

    move-result v20

    if-lez v20, :cond_c

    .line 167
    invoke-virtual {v5}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    .line 171
    .end local v5           #batchOperation:Lmiui/provider/BatchOperation;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_c
    if-eqz p2, :cond_d

    .line 172
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lmiui/app/RemoveDuplicateContacts$RemoveDuplicateContactsListener;->onEnd(Z)V

    .line 175
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 181
    .local v6, end:J
    goto/16 :goto_0
.end method

.method public static removeGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)V
    .locals 35
    .parameter "account"
    .parameter "resolver"

    .prologue
    .line 537
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v19

    .line 539
    .local v19, groups:Ljava/util/List;,"Ljava/util/List<Lmiui/app/RemoveDuplicateContacts$GroupsData;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const-string v32, "mimetype=? AND data1=?"

    .line 545
    .local v32, where:Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 547
    .local v16, groupId:J
    const/16 v20, 0x0

    .local v20, i:I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 548
    if-nez v20, :cond_2

    .line 549
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v16, v0

    .line 547
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 551
    :cond_2
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 552
    .local v25, previousTitle:Ljava/lang/String;
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->title:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 553
    .local v30, title:Ljava/lang/String;
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v22, v0

    .line 554
    .local v22, id:J
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-object v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->sourceid:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 556
    .local v29, sourceId:Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/group_membership"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 562
    .local v6, selectionArgs:[Ljava/lang/String;
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 563
    .local v31, values:Landroid/content/ContentValues;
    const-string v2, "data1"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 564
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype=? AND data1=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v2, v1, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 565
    const-string v2, "RemoveDuplicateContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update contacts group from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v18, 0x0

    .line 569
    .local v18, groupUri:Landroid/net/Uri;
    if-nez v29, :cond_3

    .line 570
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 578
    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    const-string v2, "RemoveDuplicateContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete group "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 576
    :cond_3
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    goto :goto_3

    .line 581
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v18           #groupUri:Landroid/net/Uri;
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    iget-wide v0, v2, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v16, v0

    goto/16 :goto_2

    .line 589
    .end local v22           #id:J
    .end local v25           #previousTitle:Ljava/lang/String;
    .end local v29           #sourceId:Ljava/lang/String;
    .end local v30           #title:Ljava/lang/String;
    :cond_5
    invoke-static/range {p0 .. p1}, Lmiui/app/RemoveDuplicateContacts;->getGroups(Landroid/accounts/Account;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v19

    .line 591
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 592
    .local v28, rawContactIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 594
    .local v14, deleteDataId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "raw_contact_id"

    aput-object v3, v4, v2

    .line 595
    .local v4, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 596
    .local v8, DATA_ID:I
    const/4 v9, 0x1

    .line 598
    .local v9, RAW_CONTACT_ID:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/app/RemoveDuplicateContacts$GroupsData;

    .line 599
    .local v15, group:Lmiui/app/RemoveDuplicateContacts$GroupsData;
    invoke-virtual/range {v28 .. v28}, Ljava/util/HashSet;->clear()V

    .line 600
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/group_membership"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    iget-wide v0, v15, Lmiui/app/RemoveDuplicateContacts$GroupsData;->id:J

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 602
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mimetype=? AND data1=?"

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 604
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 606
    :goto_5
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 607
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 608
    .local v12, dataId:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 611
    .local v26, rawContactId:J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 612
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 618
    .end local v12           #dataId:J
    .end local v26           #rawContactId:J
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 614
    .restart local v12       #dataId:J
    .restart local v26       #rawContactId:J
    :cond_7
    :try_start_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 618
    .end local v12           #dataId:J
    .end local v26           #rawContactId:J
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 624
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v15           #group:Lmiui/app/RemoveDuplicateContacts$GroupsData;
    :cond_9
    new-instance v24, Lmiui/provider/BatchOperation;

    const-string v2, "com.android.contacts"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 625
    .local v24, operations:Lmiui/provider/BatchOperation;
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_a
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 626
    .local v22, id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    move-wide/from16 v0, v33

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 628
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    .line 630
    invoke-virtual/range {v24 .. v24}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_a

    .line 631
    invoke-virtual/range {v24 .. v24}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_6

    .line 635
    .end local v10           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v22           #id:Ljava/lang/Long;
    :cond_b
    invoke-virtual/range {v24 .. v24}, Lmiui/provider/BatchOperation;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 636
    invoke-virtual/range {v24 .. v24}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto/16 :goto_0
.end method
