.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4500(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-nez v10, :cond_5

    move v0, v8

    .local v0, brightnessMode:I
    :goto_0
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xa

    if-ne v10, v11, :cond_7

    iget v4, p1, Landroid/os/Message;->arg1:I

    .local v4, mask:I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .local v7, value:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .local v5, tStart:J
    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLcdLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4700(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10, v7, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v2, v10, v5

    .local v2, elapsed:J
    and-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_1
    and-int/lit8 v10, v4, 0x8

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_2
    const-wide/16 v10, 0x64

    cmp-long v10, v2, v10

    if-lez v10, :cond_3

    const-string v10, "PowerManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Excessive delay setting brightness: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, mask="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v10, 0x10

    cmp-long v10, v2, v10

    if-gez v10, :cond_6

    const/16 v1, 0x10

    .local v1, delay:I
    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iput v7, v8, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    #calls: Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V
    invoke-static {v8, v4, v9, v1}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->access$5000(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V

    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v5           #tStart:J
    .end local v7           #value:I
    :cond_4
    :goto_2
    return-void

    .end local v0           #brightnessMode:I
    :cond_5
    move v0, v9

    goto :goto_0

    .restart local v0       #brightnessMode:I
    .restart local v2       #elapsed:J
    .restart local v4       #mask:I
    .restart local v5       #tStart:J
    .restart local v7       #value:I
    :cond_6
    move v1, v8

    goto :goto_1

    .restart local v1       #delay:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .end local v1           #delay:I
    .end local v2           #elapsed:J
    .end local v4           #mask:I
    .end local v5           #tStart:J
    .end local v7           #value:I
    :cond_7
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0xb

    if-ne v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBootCompleted:Z
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v10, v10, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v10, v8}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v8, v8, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->nativeStartOnOffAnimation(ZII)V
    invoke-static {v8, v9, v9, v0}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;ZII)V

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v8, v8, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/PowerManagerService;->preventScreenOn(Z)V

    goto :goto_2

    :cond_8
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0xc

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;->this$1:Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;

    iget-object v8, v8, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBootCompleted:Z
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2
.end method
