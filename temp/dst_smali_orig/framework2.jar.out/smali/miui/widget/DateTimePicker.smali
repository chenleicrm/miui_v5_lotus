.class public Lmiui/widget/DateTimePicker;
.super Landroid/widget/FrameLayout;
.source "DateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;
    }
.end annotation


# static fields
.field private static final AMPM_SPINNER_MAX_VAL:I = 0x1

.field private static final AMPM_SPINNER_MIN_VAL:I = 0x0

.field private static final DATE_SPINNER_MAX_VAL:I = 0x6

.field private static final DATE_SPINNER_MIN_VAL:I = 0x0

.field private static final DAYS_IN_ALL_WEEK:I = 0x7

.field private static final DEFAULT_ENABLE_STATE:Z = true

.field private static final HOURS_IN_ALL_DAY:I = 0x18

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_SPINNER_MAX_VAL_12_HOUR_VIEW:I = 0xc

.field private static final HOUR_SPINNER_MAX_VAL_24_HOUR_VIEW:I = 0x17

.field private static final HOUR_SPINNER_MIN_VAL_12_HOUR_VIEW:I = 0x1

.field private static final HOUR_SPINNER_MIN_VAL_24_HOUR_VIEW:I = 0x0

.field private static final MINUT_SPINNER_MAX_VAL:I = 0x3b

.field private static final MINUT_SPINNER_MIN_VAL:I


# instance fields
.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private mDate:Ljava/util/Calendar;

