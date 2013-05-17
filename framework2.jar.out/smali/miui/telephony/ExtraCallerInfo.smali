.class public Lmiui/telephony/ExtraCallerInfo;
.super Ljava/lang/Object;
.source "ExtraCallerInfo.java"


# instance fields
.field public company:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public isMardked:Z

.field public isSpNumber:Z

.field public markCount:I

.field public markTitle:Ljava/lang/String;

.field public provider:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtraCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)Lmiui/telephony/ExtraCallerInfo;
    .locals 5
    .parameter "context"
    .parameter "info"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 22
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    .line 23
    .local v1, extra:Lmiui/telephony/ExtraCallerInfo;
    iput-boolean v2, v1, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    .line 24
    iput-object v4, v1, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    .line 25
    iput-boolean v2, v1, Lmiui/telephony/ExtraCallerInfo;->isMardked:Z

    .line 26
    iput-object v4, v1, Lmiui/telephony/ExtraCallerInfo;->markTitle:Ljava/lang/String;

    .line 27
    iput v2, v1, Lmiui/telephony/ExtraCallerInfo;->markCount:I

    .line 28
    iput v3, v1, Lmiui/telephony/ExtraCallerInfo;->provider:I

    .line 29
    const-string v2, "company"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, columnIndex:I
    if-eq v0, v3, :cond_0

    .line 31
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmiui/telephony/ExtraCallerInfo;->company:Ljava/lang/String;

    .line 33
    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/telephony/CallerInfo;->updateDisplayName(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V

    .line 34
    return-object v1
.end method
