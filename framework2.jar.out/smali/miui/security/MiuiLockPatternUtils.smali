.class public Lmiui/security/MiuiLockPatternUtils;
.super Lcom/android/internal/widget/LockPatternUtils;
.source "MiuiLockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;,
        Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    }
.end annotation


# static fields
.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_AC:I = 0x0

.field public static final MIUI_LOCK_PATTERN_DATA_TYPE_SMS:I = 0x1

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "MiuiLockPatternUtils"

.field private static mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const/4 v1, 0x0

    new-instance v2, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "access_control"

    const-string v4, "access_control.key"

    invoke-direct {v2, v3, v4}, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    const-string v3, "sms"

    const-string v4, "sms_private.key"

    invoke-direct {v2, v3, v4}, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "type"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 81
    iput p2, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    .line 82
    sget-object v3, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    aget-object v0, v3, p2

    .line 83
    .local v0, data:Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    iget-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/system/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, dataSystemDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 86
    iget-object v4, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    const/16 v2, 0x388

    .line 89
    .local v2, fileObserverMask:I
    new-instance v3, Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;

    invoke-direct {v3, v1, v2}, Lmiui/security/MiuiLockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    .line 90
    iget-object v3, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 92
    .end local v1           #dataSystemDirectory:Ljava/lang/String;
    .end local v2           #fileObserverMask:I
    :cond_0
    return-void

    .line 86
    .restart local v1       #dataSystemDirectory:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    return-object v0
.end method


# virtual methods
.method public checkMiuiLockPattern(Ljava/util/List;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v6, 0x1

    .line 103
    :try_start_0
    sget-object v7, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v8, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    aget-object v7, v7, v8

    iget-object v0, v7, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 104
    .local v0, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v4, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v5, v7, [B

    .line 106
    .local v5, stored:[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 107
    .local v2, got:I
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 108
    if-gtz v2, :cond_0

    .line 116
    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #got:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    :goto_0
    return v6

    .line 112
    .restart local v0       #filename:Ljava/lang/String;
    .restart local v2       #got:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #stored:[B
    :cond_0
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->callPatternToHash(Ljava/util/List;)[B

    move-result-object v7

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    goto :goto_0

    .line 113
    .end local v0           #filename:Ljava/lang/String;
    .end local v2           #got:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    :catch_0
    move-exception v1

    .line 114
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 115
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 116
    .local v3, ioe:Ljava/io/IOException;
    goto :goto_0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 3

    .prologue
    .line 158
    const-string v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmiui/security/MiuiLockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 159
    return-void
.end method

.method public saveMiuiLockPattern(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->callPatternToHash(Ljava/util/List;)[B

    move-result-object v2

    .line 135
    .local v2, hash:[B
    sget-object v5, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v6, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    aget-object v5, v5, v6

    iget-object v0, v5, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mLockFilename:Ljava/lang/String;

    .line 138
    .local v0, filename:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v4, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_0

    .line 141
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 145
    :goto_0
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 153
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 143
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 146
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 148
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 151
    .local v3, ioe:Ljava/io/IOException;
    const-string v5, "MiuiLockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock pattern to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public savedMiuiLockPatternExists()Z
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lmiui/security/MiuiLockPatternUtils;->mMiuiLockPatternDatas:[Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;

    iget v1, p0, Lmiui/security/MiuiLockPatternUtils;->mType:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lmiui/security/MiuiLockPatternUtils$MiuiLockPatternData;->mHaveNonZeroFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
