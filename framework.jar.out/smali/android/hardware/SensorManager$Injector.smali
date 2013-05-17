.class Landroid/hardware/SensorManager$Injector;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Injector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSeaLevelPressure(F)F
    .locals 7
    .parameter "p0"

    .prologue
    const v6, 0x447d5000

    .line 1134
    sub-float v2, p0, v6

    float-to-double v2, v2

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    sub-float v2, p0, v6

    float-to-double v2, v2

    const-wide v4, -0x414f39085f4a1273L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1136
    const-string/jumbo v2, "persist.sea_level_pres"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, pressure:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1139
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 1146
    .end local v1           #pressure:Ljava/lang/String;
    :cond_0
    :goto_0
    return p0

    .line 1140
    .restart local v1       #pressure:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1141
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "getAltitude"

    const-string v3, "System property local sea level pressure not a float value"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
