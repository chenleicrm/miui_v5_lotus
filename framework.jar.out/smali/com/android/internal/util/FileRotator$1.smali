.class Lcom/android/internal/util/FileRotator$1;
.super Ljava/lang/Object;
.source "FileRotator.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Rewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/FileRotator;->combineActive(Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/FileRotator;

.field final synthetic val$reader:Lcom/android/internal/util/FileRotator$Reader;

.field final synthetic val$writer:Lcom/android/internal/util/FileRotator$Writer;


# direct methods
.method constructor <init>(Lcom/android/internal/util/FileRotator;Lcom/android/internal/util/FileRotator$Reader;Lcom/android/internal/util/FileRotator$Writer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/internal/util/FileRotator$1;->this$0:Lcom/android/internal/util/FileRotator;

    iput-object p2, p0, Lcom/android/internal/util/FileRotator$1;->val$reader:Lcom/android/internal/util/FileRotator$Reader;

    iput-object p3, p0, Lcom/android/internal/util/FileRotator$1;->val$writer:Lcom/android/internal/util/FileRotator$Writer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/util/FileRotator$1;->val$reader:Lcom/android/internal/util/FileRotator$Reader;

    invoke-interface {v0, p1}, Lcom/android/internal/util/FileRotator$Reader;->read(Ljava/io/InputStream;)V

    .line 203
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public shouldWrite()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/util/FileRotator$1;->val$writer:Lcom/android/internal/util/FileRotator$Writer;

    invoke-interface {v0, p1}, Lcom/android/internal/util/FileRotator$Writer;->write(Ljava/io/OutputStream;)V

    .line 213
    return-void
.end method
