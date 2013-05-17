.class Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenBrightnessAnimator"
.end annotation


# static fields
.field static final ANIMATE_LIGHTS:I = 0xa

.field static final ANIMATE_POWER_OFF:I = 0xb

.field static final ANIMATE_POWER_ON:I = 0xc


# instance fields
.field private currentMask:I

.field volatile currentValue:I

.field private duration:I

.field volatile endSensorValue:I

.field volatile endValue:I

.field private final prefix:Ljava/lang/String;

.field volatile startSensorValue:I

.field private startTimeMillis:J

.field volatile startValue:I

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->prefix:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    return v0
.end method

.method private animateInternal(IZI)V
    .locals 15
    .parameter "mask"
    .parameter "turningOff"
    .parameter "delay"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v12, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v11, v12, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .local v7, now:J
    iget-wide v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    sub-long v11, v7, v11

    long-to-int v3, v11

    .local v3, elapsed:I
    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    if-ge v3, v11, :cond_5

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v12, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    sub-int v1, v11, v12

    .local v1, delta:I
    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    mul-int v12, v1, v3

    iget v13, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v12, v13

    add-int v6, v11, v12

    .local v6, newValue:I
    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v11, 0xff

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez p3, :cond_0

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-ne v6, v11, :cond_0

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    div-int v9, v11, v12

    .local v9, timePerStep:I
    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    sub-int/2addr v11, v3

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-gez v1, :cond_4

    const/4 v11, -0x1

    :goto_0
    add-int/2addr v6, v11

    .end local v9           #timePerStep:I
    :cond_0
    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    iget v12, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    sub-int v1, v11, v12

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v12, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    mul-int v13, v1, v3

    iget v14, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v11, v12}, Lcom/android/server/PowerManagerService;->access$5402(Lcom/android/server/PowerManagerService;I)I

    .end local v1           #delta:I
    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHeadless:Z
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$5500(Lcom/android/server/PowerManagerService;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v11, v11, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    const/4 v4, 0x0

    .local v4, mode:I
    :goto_2
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v4, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    const/4 v6, 0x0

    .end local v4           #mode:I
    :cond_2
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xa

    move/from16 v0, p1

    invoke-virtual {v11, v12, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .local v5, msg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    move/from16 v0, p3

    int-to-long v12, v0

    invoke-virtual {v11, v5, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v3           #elapsed:I
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #newValue:I
    .end local v7           #now:J
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .restart local v1       #delta:I
    .restart local v3       #elapsed:I
    .restart local v6       #newValue:I
    .restart local v7       #now:J
    .restart local v9       #timePerStep:I
    :cond_4
    const/4 v11, 0x1

    goto :goto_0

    .end local v1           #delta:I
    .end local v6           #newValue:I
    .end local v9           #timePerStep:I
    :cond_5
    iget v6, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    .restart local v6       #newValue:I
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget v12, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    #setter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v11, v12}, Lcom/android/server/PowerManagerService;->access$5402(Lcom/android/server/PowerManagerService;I)I

    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-lez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v11, v12}, Lcom/android/server/PowerManagerService;->access$4602(Lcom/android/server/PowerManagerService;Z)Z

    goto :goto_1

    .end local v3           #elapsed:I
    .end local v6           #newValue:I
    .end local v7           #now:J
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .restart local v3       #elapsed:I
    .restart local v6       #newValue:I
    .restart local v7       #now:J
    :cond_6
    :try_start_1
    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAnimationSetting:I
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)I

    move-result v4

    goto :goto_2

    .end local v3           #elapsed:I
    .end local v6           #newValue:I
    .end local v7           #now:J
    :cond_7
    and-int/lit8 v11, p1, 0x3

    if-eqz v11, :cond_8

    const/4 v2, 0x1

    .local v2, doScreenAnimation:Z
    :goto_4
    iget v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-nez v11, :cond_9

    const/4 v10, 0x1

    .local v10, turnOff:Z
    :goto_5
    if-eqz v10, :cond_3

    if-eqz v2, :cond_3

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/PowerManagerService;->access$4400(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v11, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v12, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenOffReason:I
    invoke-static {v12}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;)I

    move-result v12

    #calls: Lcom/android/server/PowerManagerService;->screenOffFinishedAnimatingLocked(I)I
    invoke-static {v11, v12}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .end local v2           #doScreenAnimation:Z
    .end local v10           #turnOff:Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .restart local v2       #doScreenAnimation:Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_5
.end method


# virtual methods
.method public animateTo(III)V
    .locals 1
    .parameter "target"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(IIII)V

    return-void
.end method

.method public animateTo(IIII)V
    .locals 5
    .parameter "target"
    .parameter "sensorTarget"
    .parameter "mask"
    .parameter "animationDuration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_2

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardLight:Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$4900(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :cond_1
    monitor-exit p0

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    xor-int/2addr v3, p3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->cancelAnimation()V

    :cond_3
    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$4600(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p4, 0x0

    if-lez p1, :cond_4

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mInitialAnimation:Z
    invoke-static {v3, v4}, Lcom/android/server/PowerManagerService;->access$4602(Lcom/android/server/PowerManagerService;Z)Z

    :cond_4
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    iput p1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHighestLightSensorValue:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)I

    move-result v3

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    iput p2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    iput p3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWindowScaleAnimation:F
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)F

    move-result v3

    int-to-float v4, p4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    if-eq p1, v3, :cond_6

    and-int/lit8 v3, p3, 0x3

    if-eqz v3, :cond_7

    move v0, v1

    .local v0, doScreenAnim:Z
    :goto_1
    iget v3, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-nez v3, :cond_8

    .local v1, turningOff:Z
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    :cond_5
    if-eqz v0, :cond_6

    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateInternal(IZI)V

    .end local v0           #doScreenAnim:Z
    .end local v1           #turningOff:Z
    :cond_6
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_7
    move v0, v2

    goto :goto_1

    .restart local v0       #doScreenAnim:Z
    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method public cancelAnimation()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->animateTo(III)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "string"

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  animating: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endSensorValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endSensorValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  startTimeMillis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->startTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentMask:I

    #calls: Lcom/android/server/PowerManagerService;->dumpPowerState(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5800(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->currentValue:I

    iget v1, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->endValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator$1;-><init>(Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;)V

    #setter for: Lcom/android/server/PowerManagerService;->mScreenBrightnessHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$4402(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ScreenBrightnessAnimator;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;Z)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
