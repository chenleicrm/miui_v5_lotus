.class Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.super Ljava/lang/Object;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    const v0, 0x1040500

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    const v0, 0x10404ff

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    const v0, 0x1040501

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    const v0, 0x1040502

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    const v0, 0x1040503

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    const v0, 0x10404fe

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    const v0, 0x10404fd

    return v0
.end method