.field private mDateDisplayValues:[Ljava/lang/String;

.field private final mDateSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private mInitialising:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private mOnAmPmChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mOnDateChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mOnDateTimeChangedListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

.field private mOnHourChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private mOnMinuteChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "date"

    .prologue
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;JZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 6
    .parameter "context"
    .parameter "date"
    .parameter "is24HourView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIsEnabled:Z

    new-instance v1, Lmiui/widget/DateTimePicker$1;

    invoke-direct {v1, p0}, Lmiui/widget/DateTimePicker$1;-><init>(Lmiui/widget/DateTimePicker;)V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mOnDateChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    new-instance v1, Lmiui/widget/DateTimePicker$2;

    invoke-direct {v1, p0}, Lmiui/widget/DateTimePicker$2;-><init>(Lmiui/widget/DateTimePicker;)V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mOnHourChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    new-instance v1, Lmiui/widget/DateTimePicker$3;

    invoke-direct {v1, p0}, Lmiui/widget/DateTimePicker$3;-><init>(Lmiui/widget/DateTimePicker;)V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mOnMinuteChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    new-instance v1, Lmiui/widget/DateTimePicker$4;

    invoke-direct {v1, p0}, Lmiui/widget/DateTimePicker$4;-><init>(Lmiui/widget/DateTimePicker;)V

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mOnAmPmChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    iput-boolean v2, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v1

    const/16 v4, 0xc

    if-lt v1, v4, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lmiui/widget/DateTimePicker;->mIsAm:Z

    const v1, 0x603000a

    invoke-static {p1, v1, p0}, Lmiui/widget/DateTimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x60b0045

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mOnDateChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v1, 0x60b004e

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mOnHourChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const v1, 0x60b0059

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    iget-object v4, p0, Lmiui/widget/DateTimePicker;->mOnMinuteChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mDateDisplayValues:[Ljava/lang/String;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .local v0, stringsForAmPm:[Ljava/lang/String;
    const v1, 0x60b0004

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    iput-object v1, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mOnAmPmChangedListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateControl()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourControl()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateAmPmControl()V

    invoke-virtual {p0, p4}, Lmiui/widget/DateTimePicker;->set24HourView(Z)V

    invoke-virtual {p0, p2, p3}, Lmiui/widget/DateTimePicker;->setCurrentDate(J)V

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/widget/DateTimePicker;->setEnabled(Z)V

    iput-boolean v3, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    return-void

    .end local v0           #stringsForAmPm:[Ljava/lang/String;
    :cond_0
    move v1, v3

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateControl()V

    return-void
.end method

.method static synthetic access$200(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->onDateTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/DateTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/DateTimePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/widget/DateTimePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$600(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/DateTimePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->getCurrentHour()I

    move-result v0

    return v0
.end method

.method private getCurrentHour()I
    .locals 3

    .prologue
    const/16 v1, 0xc

    iget-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v0

    .local v0, hour:I
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0xc

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private onDateTimeChanged()V
    .locals 7

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mOnDateTimeChangedListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mOnDateTimeChangedListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentYear()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentMonth()I

    move-result v3

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentDay()I

    move-result v4

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v5

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentMinute()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;->onDateTimeChanged(Lmiui/widget/DateTimePicker;IIIII)V

    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lmiui/widget/DateTimePicker;->mIsAm:Z

    if-eqz v2, :cond_1

    move v0, v1

    .local v0, index:I
    :goto_1
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .end local v0           #index:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateDateControl()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, cal:Ljava/util/Calendar;
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, -0x4

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDateDisplayValues:[Ljava/lang/String;

    const-string v2, "MM.dd EEEE"

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    iget-object v3, p0, Lmiui/widget/DateTimePicker;->mDateDisplayValues:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->invalidate()V

    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentDateInTimeMillis()J
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentDay()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getCurrentHourOfDay()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getCurrentMinute()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getCurrentMonth()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 2

    .prologue
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIsEnabled:Z

    return v0
.end method

.method public set24HourView(Z)V
    .locals 3
    .parameter "is24HourView"

    .prologue
    iget-boolean v1, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    iget-object v2, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v0

    .local v0, hour:I
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateHourControl()V

    invoke-virtual {p0, v0}, Lmiui/widget/DateTimePicker;->setCurrentHour(I)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateAmPmControl()V

    goto :goto_0

    .end local v0           #hour:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setCurrentDate(IIIII)V
    .locals 0
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    invoke-virtual {p0, p1}, Lmiui/widget/DateTimePicker;->setCurrentYear(I)V

    invoke-virtual {p0, p2}, Lmiui/widget/DateTimePicker;->setCurrentMonth(I)V

    invoke-virtual {p0, p3}, Lmiui/widget/DateTimePicker;->setCurrentDay(I)V

    invoke-virtual {p0, p4}, Lmiui/widget/DateTimePicker;->setCurrentHour(I)V

    invoke-virtual {p0, p5}, Lmiui/widget/DateTimePicker;->setCurrentMinute(I)V

    return-void
.end method

.method public setCurrentDate(J)V
    .locals 7
    .parameter "date"

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .local v6, cal:Ljava/util/Calendar;
    invoke-virtual {v6, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmiui/widget/DateTimePicker;->setCurrentDate(IIIII)V

    return-void
.end method

.method public setCurrentDay(I)V
    .locals 2
    .parameter "dayOfMonth"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentDay()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateControl()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->onDateTimeChanged()V

    goto :goto_0
.end method

.method public setCurrentHour(I)V
    .locals 3
    .parameter "hourOfDay"

    .prologue
    const/16 v2, 0xc

    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIs24HourView:Z

    if-nez v0, :cond_2

    if-lt p1, v2, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIsAm:Z

    if-le p1, v2, :cond_1

    add-int/lit8 p1, p1, -0xc

    :cond_1
    :goto_1
    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateAmPmControl()V

    :cond_2
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->onDateTimeChanged()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIsAm:Z

    if-nez p1, :cond_1

    const/16 p1, 0xc

    goto :goto_1
.end method

.method public setCurrentMinute(I)V
    .locals 2
    .parameter "minute"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->onDateTimeChanged()V

    goto :goto_0
.end method

.method public setCurrentMonth(I)V
    .locals 2
    .parameter "month"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentMonth()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateControl()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->onDateTimeChanged()V

    goto :goto_0
.end method

.method public setCurrentYear(I)V
    .locals 2
    .parameter "year"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mInitialising:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DateTimePicker;->getCurrentYear()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->updateDateControl()V

    invoke-direct {p0}, Lmiui/widget/DateTimePicker;->onDateTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iget-boolean v0, p0, Lmiui/widget/DateTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mDateSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/widget/DateTimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    iput-boolean p1, p0, Lmiui/widget/DateTimePicker;->mIsEnabled:Z

    goto :goto_0
.end method

.method public setOnDateTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    iput-object p1, p0, Lmiui/widget/DateTimePicker;->mOnDateTimeChangedListener:Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;

    return-void
.end method
