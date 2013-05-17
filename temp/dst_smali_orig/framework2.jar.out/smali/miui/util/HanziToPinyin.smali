.class public Lmiui/util/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HanziToPinyin$1;,
        Lmiui/util/HanziToPinyin$PinYinToZhuYin;,
        Lmiui/util/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final FIRST_BASIC_UNIHAN:C = '\u4e00'

.field private static final LAST_BASIC_UNIHAN:C = '\u9fa5'

.field private static final SPECIAL_LING:C = '\u3007'

.field private static final TAG:Ljava/lang/String; = "HanziToPinyin"

.field private static sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lmiui/util/HanziToPinyin;

.field private static sLastNamePolyPhoneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHasChinaCollator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x5df7

    const/16 v7, 0x4f20

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u5355\u4e8e"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CHAN"

    aput-object v3, v2, v4

    const-string v3, "YU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u957f\u5b59"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZHANG"

    aput-object v3, v2, v4

    const-string v3, "SUN"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u5b50\u8f66"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ZI"

    aput-object v3, v2, v4

    const-string v3, "JU"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u4e07\u4fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MO"

    aput-object v3, v2, v4

    const-string v3, "QI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u6fb9\u53f0"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TAN"

    aput-object v3, v2, v4

    const-string v3, "TAI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    const-string v1, "\u5c09\u8fdf"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "YU"

    aput-object v3, v2, v4

    const-string v3, "CHI"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e01

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4fde

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6c88

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "FEI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x756a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53c2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5355

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90d7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9561

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x671d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x555c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8870

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6668

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e11

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7633

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHOU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x957f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8f66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7fdf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5200

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c03

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x660b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x82a5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "GAI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8312

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x90c7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6496

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "HAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89c1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x964d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8bb0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x741a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5267

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96bd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9697

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9760

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "KU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5587

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x96d2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LUO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e86

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7f2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4f74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8c2c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "MIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4e5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "NIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x84ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6734

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "PIAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8983

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "TAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x79a4

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x77bf

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "QU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x4ec0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x6298

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x772d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SUI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x89e3

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x7cfb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIANG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x9664

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5bf0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "XIAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x5458

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const v1, 0x8d20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x66fe

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZENG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x67e5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "ZHA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .parameter "hasChinaCollator"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmiui/util/HanziToPinyin;->mHasChinaCollator:Z

    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "sb"
    .parameter
    .parameter "tokenType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    new-instance v1, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lmiui/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public static convertPinyin2Zhuyin(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pinyin"
    .parameter "builder"

    .prologue
    invoke-static {p0, p1}, Lmiui/util/HanziToPinyin$PinYinToZhuYin;->convert(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmiui/util/HanziToPinyin;
    .locals 5

    .prologue
    const-class v3, Lmiui/util/HanziToPinyin;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    if-eqz v2, :cond_0

    sget-object v2, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    monitor-exit v3

    .local v0, i:I
    .local v1, locale:[Ljava/util/Locale;
    :goto_0
    return-object v2

    .end local v0           #i:I
    .end local v1           #locale:[Ljava/util/Locale;
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    .restart local v1       #locale:[Ljava/util/Locale;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lmiui/util/HanziToPinyin;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lmiui/util/HanziToPinyin;-><init>(Z)V

    sput-object v2, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    sget-object v2, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v2, "HanziToPinyin"

    const-string v4, "There is no Chinese collator, HanziToPinyin is disabled"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lmiui/util/HanziToPinyin;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lmiui/util/HanziToPinyin;-><init>(Z)V

    sput-object v2, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    sget-object v2, Lmiui/util/HanziToPinyin;->sInstance:Lmiui/util/HanziToPinyin;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v6, v7

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_2

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, hyphenatedName:Ljava/lang/String;
    sget-object v8, Lmiui/util/HanziToPinyin;->sHyphenatedNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .local v4, polyPhones:[Ljava/lang/String;
    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    new-instance v5, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .local v5, token:Lmiui/util/HanziToPinyin$Token;
    iput v9, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    aget-object v7, v4, v1

    iput-object v7, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #hyphenatedName:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #polyPhones:[Ljava/lang/String;
    .end local v5           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .local v2, lastName:Ljava/lang/Character;
    sget-object v8, Lmiui/util/HanziToPinyin;->sLastNamePolyPhoneMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, polyPhone:Ljava/lang/String;
    if-eqz v3, :cond_3

    new-instance v5, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v5}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .restart local v5       #token:Lmiui/util/HanziToPinyin$Token;
    iput v9, v5, Lmiui/util/HanziToPinyin$Token;->type:I

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v3, v5, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v5           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_3
    move-object v6, v7

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 17
    .parameter "input"
    .parameter "filterInvalidChar"
    .parameter "ignoreLastName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmiui/util/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v15, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    const/4 v11, 0x0

    .local v11, startIndex:I
    if-nez p3, :cond_2

    invoke-direct/range {p0 .. p1}, Lmiui/util/HanziToPinyin;->getPolyPhoneLastNameTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .local v7, polyPhoneLastNameTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_2

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .end local v7           #polyPhoneLastNameTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, inputLength:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .local v9, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x1

    .local v13, tokenType:I
    move v5, v11

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, character:C
    const/16 v15, 0x20

    if-ne v2, v15, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_3
    if-nez p2, :cond_4

    const/16 v15, 0x20

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .local v10, separator:Ljava/lang/String;
    new-instance v15, Lmiui/util/HanziToPinyin$Token;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-direct {v15, v0, v10, v10}, Lmiui/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v10           #separator:Ljava/lang/String;
    :cond_4
    const/4 v13, 0x3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/16 v15, 0x100

    if-ge v2, v15, :cond_a

    if-lez v5, :cond_6

    add-int/lit8 v15, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c:C
    const/16 v15, 0x30

    if-lt v1, v15, :cond_8

    const/16 v15, 0x39

    if-gt v1, v15, :cond_8

    const/4 v3, 0x1

    .local v3, digitA:Z
    :goto_3
    const/16 v15, 0x30

    if-lt v2, v15, :cond_9

    const/16 v15, 0x39

    if-gt v2, v15, :cond_9

    const/4 v4, 0x1

    .local v4, digitB:Z
    :goto_4
    if-eq v3, v4, :cond_6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .end local v1           #c:C
    .end local v3           #digitA:Z
    .end local v4           #digitB:Z
    :cond_6
    const/4 v15, 0x1

    if-eq v13, v15, :cond_7

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .restart local v1       #c:C
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .restart local v3       #digitA:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .end local v1           #c:C
    .end local v3           #digitA:Z
    :cond_a
    const/16 v15, 0x3007

    if-ne v2, v15, :cond_c

    new-instance v12, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v12}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .local v12, token:Lmiui/util/HanziToPinyin$Token;
    const/4 v15, 0x2

    iput v15, v12, Lmiui/util/HanziToPinyin$Token;->type:I

    const-string v15, "ling"

    iput-object v15, v12, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_b
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    goto :goto_2

    .end local v12           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_c
    const/16 v15, 0x4e00

    if-lt v2, v15, :cond_12

    const v15, 0x9fa5

    if-gt v2, v15, :cond_12

    invoke-static {}, Lmiui/util/HanziToPinyinHelper;->getIntance()Lmiui/util/HanziToPinyinHelper;

    move-result-object v15

    invoke-virtual {v15, v2}, Lmiui/util/HanziToPinyinHelper;->getPinyinString(C)[Ljava/lang/String;

    move-result-object v8

    .local v8, polyPhones:[Ljava/lang/String;
    new-instance v12, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v12}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .restart local v12       #token:Lmiui/util/HanziToPinyin$Token;
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    if-nez v8, :cond_f

    const/4 v15, 0x3

    iput v15, v12, Lmiui/util/HanziToPinyin$Token;->type:I

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    :cond_d
    :goto_5
    iget v15, v12, Lmiui/util/HanziToPinyin$Token;->type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_e
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    goto/16 :goto_2

    :cond_f
    const/4 v15, 0x2

    iput v15, v12, Lmiui/util/HanziToPinyin$Token;->type:I

    const/4 v15, 0x0

    aget-object v15, v8, v15

    iput-object v15, v12, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    iput-object v8, v12, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    goto :goto_5

    :cond_10
    iget v15, v12, Lmiui/util/HanziToPinyin$Token;->type:I

    if-eq v13, v15, :cond_11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_11
    iget v13, v12, Lmiui/util/HanziToPinyin$Token;->type:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .end local v8           #polyPhones:[Ljava/lang/String;
    .end local v12           #token:Lmiui/util/HanziToPinyin$Token;
    :cond_12
    const/4 v15, 0x3

    if-eq v13, v15, :cond_13

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    :cond_13
    const/4 v13, 0x3

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .end local v2           #character:C
    :cond_14
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v13}, Lmiui/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method
