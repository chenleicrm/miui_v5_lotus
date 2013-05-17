.class Lmiui/widget/DateTimePicker$4;
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
    .line 130
    iput-object p1, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/16 v2, 0xb

    .line 133
    iget-object v1, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    iget-object v0, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lmiui/widget/DateTimePicker;->access$402(Lmiui/widget/DateTimePicker;Z)Z

    .line 134
    iget-object v0, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mIsAm:Z
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$400(Lmiui/widget/DateTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, -0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 139
    :goto_1
    iget-object v0, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateAmPmControl()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$500(Lmiui/widget/DateTimePicker;)V

    .line 140
    iget-object v0, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->onDateTimeChanged()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;)V

    .line 141
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lmiui/widget/DateTimePicker$4;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1
.end method
