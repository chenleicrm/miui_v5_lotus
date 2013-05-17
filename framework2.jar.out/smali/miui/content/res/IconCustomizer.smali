.class public Lmiui/content/res/IconCustomizer;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/IconCustomizer$CustomizedIconsListener;,
        Lmiui/content/res/IconCustomizer$IconConfig;
    }
.end annotation


# static fields
.field public static final CUSTOMIZED_ICON_PATH:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final FANCY_ICONS_INNER_PATH:Ljava/lang/String; = "fancy_icons/"

.field private static final FINAL_MOD_ICONS:Ljava/lang/String; = "/data/system/customized_icons/"

.field private static final ICON_TRANSFORM_CONFIG:Ljava/lang/String; = "transform_config.xml"

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizer"

.field private static final MIUI_MOD_BUILT_IN_ICONS:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/"

.field private static final MIUI_MOD_BUILT_IN_ICONS_VERSION:Ljava/lang/String; = "/system/media/theme/miui_mod_icons/version"

.field private static final MIUI_MOD_DOWNLOAD_ICONS:Ljava/lang/String; = "/data/data/com.xiaomi.market/files/miui_mod_icons/"

.field private static final sAlphaShift:I = 0x18

.field private static final sCanvas:Landroid/graphics/Canvas; = null

.field private static final sColorShift:I = 0x8

#the value of this static final field might be set in the static constructor
.field public static final sCustomizedIconHeight:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final sCustomizedIconWidth:I = 0x0

