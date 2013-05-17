.class Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperStaminaReceiver"
.end annotation


# static fields
.field private static final ACTION_SUPER_STAMINA:Ljava/lang/String; = "com.sonymobile.SUPER_STAMINA"

.field private static final EXTRA_SUPER_STAMINA_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1170
    new-instance v0, Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$PowerStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    .line 1171
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1175
    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1178
    .local v1, superStaminaEnabled:Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1179
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaEnabled:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1180
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #setter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaEnabled:Z
    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->access$2302(Lcom/android/server/AlarmManagerService;Z)Z

    .line 1183
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaIsPowerState0:Z
    invoke-static {v2, v4}, Lcom/android/server/AlarmManagerService;->access$2102(Lcom/android/server/AlarmManagerService;Z)Z

    .line 1185
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mSuperStaminaEnabled:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1189
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1190
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1192
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->rerankAlarmsLocked(III)V

    .line 1194
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->rerankAlarmsLocked(III)V

    .line 1207
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    monitor-exit v3

    .line 1208
    return-void

    .line 1199
    :cond_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->rerankAlarmsLocked(III)V

    .line 1201
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/AlarmManagerService;->rerankAlarmsLocked(III)V

    .line 1204
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$SuperStaminaReceiver;->mPowerStateReceiver:Lcom/android/server/AlarmManagerService$PowerStateReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1207
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
