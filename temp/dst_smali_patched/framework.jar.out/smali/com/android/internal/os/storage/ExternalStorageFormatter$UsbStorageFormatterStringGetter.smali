.class Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;
.super Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageFormatterStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$StorageFormatterStringGetter;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$UsbStorageFormatterStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getStringBadRemoval()I
    .locals 1

    .prologue
    const v0, 0x10400d3

    return v0
.end method

.method getStringFormatError()I
    .locals 1

    .prologue
    const v0, 0x10400d2

    return v0
.end method

.method getStringMediaChecking()I
    .locals 1

    .prologue
    const v0, 0x10400d0

    return v0
.end method

.method getStringMediaRemoved()I
    .locals 1

    .prologue
    const v0, 0x10400d4

    return v0
.end method

.method getStringMediaShared()I
    .locals 1

    .prologue
    const v0, 0x10400d5

    return v0
.end method

.method getStringProgressErasing()I
    .locals 1

    .prologue
    const v0, 0x10400cf

    return v0
.end method

.method getStringProgressUnmounting()I
    .locals 1

    .prologue
    const v0, 0x10400d1

    return v0
.end method