.field private static final sDensities:[I = null

#the value of this static final field might be set in the static constructor
.field private static final sDensity:I = 0x0

.field private static sIconCache:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig; = null

.field private static sIconMapping:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconTransformMatrix:Landroid/graphics/Matrix; = null

.field private static sIconTransformNeeded:Z = false

.field private static final sRGBMask:I = 0xffffff

.field private static sRawIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSystemResource:Landroid/content/res/Resources;

.field private static sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x5a

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    .line 75
    sget-object v0, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    .line 76
    sget v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-static {v0}, Lmiui/util/DisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sDensities:[I

    .line 78
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 79
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scalePixel(I)I

    move-result v0

    sput v0, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 81
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 84
    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 85
    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 115
    sget-object v0, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    .line 347
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    .line 349
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.contacts.activities.TwelveKeyDialer.png"

    const-string v2, "com.android.contacts.TwelveKeyDialer.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.weather2.png"

    const-string v2, "com.miui.weather.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.miui.gallery.png"

    const-string v2, "com.android.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d.png"

    const-string v2, "com.cooliris.media.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.xiaomi.market.png"

    const-string v2, "com.miui.supermarket.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.wali.miui.networkassistant.png"

    const-string v2, "com.android.monitor.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.camera.CameraEntry.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.album.png"

    const-string v2, "com.miui.gallery.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.activity.FMRadioMain.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.htc.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sec.android.app.fm.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.android.hwcamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.huawei.android.FMRadio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.android.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.sonyericsson.fmradio.png"

    const-string v2, "com.miui.fmradio.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.motorola.Camera.Camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.lge.camera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    const-string v1, "com.oppo.camera.OppoCamera.png"

    const-string v2, "com.android.camera.png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    return-void
.end method

.method private static RGBToColor([I)I
    .locals 2
    .parameter "RGB"

    .prologue
    .line 893
    const/4 v0, 0x0

    aget v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget v1, p0, v1

    add-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    aget v1, p0, v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    return-void
.end method

.method public static checkModIconsTimestamp()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 213
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/customized_icons/"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    :try_start_0
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const-string v8, "/data/system/customized_icons/"

    invoke-interface {v7, v8}, Llibcore/io/Os;->lstat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v7

    iget-wide v0, v7, Llibcore/io/StructStat;->st_ctime:J

    .line 217
    .local v0, createdTime:J
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 218
    .local v4, modifiedTime:J
    cmp-long v7, v4, v0

    if-gtz v7, :cond_0

    .line 219
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/media/theme/miui_mod_icons/version"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 221
    .local v6, reader:Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 222
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 224
    .end local v6           #reader:Ljava/io/BufferedReader;
    :cond_0
    cmp-long v7, v4, v0

    if-lez v7, :cond_1

    .line 225
    invoke-static {v3}, Lmiui/os/ExtraFileUtils;->deleteDir(Ljava/io/File;)Z

    .line 226
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v0           #createdTime:J
    .end local v4           #modifiedTime:J
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 234
    const/16 v7, 0x1ed

    invoke-static {v3, v7, v10, v10}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 236
    :cond_2
    return-void

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 202
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 203
    :try_start_0
    sget-object v0, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v1

    .line 206
    :try_start_1
    sget-object v0, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 209
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    .line 210
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 207
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static clearCustomizedIcons(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    const/16 v1, 0x3e8

    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    .line 241
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0}, Lmiui/os/Shell;->mkdirs(Ljava/lang/String;)Z

    .line 242
    const-string v0, "/data/system/customized_icons/"

    invoke-static {v0, v1, v1}, Lmiui/os/Shell;->chown(Ljava/lang/String;II)Z

    .line 243
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/customized_icons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/os/Shell;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static colorToRGB(I)[I
    .locals 3
    .parameter "color"

    .prologue
    .line 887
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0xff

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x2

    and-int/lit16 v2, p0, 0xff

    aput v2, v0, v1

    return-object v0
.end method

.method private static composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "base"
    .parameter "modBackground"
    .parameter "modPattern"
    .parameter "modCover"

    .prologue
    .line 609
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    if-nez v2, :cond_0

    .line 610
    invoke-static {}, Lmiui/content/res/IconCustomizer;->loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;

    move-result-object v2

    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    .line 611
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v4}, Lmiui/content/res/IconCustomizer;->makeIconMatrix(II)Landroid/graphics/Matrix;

    move-result-object v2

    sput-object v2, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    .line 613
    :cond_0
    sget-boolean v2, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z

    if-eqz v2, :cond_1

    .line 614
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconTransformMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 618
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 619
    .local v3, baseWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 620
    .local v7, baseHeight:I
    mul-int v2, v3, v7

    new-array v1, v2, [I

    .line 621
    .local v1, basePixels:[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 622
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    invoke-static {v3, v7, v1}, Lmiui/content/res/IconCustomizer;->cutEdge(II[I)V

    .line 628
    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v4, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 629
    .local v13, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 632
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-static {p1}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 633
    .local v10, background:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 634
    invoke-static {v0, v10, v3, v7, v1}, Lmiui/content/res/IconCustomizer;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II[I)V

    .line 638
    :cond_2
    invoke-static/range {p2 .. p2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 639
    .local v12, pattern:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_3

    .line 640
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v12, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 644
    :cond_3
    const/4 v2, 0x0

    sget v4, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v5, v5, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    add-float/2addr v4, v5

    sget v5, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v6, v6, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    add-float/2addr v5, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 648
    invoke-static/range {p3 .. p3}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 649
    .local v11, foreground:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_4

    .line 650
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v11, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 653
    :cond_4
    return-object v13
.end method

.method private static cutEdge(II[I)V
    .locals 11
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "basePixels"

    .prologue
    .line 658
    const-string v2, "icon_mask.png"

    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 659
    .local v0, alphaCutter:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 677
    :cond_0
    return-void

    .line 662
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 663
    .local v9, alphaWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 664
    .local v8, alphaHeight:I
    if-lt v9, p0, :cond_0

    if-lt v8, p1, :cond_0

    .line 667
    mul-int v2, v9, v8

    new-array v1, v2, [I

    .line 668
    .local v1, alphaPixels:[I
    const/4 v2, 0x0

    sub-int v3, v9, p0

    div-int/lit8 v4, v3, 0x2

    sub-int v3, v8, p1

    div-int/lit8 v5, v3, 0x2

    move v3, p0

    move v6, p0

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 673
    mul-int v2, p0, p1

    add-int/lit8 v10, v2, -0x1

    .local v10, i:I
    :goto_0
    if-ltz v10, :cond_0

    .line 674
    aget v2, p2, v10

    const v3, 0xffffff

    aget v4, p2, v10

    ushr-int/lit8 v4, v4, 0x18

    aget v5, v1, v10

    ushr-int/lit8 v5, v5, 0x18

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    and-int/2addr v2, v3

    aput v2, p2, v10

    .line 673
    add-int/lit8 v10, v10, -0x1

    goto :goto_0
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II[I)V
    .locals 19
    .parameter "canvas"
    .parameter "background"
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "basePixels"

    .prologue
    .line 810
    const/16 v17, 0x0

    .line 811
    .local v17, sum:I
    const/4 v1, 0x3

    new-array v0, v1, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 815
    .local v18, sumRGB:[I
    mul-int v1, p2, p3

    add-int/lit8 v14, v1, -0x1

    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_1

    .line 816
    aget v1, p4, v14

    const v3, 0xffffff

    and-int v12, v1, v3

    .line 818
    .local v12, color:I
    if-lez v12, :cond_0

    .line 819
    invoke-static {v12}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v11

    .line 820
    .local v11, RGB:[I
    const/4 v1, 0x0

    aget v3, v18, v1

    const/4 v5, 0x0

    aget v5, v11, v5

    add-int/2addr v3, v5

    aput v3, v18, v1

    .line 821
    const/4 v1, 0x1

    aget v3, v18, v1

    const/4 v5, 0x1

    aget v5, v11, v5

    add-int/2addr v3, v5

    aput v3, v18, v1

    .line 822
    const/4 v1, 0x2

    aget v3, v18, v1

    const/4 v5, 0x2

    aget v5, v11, v5

    add-int/2addr v3, v5

    aput v3, v18, v1

    .line 823
    add-int/lit8 v17, v17, 0x1

    .line 815
    .end local v11           #RGB:[I
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 826
    .end local v12           #color:I
    :cond_1
    if-lez v17, :cond_2

    .line 827
    const/4 v1, 0x0

    aget v3, v18, v1

    div-int v3, v3, v17

    aput v3, v18, v1

    .line 828
    const/4 v1, 0x1

    aget v3, v18, v1

    div-int v3, v3, v17

    aput v3, v18, v1

    .line 829
    const/4 v1, 0x2

    aget v3, v18, v1

    div-int v3, v3, v17

    aput v3, v18, v1

    .line 833
    :cond_2
    invoke-static/range {v18 .. v18}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result v12

    .line 834
    .restart local v12       #color:I
    invoke-static {v12}, Lmiui/content/res/IconCustomizer;->getSaturation(I)F

    move-result v1

    float-to-double v5, v1

    const-wide v9, 0x3f947ae147ae147bL

    cmpg-double v1, v5, v9

    if-gez v1, :cond_3

    .line 835
    const/4 v12, 0x0

    .line 867
    :goto_1
    invoke-static {v12}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v18

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 870
    .local v4, backgroundWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 871
    .local v8, backgroundHeight:I
    mul-int v1, v4, v8

    new-array v2, v1, [I

    .line 872
    .local v2, backgroundPixels:[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 873
    mul-int v1, v4, v8

    add-int/lit8 v14, v1, -0x1

    :goto_2
    if-ltz v14, :cond_7

    .line 874
    aget v12, v2, v14

    .line 876
    const/high16 v1, -0x100

    and-int/2addr v1, v12

    const/high16 v3, 0xff

    and-int/2addr v3, v12

    const/4 v5, 0x0

    aget v5, v18, v5

    mul-int/2addr v3, v5

    ushr-int/lit8 v3, v3, 0x8

    const/high16 v5, 0xff

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    const v3, 0xff00

    and-int/2addr v3, v12

    const/4 v5, 0x1

    aget v5, v18, v5

    mul-int/2addr v3, v5

    ushr-int/lit8 v3, v3, 0x8

    const v5, 0xff00

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    and-int/lit16 v3, v12, 0xff

    const/4 v5, 0x2

    aget v5, v18, v5

    mul-int/2addr v3, v5

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    aput v1, v2, v14

    .line 873
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 838
    .end local v2           #backgroundPixels:[I
    .end local v4           #backgroundWidth:I
    .end local v8           #backgroundHeight:I
    :cond_3
    const/4 v1, 0x2

    new-array v0, v1, [[I

    move-object/from16 v16, v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v16, v1

    const/4 v1, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v16, v1

    .line 845
    .local v16, mappingSections:[[I
    const/16 v17, 0x0

    .line 846
    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v14, v1, :cond_4

    .line 847
    aget-object v1, v16, v14

    const/4 v3, 0x1

    aget v1, v1, v3

    aget-object v3, v16, v14

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int/2addr v1, v3

    add-int v17, v17, v1

    .line 846
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 850
    :cond_4
    invoke-static {v12}, Lmiui/content/res/IconCustomizer;->getHue(I)F

    move-result v13

    .line 851
    .local v13, hue:F
    move/from16 v0, v17

    int-to-float v1, v0

    mul-float/2addr v1, v13

    const/high16 v3, 0x43b4

    div-float v13, v1, v3

    .line 852
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, v16

    array-length v1, v0

    if-ge v14, v1, :cond_6

    .line 853
    aget-object v1, v16, v14

    const/4 v3, 0x1

    aget v1, v1, v3

    aget-object v3, v16, v14

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int v15, v1, v3

    .line 854
    .local v15, length:I
    int-to-float v1, v15

    cmpl-float v1, v13, v1

    if-lez v1, :cond_5

    .line 855
    int-to-float v1, v15

    sub-float/2addr v13, v1

    .line 852
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 857
    :cond_5
    aget-object v1, v16, v14

    const/4 v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    add-float/2addr v13, v1

    .line 861
    .end local v15           #length:I
    :cond_6
    invoke-static {v12, v13}, Lmiui/content/res/IconCustomizer;->setHue(IF)I

    move-result v12

    .line 864
    const v1, 0x3f19999a

    invoke-static {v12, v1}, Lmiui/content/res/IconCustomizer;->setValue(IF)I

    move-result v12

    .line 865
    const v1, 0x3ecccccd

    invoke-static {v12, v1}, Lmiui/content/res/IconCustomizer;->setSaturation(IF)I

    move-result v12

    goto/16 :goto_1

    .line 883
    .end local v13           #hue:F
    .end local v16           #mappingSections:[[I
    .restart local v2       #backgroundPixels:[I
    .restart local v4       #backgroundWidth:I
    .restart local v8       #backgroundHeight:I
    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move v7, v4

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 884
    return-void

    .line 811
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 838
    :array_1
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xbet 0x0t 0x0t 0x0t
        0x13t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "icon"
    .parameter "ratio"

    .prologue
    const/high16 v13, 0x4000

    .line 572
    sget-object v10, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 573
    :try_start_0
    sget v8, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    .line 574
    .local v8, targetWidth:I
    sget v7, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    .line 576
    .local v7, targetHeight:I
    instance-of v9, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v9, :cond_1

    .line 577
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v4, v0

    .line 578
    .local v4, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 579
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 589
    .end local v4           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 590
    .local v6, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 591
    .local v5, sourceHeight:I
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 593
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 595
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sCanvas:Landroid/graphics/Canvas;

    .line 596
    .local v3, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 597
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 598
    int-to-float v9, v8

    int-to-float v11, v6

    mul-float/2addr v11, p1

    sub-float/2addr v9, v11

    div-float/2addr v9, v13

    int-to-float v11, v7

    int-to-float v12, v5

    mul-float/2addr v12, p1

    sub-float/2addr v11, v12

    div-float/2addr v11, v13

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 599
    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 600
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 603
    monitor-exit v10

    return-object v1

    .line 580
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #sourceHeight:I
    .end local v6           #sourceWidth:I
    :cond_1
    instance-of v9, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_0

    .line 582
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 583
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 584
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v9

    if-nez v9, :cond_0

    .line 585
    sget-object v9, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 604
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v7           #targetHeight:I
    .end local v8           #targetWidth:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "base"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "base"
    .parameter "cropOutside"

    .prologue
    .line 445
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    .local v0, icon:Landroid/graphics/Bitmap;
    const-string v1, "icon_background.png"

    const-string v2, "icon_pattern.png"

    const-string v3, "icon_border.png"

    invoke-static {v0, v1, v2, v3}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "base"

    .prologue
    .line 435
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v1

    invoke-static {p0, v1}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 436
    .local v0, icon:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const-string v2, "icon_shortcut.png"

    const-string v3, "icon_shortcut_arrow.png"

    invoke-static {v0, v1, v2, v3}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "original"

    .prologue
    .line 455
    invoke-static {p1, p2}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lmiui/content/res/IconCustomizer;->getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomizedIconFromCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 451
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIconInner(Landroid/content/Context;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .parameter "context"
    .parameter
    .parameter "original"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    .prologue
    .local p1, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 465
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 466
    .local v2, filename:Ljava/lang/String;
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 467
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 504
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 469
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 471
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 472
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 475
    :cond_1
    if-nez v0, :cond_5

    .line 476
    const/4 v4, 0x0

    .line 477
    .local v4, icon:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    :goto_2
    if-nez v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 478
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 481
    :cond_2
    if-nez v4, :cond_3

    if-eqz p2, :cond_3

    .line 482
    invoke-static {p2, v9}, Lmiui/content/res/IconCustomizer;->getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F

    move-result v6

    invoke-static {p2, v6}, Lmiui/content/res/IconCustomizer;->drawableToBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 485
    :cond_3
    if-eqz v4, :cond_4

    .line 486
    const-string v6, "IconCustomizer"

    const-string v7, "Generate customized icon for %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v6, "icon_background.png"

    const-string v7, "icon_pattern.png"

    const-string v8, "icon_border.png"

    invoke-static {v4, v6, v7, v8}, Lmiui/content/res/IconCustomizer;->composeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 488
    move-object v5, v4

    .line 489
    .local v5, savedIcon:Landroid/graphics/Bitmap;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lmiui/content/res/IconCustomizer$1;

    invoke-direct {v7, v2, v5, p0}, Lmiui/content/res/IconCustomizer$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 496
    .end local v5           #savedIcon:Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {v4}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 499
    .end local v4           #icon:Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v0, :cond_6

    .line 500
    sget-object v7, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v7

    .line 501
    :try_start_0
    sget-object v6, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    monitor-exit v7

    :cond_6
    move-object v1, v0

    .line 504
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    .line 502
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .parameter "name"

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 421
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 422
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-static {v2}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    :goto_0
    return-object v2

    .line 422
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 423
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getDrawableFromStaticCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, icon:Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/customized_icons/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    .line 412
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 415
    :cond_0
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    return-object v3
.end method

.method private static getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 550
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getFancyIconRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 389
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 390
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 391
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, name:Ljava/lang/String;
    const-string v4, ".png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".png"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 395
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fancy_icons/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, relativePath:Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "manifest.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 390
    .restart local v1       #name:Ljava/lang/String;
    .restart local v3       #relativePath:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #relativePath:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 191
    const-string v0, "%s.png"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 194
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "%s.png"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    const-string v0, "%s#%s.png"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHue(I)F
    .locals 13
    .parameter "color"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v10, 0x4270

    const/4 v9, 0x2

    .line 946
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 948
    .local v0, RGB:[I
    aget v6, v0, v11

    aget v7, v0, v12

    aget v8, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 949
    .local v4, min:I
    aget v6, v0, v11

    aget v7, v0, v12

    aget v8, v0, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 951
    .local v3, max:I
    sub-int v5, v3, v4

    .line 952
    .local v5, range:I
    if-nez v5, :cond_0

    .line 953
    const/4 v1, 0x0

    .line 963
    :goto_0
    return v1

    .line 955
    :cond_0
    const/4 v2, 0x0

    .line 956
    .local v2, index:I
    :goto_1
    if-ge v2, v9, :cond_1

    aget v6, v0, v2

    if-eq v4, v6, :cond_1

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 959
    :cond_1
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x78

    int-to-float v1, v6

    .line 960
    .local v1, hue:F
    add-int/lit8 v6, v2, 0x2

    rem-int/lit8 v6, v6, 0x3

    aget v6, v0, v6

    sub-int/2addr v6, v4

    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 961
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v6, v6, 0x3

    aget v6, v0, v6

    sub-int v6, v3, v6

    int-to-float v6, v6

    mul-float/2addr v6, v10

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    .line 963
    goto :goto_0
.end method

.method private static getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "name"

    .prologue
    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v3

    .line 429
    :try_start_0
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .line 430
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    return-object v2

    .line 430
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 431
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "filename"

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, icon:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/content/res/IconCustomizer;->sDensities:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/content/res/IconCustomizer;->sDensities:[I

    aget v4, v4, v0

    invoke-static {v4}, Lmiui/util/DisplayUtils;->getDrawbleDensityFolder(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, targetFileName:Ljava/lang/String;
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    sget-object v4, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_2

    .line 159
    sget-object v3, Lmiui/content/res/IconCustomizer;->sDensities:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 163
    .end local v2           #targetFileName:Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 164
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v3

    sget-object v4, Lmiui/content/res/IconCustomizer;->sSystemResource:Landroid/content/res/Resources;

    invoke-virtual {v3, v4, p0}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_1

    .line 166
    const/16 v3, 0xf0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 169
    :cond_1
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 155
    .restart local v2       #targetFileName:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getIconNames(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v2, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, fileName:Ljava/lang/String;
    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconMapping:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, mappingName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    if-eqz p1, :cond_2

    .line 539
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    const-string v3, "%s.png"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_1
    const-string v3, "%s.png"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_2
    return-object v2
.end method

.method private static getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 508
    sget-boolean v2, Lmiui/os/Build;->IS_CU_CUSTOMIZATION:Z

    if-eqz v2, :cond_0

    const-string v2, "com.android.stk.png"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const-string p0, "com.android.stk.cu.png"

    .line 512
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.xiaomi.market/files/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v1, iconFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    new-instance v1, Ljava/io/File;

    .end local v1           #iconFile:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/theme/miui_mod_icons/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .restart local v1       #iconFile:Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    .line 518
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 523
    :cond_2
    return-object v0
.end method

.method private static getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "filename"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 139
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getIconFromTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    if-nez v0, :cond_2

    .line 141
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getMiuiModIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    :cond_2
    if-eqz v0, :cond_0

    .line 144
    sget-object v2, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 145
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sRawIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getRawIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .parameter "filename"

    .prologue
    .line 122
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getDrawableFromMemoryCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 123
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v0, :cond_0

    .line 124
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->getDrawble(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    monitor-enter v2

    .line 127
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconCache:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v2

    .line 131
    :cond_0
    return-object v0

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getSaturation(I)F
    .locals 9
    .parameter "color"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 919
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 921
    .local v0, RGB:[I
    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 922
    .local v2, min:I
    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 923
    .local v1, max:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 924
    :cond_0
    int-to-float v3, p0

    .line 926
    :goto_0
    return v3

    :cond_1
    const/high16 v3, 0x3f80

    sub-int v4, v1, v2

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0
.end method

.method private static getScaleRatio(Landroid/graphics/drawable/Drawable;Z)F
    .locals 6
    .parameter "icon"
    .parameter "cropOutside"

    .prologue
    const/high16 v4, 0x3f80

    .line 554
    instance-of v5, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v5, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v4

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 557
    .local v3, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 558
    .local v2, sourceHeight:I
    if-lez v3, :cond_0

    if-lez v3, :cond_0

    .line 560
    sget v4, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    int-to-float v4, v4

    int-to-float v5, v3

    div-float v1, v4, v5

    .line 561
    .local v1, ratioW:F
    sget v4, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float v0, v4, v5

    .line 563
    .local v0, ratioH:F
    if-eqz p1, :cond_2

    .line 564
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_0

    .line 567
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3f666666

    mul-float/2addr v4, v5

    goto :goto_0
.end method

.method private static getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 333
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_2

    .line 334
    const-class v2, Lmiui/content/res/IconCustomizer;

    monitor-enter v2

    .line 335
    :try_start_0
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    if-nez v1, :cond_1

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    .local v0, saveContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 338
    move-object v0, p0

    .line 340
    :cond_0
    new-instance v1, Lmiui/content/res/ThemeRuntimeManager;

    invoke-direct {v1, v0}, Lmiui/content/res/ThemeRuntimeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    .line 342
    .end local v0           #saveContext:Landroid/content/Context;
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_2
    sget-object v1, Lmiui/content/res/IconCustomizer;->sThemeRuntimeManager:Lmiui/content/res/ThemeRuntimeManager;

    return-object v1

    .line 342
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getValue(I)F
    .locals 5
    .parameter "color"

    .prologue
    .line 897
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 899
    .local v0, RGB:[I
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 900
    .local v1, max:I
    const/high16 v2, 0x3f80

    int-to-float v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    return v2
.end method

.method private static loadIconConfig()Lmiui/content/res/IconCustomizer$IconConfig;
    .locals 21

    .prologue
    .line 706
    new-instance v8, Lmiui/content/res/IconCustomizer$IconConfig;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lmiui/content/res/IconCustomizer$IconConfig;-><init>(Lmiui/content/res/IconCustomizer$1;)V

    .line 707
    .local v8, iconConfig:Lmiui/content/res/IconCustomizer$IconConfig;
    invoke-virtual {v8}, Lmiui/content/res/IconCustomizer$IconConfig;->reset()V

    .line 715
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v19

    const-string v20, "transform_config.xml"

    invoke-virtual/range {v19 .. v20}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v9

    .line 716
    .local v9, iconConfigInfo:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v9, :cond_1

    .line 717
    const-string v19, "IconCustomizer"

    const-string v20, "can\'t load transform_config.xml"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_0
    :goto_0
    return-object v8

    .line 721
    :cond_1
    const/16 v16, 0x0

    .line 722
    .local v16, root:Lorg/w3c/dom/Element;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 724
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 725
    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    iget-object v0, v9, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 731
    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    :goto_1
    :try_start_1
    iget-object v0, v9, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 735
    :goto_2
    if-eqz v16, :cond_0

    .line 736
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 738
    .local v4, configs:Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    :try_start_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_12

    .line 739
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeType()S
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 738
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 726
    .end local v4           #configs:Lorg/w3c/dom/NodeList;
    .end local v7           #i:I
    :catch_0
    move-exception v5

    .line 727
    .local v5, e:Ljava/lang/Exception;
    const-string v19, "IconCustomizer"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 742
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #configs:Lorg/w3c/dom/NodeList;
    .restart local v7       #i:I
    :cond_3
    :try_start_3
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 743
    .local v3, config:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    .line 744
    .local v11, name:Ljava/lang/String;
    const-string v19, "PointsMapping"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 745
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 746
    .local v13, points:Lorg/w3c/dom/NodeList;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v14, pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v15, pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, j:I
    :goto_5
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_6

    .line 749
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 748
    :cond_4
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 752
    :cond_5
    invoke-interface {v13, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 753
    .local v12, point:Lorg/w3c/dom/Element;
    const-string v19, "Point"

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 754
    const-string v19, "fromX"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    const-string v19, "fromY"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v19, "toX"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v19, "toY"

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 800
    .end local v3           #config:Lorg/w3c/dom/Element;
    .end local v10           #j:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #point:Lorg/w3c/dom/Element;
    .end local v13           #points:Lorg/w3c/dom/NodeList;
    .end local v14           #pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v15           #pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    :catch_1
    move-exception v5

    .line 801
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v19, "IconCustomizer"

    const-string v20, "parse transform_config.xml failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 761
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #config:Lorg/w3c/dom/Element;
    .restart local v10       #j:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v13       #points:Lorg/w3c/dom/NodeList;
    .restart local v14       #pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v15       #pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    :cond_6
    :try_start_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    .line 762
    .local v17, size:I
    if-lez v17, :cond_12

    const/16 v19, 0x8

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    .line 763
    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    .line 764
    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    .line 765
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v10, v0, :cond_12

    .line 766
    iget-object v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    move-object/from16 v20, v0

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v20, v10

    .line 767
    iget-object v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    move-object/from16 v20, v0

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v20, v10

    .line 765
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 772
    .end local v10           #j:I
    .end local v13           #points:Lorg/w3c/dom/NodeList;
    .end local v14           #pointsMappingFrom:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v15           #pointsMappingTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Float;>;"
    .end local v17           #size:I
    :cond_7
    const-string v19, "value"

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 773
    .local v18, value:F
    const-string v19, "ScaleX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 774
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    goto/16 :goto_4

    .line 775
    :cond_8
    const-string v19, "ScaleY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 776
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    goto/16 :goto_4

    .line 777
    :cond_9
    const-string v19, "SkewX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 778
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    goto/16 :goto_4

    .line 779
    :cond_a
    const-string v19, "SkewY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 780
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    goto/16 :goto_4

    .line 781
    :cond_b
    const-string v19, "TransX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 782
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mTransX:F

    goto/16 :goto_4

    .line 783
    :cond_c
    const-string v19, "TransY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 784
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mTransY:F

    goto/16 :goto_4

    .line 785
    :cond_d
    const-string v19, "RotateX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 786
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    goto/16 :goto_4

    .line 787
    :cond_e
    const-string v19, "RotateY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 788
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    goto/16 :goto_4

    .line 789
    :cond_f
    const-string v19, "RotateZ"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 790
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    goto/16 :goto_4

    .line 791
    :cond_10
    const-string v19, "CameraX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 792
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    goto/16 :goto_4

    .line 793
    :cond_11
    const-string v19, "CameraY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 794
    move/from16 v0, v18

    iput v0, v8, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    goto/16 :goto_4

    .line 799
    .end local v3           #config:Lorg/w3c/dom/Element;
    .end local v11           #name:Ljava/lang/String;
    .end local v18           #value:F
    :cond_12
    const/16 v19, 0x1

    sput-boolean v19, Lmiui/content/res/IconCustomizer;->sIconTransformNeeded:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 732
    .end local v4           #configs:Lorg/w3c/dom/NodeList;
    .end local v7           #i:I
    :catch_2
    move-exception v19

    goto/16 :goto_2
.end method

.method private static makeIconMatrix(II)Landroid/graphics/Matrix;
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x4000

    .line 680
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 682
    .local v0, matrix:Landroid/graphics/Matrix;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    if-eqz v1, :cond_0

    .line 683
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingTo:[F

    sget-object v4, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget-object v4, v4, Lmiui/content/res/IconCustomizer$IconConfig;->mPointsMappingFrom:[F

    array-length v4, v4

    div-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 702
    :goto_0
    return-object v0

    .line 687
    :cond_0
    new-instance v6, Landroid/graphics/Camera;

    invoke-direct {v6}, Landroid/graphics/Camera;-><init>()V

    .line 688
    .local v6, camera:Landroid/graphics/Camera;
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateX:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 689
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateY:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 690
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mRotateZ:F

    invoke-virtual {v6, v1}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 691
    invoke-virtual {v6, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 694
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    sub-float/2addr v1, v2

    neg-int v2, p1

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 695
    int-to-float v1, p0

    div-float/2addr v1, v4

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraX:F

    add-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v2, v4

    sget-object v3, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v3, v3, Lmiui/content/res/IconCustomizer$IconConfig;->mCameraY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 698
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mScaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 699
    sget-object v1, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v1, v1, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewX:F

    sget-object v2, Lmiui/content/res/IconCustomizer;->sIconConfig:Lmiui/content/res/IconCustomizer$IconConfig;

    iget v2, v2, Lmiui/content/res/IconCustomizer$IconConfig;->mSkewY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postSkew(FF)Z

    goto :goto_0
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V

    .line 251
    return-void
.end method

.method public static prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
    .locals 9
    .parameter "context"
    .parameter "l"

    .prologue
    .line 254
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .local v2, launcherIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 258
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 260
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_0

    .line 261
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p1, v7}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->beforePrepareIcon(I)V

    .line 264
    :cond_0
    const/4 v5, 0x1

    .line 265
    .local v5, taskCnt:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 266
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 268
    if-eqz p1, :cond_1

    .line 269
    add-int/lit8 v6, v5, 0x1

    .end local v5           #taskCnt:I
    .local v6, taskCnt:I
    invoke-interface {p1, v5}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishPrepareIcon(I)V

    move v5, v6

    .end local v6           #taskCnt:I
    .restart local v5       #taskCnt:I
    goto :goto_0

    .line 273
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz p1, :cond_3

    .line 274
    invoke-interface {p1}, Lmiui/content/res/IconCustomizer$CustomizedIconsListener;->finishAllIcons()V

    .line 276
    :cond_3
    return-void
.end method

.method private static saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 10
    .parameter "fileName"
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 294
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, pathName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 300
    .local v2, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .local v3, outputStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x1b4

    const/4 v7, -0x1

    const/4 v8, -0x1

    :try_start_2
    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 309
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :goto_0
    if-nez v2, :cond_0

    .line 310
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 311
    .local v4, parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 312
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3ff

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 314
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 315
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    const/16 v6, 0x1b4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 319
    .end local v4           #parent:Ljava/io/File;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p1, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 320
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 321
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 322
    invoke-static {p2}, Lmiui/content/res/IconCustomizer;->getServiceManager(Landroid/content/Context;)Lmiui/content/res/ThemeRuntimeManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmiui/content/res/ThemeRuntimeManager;->saveIcon(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 328
    .end local v1           #file:Ljava/io/File;
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .end local v5           #pathName:Ljava/lang/String;
    :goto_1
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 302
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #pathName:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    move-object v2, v3

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static saveCustomizedIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2
    .parameter "packageName"
    .parameter "className"
    .parameter "dr"
    .parameter "context"

    .prologue
    .line 287
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 288
    invoke-static {p0, p1}, Lmiui/content/res/IconCustomizer;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmiui/content/res/IconCustomizer;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Context;)V

    .line 290
    :cond_0
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "icon"

    .prologue
    .line 180
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v0, p0

    .line 186
    :goto_0
    return-object v0

    .line 184
    :cond_1
    sget v1, Lmiui/content/res/IconCustomizer;->sCustomizedIconWidth:I

    sget v2, Lmiui/content/res/IconCustomizer;->sCustomizedIconHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0
.end method

.method private static scalePixel(I)I
    .locals 3
    .parameter "px"

    .prologue
    .line 173
    sget v1, Lmiui/content/res/IconCustomizer;->sDensity:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_0

    const/16 v0, 0x168

    .line 174
    .local v0, density:I
    :goto_0
    mul-int v1, p0, v0

    div-int/lit16 p0, v1, 0xf0

    .line 175
    rem-int/lit8 v1, p0, 0x2

    add-int/2addr p0, v1

    .line 176
    return p0

    .line 173
    .end local v0           #density:I
    :cond_0
    sget v0, Lmiui/content/res/IconCustomizer;->sDensity:I

    goto :goto_0
.end method

.method private static setHue(IF)I
    .locals 13
    .parameter "color"
    .parameter "hue"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v8, 0x43b4

    const/high16 v9, 0x4270

    .line 967
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 969
    .local v0, RGB:[I
    aget v5, v0, v11

    aget v6, v0, v12

    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 970
    .local v3, min:I
    aget v5, v0, v11

    aget v6, v0, v12

    const/4 v7, 0x2

    aget v7, v0, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 972
    .local v2, max:I
    sub-int v4, v2, v3

    .line 973
    .local v4, range:I
    if-nez v4, :cond_0

    .line 989
    .end local p0
    :goto_0
    return p0

    .line 976
    .restart local p0
    :cond_0
    :goto_1
    cmpg-float v5, p1, v10

    if-gez v5, :cond_1

    .line 977
    add-float/2addr p1, v8

    goto :goto_1

    .line 978
    :cond_1
    :goto_2
    cmpl-float v5, p1, v8

    if-lez v5, :cond_2

    .line 979
    sub-float/2addr p1, v8

    goto :goto_2

    .line 981
    :cond_2
    const/high16 v5, 0x42f0

    div-float v5, p1, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 982
    .local v1, index:I
    mul-int/lit8 v5, v1, 0x78

    int-to-float v5, v5

    sub-float/2addr p1, v5

    .line 983
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v1, v5, 0x3

    .line 985
    aput v3, v0, v1

    .line 986
    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v5, v5, 0x3

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-static {p1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v0, v5

    .line 987
    add-int/lit8 v5, v1, 0x1

    rem-int/lit8 v5, v5, 0x3

    int-to-float v6, v2

    int-to-float v7, v4

    sub-float v8, p1, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v0, v5

    .line 989
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setSaturation(IF)I
    .locals 10
    .parameter "color"
    .parameter "saturation"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 930
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 932
    .local v0, RGB:[I
    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 933
    .local v3, min:I
    aget v4, v0, v7

    aget v5, v0, v8

    aget v6, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 934
    .local v2, max:I
    if-eqz v2, :cond_0

    if-ne v2, v3, :cond_1

    .line 942
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 937
    .restart local p0
    :cond_1
    const/high16 v4, 0x3f80

    sub-int v5, v2, v3

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float v1, v4, v5

    .line 938
    .local v1, currentSaturation:F
    int-to-float v4, v2

    aget v5, v0, v7

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v7

    .line 939
    int-to-float v4, v2

    aget v5, v0, v8

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v8

    .line 940
    int-to-float v4, v2

    aget v5, v0, v9

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v9

    .line 942
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method

.method private static setValue(IF)I
    .locals 9
    .parameter "color"
    .parameter "value"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 904
    invoke-static {p0}, Lmiui/content/res/IconCustomizer;->colorToRGB(I)[I

    move-result-object v0

    .line 906
    .local v0, RGB:[I
    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 907
    .local v2, max:I
    if-nez v2, :cond_0

    .line 915
    .end local p0
    :goto_0
    return p0

    .line 910
    .restart local p0
    :cond_0
    const/high16 v3, 0x3f80

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f

    div-float v1, v3, v4

    .line 911
    .local v1, currentValue:F
    aget v3, v0, v6

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v0, v6

    .line 912
    aget v3, v0, v7

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v0, v7

    .line 913
    aget v3, v0, v8

    int-to-float v3, v3

    mul-float/2addr v3, p1

    div-float/2addr v3, v1

    float-to-int v3, v3

    aput v3, v0, v8

    .line 915
    invoke-static {v0}, Lmiui/content/res/IconCustomizer;->RGBToColor([I)I

    move-result p0

    goto :goto_0
.end method
