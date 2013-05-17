.class Lmiui/widget/DateTimePicker$1;
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
    .line 48
    iput-object p1, p0, Lmiui/widget/DateTimePicker$1;->this$0:Lmiui/widget/DateTimePicker;

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
    .line 51
    iget-object v0, p0, Lmiui/widget/DateTimePicker$1;->this$0:Lmiui/widget/DateTimePicker;

    #getter for: Lmiui/widget/DateTimePicker;->mDate:Ljava/util/Calendar;
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$000(Lmiui/widget/DateTimePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    sub-int v2, p3, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 52
    iget-object v0, p0, Lmiui/widget/DateTimePicker$1;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->updateDateControl()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$100(Lmiui/widget/DateTimePicker;)V

    .line 53
    iget-object v0, p0, Lmiui/widget/DateTimePicker$1;->this$0:Lmiui/widget/DateTimePicker;

    #calls: Lmiui/widget/DateTimePicker;->onDateTimeChanged()V
    invoke-static {v0}, Lmiui/widget/DateTimePicker;->access$200(Lmiui/widget/DateTimePicker;)V

    .line 54
    return-void
.end method
