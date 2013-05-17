.class public abstract Lmiui/analytics/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final SPLITTER:C = '$'

.field protected static sDispatcher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/Dispatchable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mEventId:Ljava/lang/String;

.field protected mPolicy:Ljava/lang/String;

.field protected mTrackTime:J

.field protected mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/analytics/Event;->setTime(J)V

    return-void
.end method

.method public static setDispatcher(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/analytics/Dispatchable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, dispatcher:Ljava/util/List;,"Ljava/util/List<Lmiui/analytics/Dispatchable;>;"
    sput-object p0, Lmiui/analytics/Event;->sDispatcher:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .local v2, obj:Lmiui/analytics/Event;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lmiui/analytics/Event;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract dispatch()V
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/analytics/Event;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/analytics/Event;->mPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/analytics/Event;->mTrackTime:J

    return-wide v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/analytics/Event;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "event_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/Event;->mEventId:Ljava/lang/String;

    const-string v0, "time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/analytics/Event;->mTrackTime:J

    :cond_0
    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0
    .parameter "policy"

    .prologue
    iput-object p1, p0, Lmiui/analytics/Event;->mPolicy:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    iput-wide p1, p0, Lmiui/analytics/Event;->mTrackTime:J

    return-void
.end method

.method public abstract writeEvent(Lmiui/analytics/Storable;)V
.end method
