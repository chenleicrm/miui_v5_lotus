.class public Lmiui/analytics/LogEvent;
.super Lmiui/analytics/Event;
.source "LogEvent.java"


# instance fields
.field private mErrorClass:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mType:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "message"
    .parameter "errorClass"

    .prologue
    invoke-direct {p0}, Lmiui/analytics/Event;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmiui/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iput-object p1, p0, Lmiui/analytics/LogEvent;->mEventId:Ljava/lang/String;

    iput-object p2, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    iput-object p3, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-void
.end method

.method private buildParam()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseParam(Ljava/lang/String;)V
    .locals 3
    .parameter "param"

    .prologue
    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, strs:[Ljava/lang/String;
    array-length v1, v0

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    aget-object v1, v0, v2

    iput-object v1, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    .end local v0           #strs:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 3

    .prologue
    sget-object v2, Lmiui/analytics/LogEvent;->sDispatcher:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/analytics/LogEvent;->sDispatcher:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/analytics/Dispatchable;

    .local v0, disp:Lmiui/analytics/Dispatchable;
    invoke-interface {v0, p0}, Lmiui/analytics/Dispatchable;->dispatchLog(Lmiui/analytics/LogEvent;)V

    goto :goto_0

    .end local v0           #disp:Lmiui/analytics/Dispatchable;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public getErrorClass()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/analytics/LogEvent;->mErrorClass:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/analytics/LogEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    invoke-super {p0, p1}, Lmiui/analytics/Event;->restore(Landroid/database/Cursor;)V

    if-eqz p1, :cond_0

    const-string v0, "param"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/analytics/LogEvent;->parseParam(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeEvent(Lmiui/analytics/Storable;)V
    .locals 6
    .parameter "store"

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p0, Lmiui/analytics/LogEvent;->mType:Ljava/lang/Integer;

    iget-object v2, p0, Lmiui/analytics/LogEvent;->mEventId:Ljava/lang/String;

    invoke-direct {p0}, Lmiui/analytics/LogEvent;->buildParam()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lmiui/analytics/LogEvent;->mTrackTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lmiui/analytics/Storable;->writeData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
