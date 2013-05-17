.class Lmiui/app/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Lmiui/widget/DateTimePicker$OnDateTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/DateTimePickerDialog;-><init>(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lmiui/app/DateTimePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeChanged(Lmiui/widget/DateTimePicker;IIIII)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 34
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 35
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 36
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p5}, Ljava/util/Calendar;->set(II)V

    .line 37
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p6}, Ljava/util/Calendar;->set(II)V

    .line 38
    iget-object v0, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    iget-object v1, p0, Lmiui/app/DateTimePickerDialog$1;->this$0:Lmiui/app/DateTimePickerDialog;

    #getter for: Lmiui/app/DateTimePickerDialog;->mDate:Ljava/util/Calendar;
    invoke-static {v1}, Lmiui/app/DateTimePickerDialog;->access$000(Lmiui/app/DateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    #calls: Lmiui/app/DateTimePickerDialog;->updateTitle(J)V
    invoke-static {v0, v1, v2}, Lmiui/app/DateTimePickerDialog;->access$100(Lmiui/app/DateTimePickerDialog;J)V

    .line 39
    return-void
.end method
