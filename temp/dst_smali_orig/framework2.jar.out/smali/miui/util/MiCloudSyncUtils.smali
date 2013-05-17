.class public Lmiui/util/MiCloudSyncUtils;
.super Ljava/lang/Object;
.source "MiCloudSyncUtils.java"


# static fields
.field private static final AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
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
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    sget-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    const-string v1, "sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    const-string v1, "call_log"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static needActivate(Ljava/lang/String;)Z
    .locals 1
    .parameter "authority"

    .prologue
    sget-object v0, Lmiui/util/MiCloudSyncUtils;->AUTHORITIES_NEED_ACTIVATE:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "syncOn"

    .prologue
    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateSyncStatus(Landroid/content/Context;Ljava/util/List;Lmiui/widget/SyncStatePreference;ZZZZLjava/lang/String;)V
    .locals 22
    .parameter "context"
    .parameter
    .parameter "syncPref"
    .parameter "updateSummary"
    .parameter "simReady"
    .parameter "needActivate"
    .parameter "isActivating"
    .parameter "summary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Lmiui/widget/SyncStatePreference;",
            "ZZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .local v9, mDateFormat:Ljava/text/DateFormat;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    .local v10, mTimeFormat:Ljava/text/DateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .local v6, date:Ljava/util/Date;
    invoke-virtual/range {p2 .. p2}, Lmiui/widget/SyncStatePreference;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .local v4, authority:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lmiui/widget/SyncStatePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v12

    .local v12, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    .local v15, syncEnabled:Z
    if-nez v12, :cond_4

    const/4 v5, 0x0

    .local v5, authorityIsPending:Z
    :goto_0
    if-nez v12, :cond_5

    const/4 v7, 0x0

    .local v7, initialSync:Z
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lmiui/util/MiCloudSyncUtils;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .local v3, activelySyncing:Z
    if-eqz v12, :cond_6

    iget-wide v0, v12, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    const/4 v8, 0x1

    .local v8, lastSyncFailed:Z
    :goto_2
    if-nez v15, :cond_0

    const/4 v8, 0x0

    :cond_0
    if-eqz p3, :cond_2

    if-nez v12, :cond_7

    const-wide/16 v13, 0x0

    .local v13, successEndTime:J
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-eqz v18, :cond_8

    invoke-virtual {v6, v13, v14}, Ljava/util/Date;->setTime(J)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, timeString:Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v13           #successEndTime:J
    .end local v17           #timeString:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v16

    .local v16, syncState:I
    if-eqz v3, :cond_9

    if-ltz v16, :cond_9

    if-nez v7, :cond_9

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setActive(Z)V

    if-eqz v5, :cond_a

    if-ltz v16, :cond_a

    if-nez v7, :cond_a

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setPending(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lmiui/widget/SyncStatePreference;->setFailed(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lmiui/widget/SyncStatePreference;->setChecked(Z)V

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v11

    .local v11, masterSyncAutomatically:Z
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    if-eqz v11, :cond_3

    if-eqz p5, :cond_3

    if-nez p4, :cond_b

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setNoSim(Z)V

    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setActivating(Z)V

    if-eqz p4, :cond_c

    if-nez p6, :cond_c

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setEnabled(Z)V

    :cond_3
    return-void

    .end local v3           #activelySyncing:Z
    .end local v5           #authorityIsPending:Z
    .end local v7           #initialSync:Z
    .end local v8           #lastSyncFailed:Z
    .end local v11           #masterSyncAutomatically:Z
    .end local v16           #syncState:I
    :cond_4
    iget-boolean v5, v12, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_0

    .restart local v5       #authorityIsPending:Z
    :cond_5
    iget-boolean v7, v12, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_1

    .restart local v3       #activelySyncing:Z
    .restart local v7       #initialSync:Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .restart local v8       #lastSyncFailed:Z
    :cond_7
    iget-wide v13, v12, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    goto/16 :goto_3

    .restart local v13       #successEndTime:J
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lmiui/widget/SyncStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .end local v13           #successEndTime:J
    .restart local v16       #syncState:I
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    :cond_a
    const/16 v18, 0x0

    goto :goto_6

    .restart local v11       #masterSyncAutomatically:Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_7

    :cond_c
    const/16 v18, 0x0

    goto :goto_8
.end method
