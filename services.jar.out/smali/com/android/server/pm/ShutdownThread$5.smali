.class Lcom/android/server/pm/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThread;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$5;->this$0:Lcom/android/server/pm/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/pm/ShutdownThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/pm/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 393
    .local v10, startTime:J
    const-string v15, "phone"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 395
    .local v8, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v15, "bluetooth"

    invoke-static {v15}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    .line 400
    .local v3, bluetooth:Landroid/bluetooth/IBluetooth;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    :cond_0
    const/4 v4, 0x1

    .line 402
    .local v4, bluetoothOff:Z
    :goto_0
    if-nez v4, :cond_1

    .line 403
    const-string v15, "ShutdownThread"

    const-string v16, "Disabling Bluetooth..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v15, 0x0

    invoke-interface {v3, v15}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_1
    :goto_1
    const/4 v9, 0x0

    .line 413
    .local v9, radioOff:Z
    const/4 v14, 0x1

    .line 415
    .local v14, useFallback:Z
    const/4 v12, 0x0

    .line 416
    .local v12, steModemShutdown:Ljava/lang/Object;
    new-instance v13, Lcom/android/server/pm/SteModemShutdownSync;

    invoke-direct {v13}, Lcom/android/server/pm/SteModemShutdownSync;-><init>()V

    .line 418
    .local v13, steShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    :try_start_1
    const-class v15, Lcom/android/server/pm/ShutdownThread;

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 419
    .local v5, cl:Ljava/lang/ClassLoader;
    const-string v15, "com.android.server.pm.SteModemShutdown"

    invoke-virtual {v5, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 421
    .local v2, SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v2, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShutdownThread$5;->this$0:Lcom/android/server/pm/ShutdownThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/ShutdownThread;->access$100(Lcom/android/server/pm/ShutdownThread;)Landroid/content/Context;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$200()Z

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 424
    const-string v15, "startModemShutdown"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Lcom/android/server/pm/SteModemShutdownSync;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :try_start_2
    iget-boolean v14, v13, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 429
    iget-boolean v15, v13, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    if-nez v15, :cond_8

    const/4 v9, 0x1

    .line 430
    :goto_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    .end local v2           #SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #cl:Ljava/lang/ClassLoader;
    .end local v12           #steModemShutdown:Ljava/lang/Object;
    :goto_3
    if-eqz v14, :cond_3

    .line 437
    if-eqz v8, :cond_2

    :try_start_3
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v15

    if-nez v15, :cond_9

    :cond_2
    const/4 v9, 0x1

    .line 438
    :goto_4
    if-nez v9, :cond_3

    .line 439
    const-string v15, "ShutdownThread"

    const-string v16, "Turning off radio..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 447
    :cond_3
    :goto_5
    const-string v15, "ShutdownThread"

    const-string v16, "Waiting for Bluetooth and Radio..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/ShutdownThread$5;->val$endTime:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gez v15, :cond_6

    .line 450
    if-nez v4, :cond_4

    .line 452
    :try_start_4
    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const/4 v4, 0x1

    .line 458
    :goto_7
    if-eqz v4, :cond_4

    .line 459
    const-string v15, "ShutdownThread"

    const-string v16, "Bluetooth turned off."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_4
    if-nez v9, :cond_5

    .line 463
    monitor-enter v13

    .line 464
    :try_start_5
    iget-boolean v14, v13, Lcom/android/server/pm/SteModemShutdownSync;->useFallback:Z

    .line 465
    iget-boolean v15, v13, Lcom/android/server/pm/SteModemShutdownSync;->isRadioOn:Z

    if-nez v15, :cond_b

    const/4 v9, 0x1

    .line 466
    :goto_8
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 467
    if-eqz v14, :cond_5

    .line 469
    :try_start_6
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v15

    if-nez v15, :cond_c

    const/4 v9, 0x1

    .line 474
    :goto_9
    if-eqz v9, :cond_5

    .line 475
    const-string v15, "ShutdownThread"

    const-string v16, "Radio turned off."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_5
    if-eqz v9, :cond_d

    if-eqz v4, :cond_d

    .line 481
    const-string v15, "ShutdownThread"

    const-string v16, "Radio and Bluetooth shutdown complete."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/ShutdownThread$5;->val$done:[Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 487
    :cond_6
    return-void

    .line 400
    .end local v4           #bluetoothOff:Z
    .end local v9           #radioOff:Z
    .end local v13           #steShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    .end local v14           #useFallback:Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 406
    :catch_0
    move-exception v7

    .line 407
    .local v7, ex:Landroid/os/RemoteException;
    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    const/4 v4, 0x1

    .restart local v4       #bluetoothOff:Z
    goto/16 :goto_1

    .line 429
    .end local v7           #ex:Landroid/os/RemoteException;
    .restart local v2       #SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #cl:Ljava/lang/ClassLoader;
    .restart local v9       #radioOff:Z
    .restart local v12       #steModemShutdown:Ljava/lang/Object;
    .restart local v13       #steShutdownSync:Lcom/android/server/pm/SteModemShutdownSync;
    .restart local v14       #useFallback:Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 430
    :catchall_0
    move-exception v15

    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 431
    .end local v2           #SteModemShutdown:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #cl:Ljava/lang/ClassLoader;
    .end local v12           #steModemShutdown:Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 432
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "ShutdownThread"

    const-string v16, "STE Modem Shutdown not possible.  Using fallback."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v15, "ShutdownThread"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 437
    .end local v6           #e:Ljava/lang/Exception;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 442
    :catch_2
    move-exception v7

    .line 443
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during radio shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 452
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    .line 454
    :catch_3
    move-exception v7

    .line 455
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 465
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    .line 466
    :catchall_1
    move-exception v15

    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v15

    .line 469
    :cond_c
    const/4 v9, 0x0

    goto :goto_9

    .line 470
    :catch_4
    move-exception v7

    .line 471
    .restart local v7       #ex:Landroid/os/RemoteException;
    const-string v15, "ShutdownThread"

    const-string v16, "RemoteException during radio shutdown"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    const/4 v9, 0x1

    goto :goto_9

    .line 485
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_d
    const-wide/16 v15, 0x1f4

    invoke-static/range {v15 .. v16}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_6
.end method
