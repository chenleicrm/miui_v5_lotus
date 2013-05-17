.class Lmiui/widget/DateTimePicker$2;
.super Ljava/lang/Object;
.source "DateTimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DateTimePicker;


# direct methods
.method constructor <init>(Lmiui/widget/DateTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 11
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x6

    const/4 v4, 0x1

    const/16 v5, 0xc

    const/16 v8, 0xb

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, isDateChanged:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, cal:Ljava/util/Calendar;
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIs24HourView:Z
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$300(Lmiui/widget/DateTimePicker;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 64
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Z

    move-result v3

    if-nez v3, :cond_5

    if-ne p2, v8, :cond_5

    if-ne p3, v5, :cond_5

    .line 65
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->add(II)V

    .line 67
    const/4 v1, 0x1

    .line 73
    :cond_0
    :goto_0
    if-ne p2, v8, :cond_1

    if-eq p3, v5, :cond_2

    :cond_1
    if-ne p2, v5, :cond_3

    if-ne p3, v8, :cond_3

    .line 75
    :cond_2
    iget-object v6, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_1
    #setter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v6, v3}, Lmiui/widget/DateTimePicker;->access$402(Lmiui/widget/DateTimePicker;Z)Z

    .line 76
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateAmPmControl()V
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)V

    .line 78
    :cond_3
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    rem-int/lit8 v6, v3, 0xc

    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_2
    add-int v2, v6, v3

    .line 91
    .local v2, newHour:I
    :goto_3
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 92
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->onDateTimeChanged()V
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;)V

    .line 93
    if-eqz v1, :cond_4

    .line 94
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/DateTimePicker;->setCurrentYear(I)V

    .line 95
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/DateTimePicker;->setCurrentMonth(I)V

    .line 96
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lmiui/widget/DateTimePicker;->setCurrentDay(I)V

    .line 98
    :cond_4
    return-void

    .line 68
    .end local v2           #newHour:I
    :cond_5
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne p2, v5, :cond_0

    if-ne p3, v8, :cond_0

    .line 69
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 70
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    move v3, v5

    .line 78
    goto :goto_2

    .line 80
    :cond_8
    const/16 v3, 0x17

    if-ne p2, v3, :cond_a

    if-nez p3, :cond_a

    .line 81
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->add(II)V

    .line 83
    const/4 v1, 0x1

    .line 89
    :cond_9
    :goto_4
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    .restart local v2       #newHour:I
    goto :goto_3

    .line 84
    .end local v2           #newHour:I
    :cond_a
    if-nez p2, :cond_9

    const/16 v3, 0x17

    if-ne p3, v3, :cond_9

    .line 85
    iget-object v3, p0, Lmiui/widget/DateTimePicker$2;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v3}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 87
    const/4 v1, 0x1

    goto :goto_4
.end method
