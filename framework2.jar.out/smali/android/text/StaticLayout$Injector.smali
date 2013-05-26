.class Landroid/text/StaticLayout$Injector;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isIdeographic(CZ)Z
    .locals 2
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v0, 0x0

    .line 59
    const/16 v1, 0x3001

    if-lt p0, v1, :cond_0

    const/16 v1, 0x3017

    if-gt p0, v1, :cond_0

    .line 60
    sparse-switch p0, :sswitch_data_0

    .line 67
    sparse-switch p0, :sswitch_data_1

    .line 77
    :cond_0
    const v1, 0xfe5d

    if-ne p0, v1, :cond_2

    move p1, v0

    .line 96
    .end local p1
    :cond_1
    :goto_0
    :sswitch_0
    return p1

    .restart local p1
    :sswitch_1
    move p1, v0

    .line 65
    goto :goto_0

    .line 79
    :cond_2
    const v1, 0xfe5e

    if-eq p0, v1, :cond_1

    .line 82
    const v1, 0xff01

    if-lt p0, v1, :cond_4

    const v1, 0xff1f

    if-gt p0, v1, :cond_4

    .line 83
    const v1, 0xff08

    if-ne p0, v1, :cond_3

    move p1, v0

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    sparse-switch p0, :sswitch_data_2

    :cond_4
    move p1, v0

    .line 96
    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x300a -> :sswitch_1
        0x300e -> :sswitch_1
        0x3010 -> :sswitch_1
        0x3016 -> :sswitch_1
    .end sparse-switch

    .line 67
    :sswitch_data_1
    .sparse-switch
        0x3001 -> :sswitch_0
        0x3002 -> :sswitch_0
        0x300b -> :sswitch_0
        0x300f -> :sswitch_0
        0x3011 -> :sswitch_0
        0x3017 -> :sswitch_0
    .end sparse-switch

    .line 86
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_0
        0xff09 -> :sswitch_0
        0xff0c -> :sswitch_0
        0xff1a -> :sswitch_0
        0xff1b -> :sswitch_0
        0xff1f -> :sswitch_0
    .end sparse-switch
.end method

.method static validateCJKCharAsSpace(C[CIII)C
    .locals 4
    .parameter "c"
    .parameter "chs"
    .parameter "j"
    .parameter "spanEnd"
    .parameter "paraStart"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x2e80

    .line 49
    if-lt p0, v1, :cond_0

    invoke-static {p0, v3}, Landroid/text/StaticLayout;->callIsIdeographic(CZ)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p4

    aget-char v0, p1, v0

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p4

    aget-char v0, p1, v0

    invoke-static {v0, v2}, Landroid/text/StaticLayout;->callIsIdeographic(CZ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-ge p0, v1, :cond_2

    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p4

    aget-char v0, p1, v0

    if-lt v0, v1, :cond_2

    invoke-static {p0, v3}, Landroid/text/StaticLayout;->callIsIdeographic(CZ)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p4

    aget-char v0, p1, v0

    invoke-static {v0, v2}, Landroid/text/StaticLayout;->callIsIdeographic(CZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :cond_1
    const/16 p0, 0x20

    .line 55
    .end local p0
    :cond_2
    return p0
.end method
