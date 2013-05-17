.class public Lmiui/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# instance fields
.field private mDate:Ljava/util/Calendar;

.field private mDateTimePicker:Lmiui/widget/DateTimePicker;

.field private mOnDateTimeSetListener:Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "date"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiui/widget/DateTimePicker;

    invoke-direct {v0, p1}, Lmiui/widget/DateTimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDateTimePicker:Lmiui/widget/DateTimePicker;

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDateTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {p0, v0}, Lmiui/app/DateTimePickerDialog;->setView(Landroid/view/View;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDateTimePicker:Lmiui/widget/DateTimePicker;

    new-instance v1, Lmiui/app/DateTimePickerDialog$1;

    invoke-direct {v1, p0}, Lmiui/app/DateTimePickerDialog$1;-><init>(Lmiui/app/DateTimePickerDialog;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DateTimePicker;->setOnDateTimeChangedListener(Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;)V

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDateTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, p2, p3}, Lmiui/widget/DateTimePicker;->setCurrentDate(J)V

    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lmiui/app/DateTimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 v0, 0x104

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v0}, Lmiui/app/DateTimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p2, p3}, Lmiui/app/DateTimePickerDialog;->updateTitle(J)V

    return-void
.end method

.method static synthetic access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/DateTimePickerDialog;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/app/DateTimePickerDialog;->updateTitle(J)V

    return-void
.end method

.method private updateTitle(J)V
    .locals 2
    .parameter "date"

    .prologue
    const/16 v0, 0x15

    .local v0, flag:I
    iget-object v1, p0, Lmiui/app/DateTimePickerDialog;->mDateTimePicker:Lmiui/widget/DateTimePicker;

    invoke-virtual {v1}, Lmiui/widget/DateTimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    or-int/2addr v0, v1

    invoke-virtual {p0}, Lmiui/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiui/app/DateTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v1, 0x40

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mOnDateTimeSetListener:Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/DateTimePickerDialog;->mOnDateTimeSetListener:Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;

    iget-object v1, p0, Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;->OnDateTimeSet(Landroid/app/AlertDialog;J)V

    :cond_0
    return-void
.end method

.method public setOnDateTimeSetListener(Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;)V
    .locals 0
    .parameter "callBack"

    .prologue
    iput-object p1, p0, Lmiui/app/DateTimePickerDialog;->mOnDateTimeSetListener:Lmiui/app/DateTimePickerDialog$OnDateTimeSetListener;

    return-void
.end method
