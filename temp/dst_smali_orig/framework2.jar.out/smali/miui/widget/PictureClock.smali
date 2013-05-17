.class public Lmiui/widget/PictureClock;
.super Landroid/widget/LinearLayout;
.source "PictureClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/PictureClock$FormatChangeObserver;,
        Lmiui/widget/PictureClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"


# instance fields
.field private mAmPm:Lmiui/widget/PictureClock$AmPm;

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Lmiui/widget/ImageTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/PictureClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/widget/PictureClock$1;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$1;-><init>(Lmiui/widget/PictureClock;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/PictureClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lmiui/widget/PictureClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/widget/PictureClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/PictureClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/PictureClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/PictureClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/PictureClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/widget/PictureClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lmiui/widget/PictureClock;->mFormat:Ljava/lang/String;

    iget-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    const-string v1, "hh:mm"

    iget-object v2, p0, Lmiui/widget/PictureClock;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/PictureClock$AmPm;->setShowAmPm(Z)V

    return-void

    :cond_0
    const-string v0, "hh:mm"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 4

    .prologue
    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    iget-object v1, p0, Lmiui/widget/PictureClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    invoke-virtual {v1, v0}, Lmiui/widget/ImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    iget-object v1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lmiui/widget/PictureClock$AmPm;->setIsMorning(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/widget/PictureClock;->mAttached:Z

    iget-boolean v1, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lmiui/widget/PictureClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lmiui/widget/PictureClock$FormatChangeObserver;-><init>(Lmiui/widget/PictureClock;)V

    iput-object v1, p0, Lmiui/widget/PictureClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmiui/widget/PictureClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/PictureClock;->mAttached:Z

    iget-boolean v0, p0, Lmiui/widget/PictureClock;->mLive:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/PictureClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/PictureClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x60b0094

    invoke-virtual {p0, v0}, Lmiui/widget/PictureClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ImageTextView;

    iput-object v0, p0, Lmiui/widget/PictureClock;->mTimeDisplay:Lmiui/widget/ImageTextView;

    new-instance v0, Lmiui/widget/PictureClock$AmPm;

    invoke-direct {v0, p0}, Lmiui/widget/PictureClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lmiui/widget/PictureClock;->mAmPm:Lmiui/widget/PictureClock$AmPm;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lmiui/widget/PictureClock;->setDateFormat()V

    return-void
.end method

.method setLive(Z)V
    .locals 0
    .parameter "live"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/PictureClock;->mLive:Z

    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    iput-object p1, p0, Lmiui/widget/PictureClock;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lmiui/widget/PictureClock;->updateTime()V

    return-void
.end method
