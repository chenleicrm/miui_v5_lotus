.class public Lmiui/maml/data/DateTimeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "DateTimeVariableUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/DateTimeVariableUpdater$2;,
        Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DateTimeVariableUpdater"

.field private static final TIME_DAY:I = 0x5265c00

.field private static final TIME_HOUR:I = 0x36ee80

.field private static final TIME_MINUTE:I = 0xea60

.field private static final TIME_SECOND:I = 0x3e8

.field public static final USE_TAG:Ljava/lang/String; = "DateTime"


# instance fields
.field private mAmPm:Lmiui/maml/util/IndexedNumberVariable;

.field protected mCalendar:Ljava/util/Calendar;

.field private mCurDay:I

.field private mCurrentTime:J

.field private mDate:Lmiui/maml/util/IndexedNumberVariable;

.field private mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

.field private mHour12:Lmiui/maml/util/IndexedNumberVariable;

.field private mHour24:Lmiui/maml/util/IndexedNumberVariable;

.field private mLastUpdatedTime:J

.field private mMinute:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonth:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

.field private mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

.field private mNextUpdateTime:J

.field private mSecond:Lmiui/maml/util/IndexedNumberVariable;

.field private mTime:Lmiui/maml/util/IndexedNumberVariable;

.field private mTimeAccuracy:J

.field private mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

.field private mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mYear:Lmiui/maml/util/IndexedNumberVariable;

.field private mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

