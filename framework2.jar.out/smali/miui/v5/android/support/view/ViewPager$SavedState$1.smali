.class final Lmiui/v5/android/support/view/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/v5/android/support/view/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/v5/android/support/view/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Lmiui/v5/android/support/view/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/v5/android/support/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/v5/android/support/view/ViewPager$SavedState;
    .locals 1
    .parameter "source"

    .prologue
    .line 995
    new-instance v0, Lmiui/v5/android/support/view/ViewPager$SavedState;

    invoke-direct {v0, p1}, Lmiui/v5/android/support/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Lmiui/v5/android/support/view/ViewPager$SavedState$1;->newArray(I)[Lmiui/v5/android/support/view/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/v5/android/support/view/ViewPager$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 999
    new-array v0, p1, [Lmiui/v5/android/support/view/ViewPager$SavedState;

    return-object v0
.end method
