.class public Lcom/android/internal/widget/BackupQuestionUtils;
.super Ljava/lang/Object;
.source "BackupQuestionUtils.java"


# static fields
.field private static final BACKUP_QUESTION_FILE:Ljava/lang/String; = "/system/backup_question.key"

.field private static final DEBUG:Z = false

.field private static final QUESTION_EVER_SET:Ljava/lang/String; = "lockscreen.questioneverset"

.field private static final SELECTED_QUESTION:Ljava/lang/String; = "lockscreen.selectedquestion"

.field private static final TAG:Ljava/lang/String; = "SemcBackupQuestionUtils"

.field private static final sBackupQuestionFilename:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/backup_question.key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/BackupQuestionUtils;->sBackupQuestionFilename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/BackupQuestionUtils;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static stringToHash(Ljava/lang/String;)[B
    .locals 7
    .parameter "string"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .local v1, lowerCaseString:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, res:[B
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, hash:[B
    goto :goto_0

    .end local v0           #hash:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v3

    .local v3, nsa:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "NoSuchAlgorithmException exception"

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public checkAnswer(Ljava/lang/String;)Z
    .locals 9
    .parameter "enteredAnswer"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/BackupQuestionUtils;->sBackupQuestionFilename:Ljava/lang/String;

    const-string v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .local v5, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .local v1, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    if-gtz v1, :cond_2

    const/4 v3, 0x1

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v4, v5

    .end local v1           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v3

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_2
    :try_start_3
    invoke-static {p1}, Lcom/android/internal/widget/BackupQuestionUtils;->stringToHash(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v3

    .local v3, match:Z
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_3
    :goto_2
    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v1           #got:I
    .end local v3           #match:Z
    .end local v6           #stored:[B
    :catch_0
    move-exception v0

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_3
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    :goto_4
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_1

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_6
    throw v7

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :catch_4
    move-exception v7

    goto :goto_0

    .restart local v3       #match:Z
    :catch_5
    move-exception v7

    goto :goto_2

    .end local v1           #got:I
    .end local v3           #match:Z
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_6
    move-exception v8

    goto :goto_6

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_5

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3
.end method

.method public getSelectedQuestion(I)I
    .locals 2
    .parameter "defaultQuestionIndex"

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/BackupQuestionUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lockscreen.selectedquestion"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isQuestionEverSet()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/BackupQuestionUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lockscreen.questioneverset"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public saveQuestionAnswerPair(ILjava/lang/String;)V
    .locals 7
    .parameter "questionIndex"
    .parameter "answer"

    .prologue
    invoke-static {p2}, Lcom/android/internal/widget/BackupQuestionUtils;->stringToHash(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, hash:[B
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/internal/widget/BackupQuestionUtils;->sBackupQuestionFilename:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, raf:Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    iget-object v4, p0, Lcom/android/internal/widget/BackupQuestionUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen.selectedquestion"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/internal/widget/BackupQuestionUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "lockscreen.questioneverset"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v4, "SemcBackupQuestionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. Unable to save backup question to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/BackupQuestionUtils;->sBackupQuestionFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    const-string v4, "SemcBackupQuestionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Error. Unable to save backup question to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/BackupQuestionUtils;->sBackupQuestionFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