.field private mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 79
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/DateTimeVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V
    .locals 8
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 83
    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {p0, p1, v5}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 57
    new-instance v5, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v5, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 84
    const/4 v1, 0x0

    .line 85
    .local v1, acc:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    invoke-static {}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->values()[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    move-result-object v2

    .local v2, arr$:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 87
    .local v0, a:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    invoke-virtual {v0}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    move-object v1, v0

    .line 86
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v0           #a:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v2           #arr$:[Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    if-nez v1, :cond_2

    .line 92
    sget-object v1, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->Minute:Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;

    .line 93
    const-string v5, "DateTimeVariableUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid accuracy tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    invoke-direct {p0, v1}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 1
    .parameter "m"
    .parameter "accuracy"

    .prologue
    .line 99
    const-string v0, "android.intent.action.TIME_SET"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 57
    new-instance v0, Lmiui/maml/data/DateTimeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/DateTimeVariableUpdater$1;-><init>(Lmiui/maml/data/DateTimeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    .line 100
    invoke-direct {p0, p2}, Lmiui/maml/data/DateTimeVariableUpdater;->initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/DateTimeVariableUpdater;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    return-void
.end method

.method private checkUpdateTime()V
    .locals 8

    .prologue
    .line 194
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 196
    .local v2, currentTimeMillis:J
    iget-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    div-long v4, v2, v4

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    mul-long v0, v4, v6

    .line 197
    .local v0, currentTime:J
    iget-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 198
    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    .line 199
    iget-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurrentTime:J

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    .line 200
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->requestUpdate()V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextUpdateTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method private initInner(Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;)V
    .locals 5
    .parameter "accuracy"

    .prologue
    const-wide/32 v3, 0xea60

    .line 104
    const-string v0, "DateTimeVariableUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lmiui/maml/data/DateTimeVariableUpdater$2;->$SwitchMap$miui$maml$data$DateTimeVariableUpdater$Accuracy:[I

    invoke-virtual {p1}, Lmiui/maml/data/DateTimeVariableUpdater$Accuracy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    iput-wide v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    .line 123
    :goto_0
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/util/IndexedNumberVariable;

    .line 124
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/util/IndexedNumberVariable;

    .line 125
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "date"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/util/IndexedNumberVariable;

    .line 127
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 128
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "year_lunar1864"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;

    .line 129
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 130
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "month_lunar_leap"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

    .line 131
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "date_lunar"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

    .line 133
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "day_of_week"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

    .line 134
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "ampm"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/util/IndexedNumberVariable;

    .line 135
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "hour12"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/util/IndexedNumberVariable;

    .line 136
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "hour24"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/util/IndexedNumberVariable;

    .line 137
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "minute"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/util/IndexedNumberVariable;

    .line 138
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "second"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/util/IndexedNumberVariable;

    .line 139
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/util/IndexedNumberVariable;

    .line 140
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time_sys"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    .line 141
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 142
    new-instance v0, Lmiui/maml/util/IndexedStringVariable;

    const-string v1, "next_alarm_time"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

    .line 144
    new-instance v0, Lmiui/maml/util/IndexedNumberVariable;

    const-string v1, "time_format"

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    .line 145
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_1
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 147
    return-void

    .line 107
    :pswitch_0
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 110
    :pswitch_1
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 113
    :pswitch_2
    iput-wide v3, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 116
    :pswitch_3
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeAccuracy:J

    goto/16 :goto_0

    .line 145
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshAlarm()V
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, nextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mNextAlarm:Lmiui/maml/util/IndexedStringVariable;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private updateTime()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 207
    .local v1, elapsedTime:J
    iget-wide v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    sub-long v6, v1, v6

    const-wide/16 v8, 0xc8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 208
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 211
    .local v5, year:I
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 212
    .local v4, month:I
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 213
    .local v0, date:I
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mAmPm:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 214
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour12:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 215
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mHour24:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 216
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMinute:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 217
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYear:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v7, v5

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 218
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonth:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v7, v4

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 219
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDate:Lmiui/maml/util/IndexedNumberVariable;

    int-to-double v7, v0

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 221
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDayOfWeek:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 222
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mSecond:Lmiui/maml/util/IndexedNumberVariable;

    iget-object v7, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 224
    iget v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCurDay:I

    if-eq v0, v6, :cond_0

    .line 225
    invoke-static {v5, v4, v0}, Lmiui/util/LunarDate;->calLunar(III)[J

    move-result-object v3

    .line 226
    .local v3, lunarDate:[J
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v7, 0x0

    aget-wide v7, v3, v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 227
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunar:Lmiui/maml/util/IndexedNumberVariable;

    aget-wide v7, v3, v10

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 228
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mDateLunar:Lmiui/maml/util/IndexedNumberVariable;

    aget-wide v7, v3, v11

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 229
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mYearLunar1864:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v7, 0x3

    aget-wide v7, v3, v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 230
    iget-object v6, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mMonthLunarLeap:Lmiui/maml/util/IndexedNumberVariable;

    const/4 v7, 0x6

    aget-wide v7, v3, v7

    long-to-double v7, v7

    invoke-virtual {v6, v7, v8}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 232
    .end local v3           #lunarDate:[J
    :cond_0
    iput-wide v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mLastUpdatedTime:J

    .line 234
    .end local v0           #date:I
    .end local v4           #month:I
    .end local v5           #year:I
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->finish()V

    .line 184
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->init()V

    .line 152
    iget-object v2, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeFormat:Lmiui/maml/util/IndexedNumberVariable;

    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 155
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 156
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 157
    return-void

    .line 152
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "intent"
    .parameter "o"

    .prologue
    .line 238
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 239
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->pause()V

    .line 179
    invoke-virtual {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lmiui/maml/data/NotifierVariableUpdater;->resume()V

    .line 168
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->refreshAlarm()V

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mCalendar:Ljava/util/Calendar;

    .line 174
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    .line 175
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "currentTime"

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lmiui/maml/data/NotifierVariableUpdater;->tick(J)V

    .line 161
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTime:Lmiui/maml/util/IndexedNumberVariable;

    long-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 162
    iget-object v0, p0, Lmiui/maml/data/DateTimeVariableUpdater;->mTimeSys:Lmiui/maml/util/IndexedNumberVariable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 163
    invoke-direct {p0}, Lmiui/maml/data/DateTimeVariableUpdater;->updateTime()V

    .line 164
    return-void
.end method
