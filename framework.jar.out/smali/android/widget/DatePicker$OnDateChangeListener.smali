.class Landroid/widget/DatePicker$OnDateChangeListener;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnDateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Landroid/widget/DatePicker$OnDateChangeListener;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/widget/DatePicker$OnDateChangeListener;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->handleValueChange(Landroid/widget/NumberPicker;II)V

    .line 81
    return-void
.end method
