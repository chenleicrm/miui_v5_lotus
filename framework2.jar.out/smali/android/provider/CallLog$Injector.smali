.class Landroid/provider/CallLog$Injector;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExtraCallLogValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2
    .parameter "contentValues"

    .prologue
    .line 43
    sget-object v1, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;

    if-nez v1, :cond_0

    .line 44
    move-object v0, p0

    .line 49
    .local v0, values:Landroid/content/ContentValues;
    :goto_0
    return-object v0

    .line 46
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    sget-object v0, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;

    .line 47
    .restart local v0       #values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    sput-object v1, Landroid/provider/CallLog$Calls;->sExtraCallLogValues:Landroid/content/ContentValues;

    goto :goto_0
.end method

.method static removeExpiredEntries(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    return-void
.end method
