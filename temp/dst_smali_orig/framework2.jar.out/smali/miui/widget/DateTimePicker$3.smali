.class Lmiui/widget/DateTimePicker$3;
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
    iput-object p1, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v6, 0xc

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$700(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .local v1, minValue:I
    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$700(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .local v0, maxValue:I
    const/4 v3, 0x0

    .local v3, offset:I
    if-ne p2, v0, :cond_2

    if-ne p3, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$600(Lmiui/widget/DateTimePicker;)Landroid/widget/NumberPicker;

    move-result-object v4

    iget-object v5, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->getCurrentHour()I
    invoke-static {v5}, Lmiui/widget/DateTimePicker;->access$800(Lmiui/widget/DateTimePicker;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setValue(I)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateDateControl()V
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$100(Lmiui/widget/DateTimePicker;)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    invoke-virtual {v4}, Lmiui/widget/DateTimePicker;->getCurrentHourOfDay()I

    move-result v2

    .local v2, newHour:I
    if-lt v2, v6, :cond_3

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    const/4 v5, 0x0

    #setter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v4, v5}, Lmiui/widget/DateTimePicker;->access$402(Lmiui/widget/DateTimePicker;Z)Z

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateAmPmControl()V
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)V

    .end local v2           #newHour:I
    :cond_1
    :goto_1
    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v6, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->onDateTimeChanged()V
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;)V

    return-void

    :cond_2
    if-ne p2, v1, :cond_0

    if-ne p3, v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .restart local v2       #newHour:I
    :cond_3
    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    const/4 v5, 0x1

    #setter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v4, v5}, Lmiui/widget/DateTimePicker;->access$402(Lmiui/widget/DateTimePicker;Z)Z

    iget-object v4, p0, Lmiui/widget/DateTimePicker$3;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateAmPmControl()V
    invoke-static {v4}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)V

    goto :goto_1
.end method
