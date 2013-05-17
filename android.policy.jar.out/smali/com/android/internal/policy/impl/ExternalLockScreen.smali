.class public Lcom/android/internal/policy/impl/ExternalLockScreen;
.super Ljava/lang/Object;
.source "ExternalLockScreen.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_ALLOW_UNPROTECTED_LOCKSCREENS:Z = false

.field private static final EXTERNAL_LOCKSCREEN_ENTRY_CLASS_KEY:Ljava/lang/String; = "com.sonymobile.lockscreen.ENTRYCLASS"

.field private static final EXTERNAL_LOCKSCREEN_KEY:Ljava/lang/String; = "external_lockscreen"

.field private static final EXTERNAL_LOCKSCREEN_PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.EXTERNAL_LOCKSCREEN"

.field private static final TAG:Ljava/lang/String; = "ExternalLockScreen"

.field private static sExternalLockScreenInfo:Landroid/content/ComponentName;

.field private static sLoaded:Z

.field private static sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLoaded:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLockScreenContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 90
    .local v1, lockScreenContext:Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ExternalLockScreen"

    const-string v3, "Exception when creating LockScreen context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getExternalLockScreenPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, className:Ljava/lang/String;
    const/4 v2, 0x0

    .line 107
    .local v2, info:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 108
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 110
    .local v3, packageInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 111
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.sonymobile.lockscreen.ENTRYCLASS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 116
    new-instance v2, Landroid/content/ComponentName;

    .end local v2           #info:Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .restart local v2       #info:Landroid/content/ComponentName;
    :cond_1
    return-object v2
.end method

.method public static getLockScreen(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 11
    .parameter "context"
    .parameter "keyguardScreenCallback"

    .prologue
    .line 196
    const/4 v2, 0x0

    .line 197
    .local v2, lockScreen:Landroid/view/View;
    const/4 v4, 0x0

    .line 198
    .local v4, lockScreenInfo:Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 203
    .local v8, validationOk:Z
    sget-object v9, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 212
    :try_start_0
    sget-boolean v9, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLoaded:Z

    if-nez v9, :cond_1

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "external_lockscreen"

    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/ExternalLockScreen;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, packageInfo:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 216
    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, screenInfo:[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 218
    const/4 v9, 0x0

    aget-object v6, v7, v9

    .line 219
    .local v6, packageNameInfo:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, classNameInfo:Ljava/lang/String;
    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 225
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/android/internal/policy/impl/ExternalLockScreen;->sExternalLockScreenInfo:Landroid/content/ComponentName;

    .line 231
    .end local v1           #classNameInfo:Ljava/lang/String;
    .end local v6           #packageNameInfo:Ljava/lang/String;
    .end local v7           #screenInfo:[Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLoaded:Z

    .line 233
    .end local v5           #packageInfo:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/ExternalLockScreen;->sExternalLockScreenInfo:Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    sget-object v9, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 241
    if-nez v4, :cond_2

    .line 242
    invoke-static {p0}, Lcom/android/internal/policy/impl/ExternalLockScreen;->getExternalLockScreenPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    .line 246
    :cond_2
    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/ExternalLockScreen;->validateExternalLockScreen(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v8

    .line 250
    if-eqz v8, :cond_3

    .line 251
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/android/internal/policy/impl/ExternalLockScreen;->createLockScreenContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 253
    .local v3, lockScreenContext:Landroid/content/Context;
    if-eqz v3, :cond_3

    .line 254
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 255
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-static {v0, v4, v3, p1}, Lcom/android/internal/policy/impl/ExternalLockScreen;->instantiateLockScreen(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;

    move-result-object v2

    .line 264
    .end local v0           #classLoader:Ljava/lang/ClassLoader;
    .end local v3           #lockScreenContext:Landroid/content/Context;
    :cond_3
    instance-of v9, v2, Lcom/android/internal/policy/impl/KeyguardScreen;

    if-nez v9, :cond_4

    .line 265
    const/4 v2, 0x0

    .line 268
    :cond_4
    return-object v2

    .line 238
    :catchall_0
    move-exception v9

    sget-object v10, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
.end method

.method private static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"
    .parameter "secureSettingKey"

    .prologue
    .line 309
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static instantiateLockScreen(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 11
    .parameter "classLoader"
    .parameter "lockScreenInfo"
    .parameter "externalLockScreenContext"
    .parameter "keyguardScreenCallback"

    .prologue
    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, lockScreenInstance:Landroid/view/View;
    const/4 v3, 0x0

    .line 164
    .local v3, lockScreenClass:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/View;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 165
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    aput-object v10, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 167
    .local v1, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/view/View;>;"
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 180
    .end local v1           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/view/View;>;"
    :goto_0
    return-object v4

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, cnfe:Ljava/lang/ClassNotFoundException;
    const-string v8, "ExternalLockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "External lockscreen class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " could not be found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v2           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 172
    .local v5, nsme:Ljava/lang/NoSuchMethodException;
    const-string v8, "ExternalLockScreen"

    const-string v9, "External lockscreen constructor could not be found"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v5           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v6

    .line 174
    .local v6, se:Ljava/lang/SecurityException;
    const-string v8, "ExternalLockScreen"

    const-string v9, "Security Exception when obtaining External Lockscreen constructor"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v6           #se:Ljava/lang/SecurityException;
    :catch_3
    move-exception v7

    .line 177
    .local v7, t:Ljava/lang/Throwable;
    const-string v8, "ExternalLockScreen"

    const-string v9, "Error occured when instantiating the external lockscreen"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "contentResolver"
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 325
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 327
    return-void
.end method

.method public static setExternalLockScreen(Landroid/content/ContentResolver;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "contentResolver"
    .parameter "externalLockscreenInfo"

    .prologue
    .line 279
    sget-object v2, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 285
    :try_start_0
    sput-object p1, Lcom/android/internal/policy/impl/ExternalLockScreen;->sExternalLockScreenInfo:Landroid/content/ComponentName;

    .line 286
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, packageName:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string v2, "external_lockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/policy/impl/ExternalLockScreen;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 296
    return-void

    .line 294
    .end local v0           #className:Ljava/lang/String;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/internal/policy/impl/ExternalLockScreen;->sLockScreenInfoLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method private static validateExternalLockScreen(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 132
    :cond_0
    const-string v2, "ExternalLockScreen"

    const-string v3, "External lockscreen name and package info has not been set correctly!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return v1

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 141
    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v2, "com.sonyericsson.permission.EXTERNAL_LOCKSCREEN"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    const-string v2, "ExternalLockScreen"

    const-string v3, "Validation of external lockscreen failed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
