.class public Lmiui/push/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final APOS_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    .line 33
    const-string v0, "&apos;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    .line 34
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    .line 35
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->LT_ENCODE:[C

    .line 36
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->GT_ENCODE:[C

    .line 151
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    .line 159
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lmiui/push/StringUtils;->numbersAndLetters:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/push/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BIIZ)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "lineBreaks"

    .prologue
    .line 142
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static encodeBase64([BZ)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .parameter "lineBreaks"

    .prologue
    .line 128
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lmiui/push/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x3e

    .line 46
    if-nez p0, :cond_1

    .line 47
    const/4 p0, 0x0

    .line 106
    .end local p0
    .local v1, i:I
    .local v2, input:[C
    .local v3, last:I
    .local v4, len:I
    .local v5, out:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-object p0

    .line 50
    .end local v1           #i:I
    .end local v2           #input:[C
    .end local v3           #last:I
    .end local v4           #len:I
    .end local v5           #out:Ljava/lang/StringBuilder;
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    .line 51
    .restart local v1       #i:I
    const/4 v3, 0x0

    .line 52
    .restart local v3       #last:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 53
    .restart local v2       #input:[C
    array-length v4, v2

    .line 54
    .restart local v4       #len:I
    new-instance v5, Ljava/lang/StringBuilder;

    int-to-double v6, v4

    const-wide v8, 0x3ff4cccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .restart local v5       #out:Ljava/lang/StringBuilder;
    :goto_1
    if-ge v1, v4, :cond_e

    .line 56
    aget-char v0, v2, v1

    .line 57
    .local v0, ch:C
    if-le v0, v10, :cond_3

    .line 55
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_3
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_5

    .line 59
    if-le v1, v3, :cond_4

    .line 60
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 62
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 63
    sget-object v6, Lmiui/push/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 64
    :cond_5
    if-ne v0, v10, :cond_7

    .line 65
    if-le v1, v3, :cond_6

    .line 66
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 68
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 69
    sget-object v6, Lmiui/push/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 72
    :cond_7
    const/16 v6, 0x26

    if-ne v0, v6, :cond_a

    .line 73
    if-le v1, v3, :cond_8

    .line 74
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 78
    :cond_8
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_9

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_2

    .line 83
    :cond_9
    add-int/lit8 v3, v1, 0x1

    .line 84
    sget-object v6, Lmiui/push/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 86
    :cond_a
    const/16 v6, 0x22

    if-ne v0, v6, :cond_c

    .line 87
    if-le v1, v3, :cond_b

    .line 88
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 90
    :cond_b
    add-int/lit8 v3, v1, 0x1

    .line 91
    sget-object v6, Lmiui/push/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 92
    :cond_c
    const/16 v6, 0x27

    if-ne v0, v6, :cond_2

    .line 93
    if-le v1, v3, :cond_d

    .line 94
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 96
    :cond_d
    add-int/lit8 v3, v1, 0x1

    .line 97
    sget-object v6, Lmiui/push/StringUtils;->APOS_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 100
    .end local v0           #ch:C
    :cond_e
    if-eqz v3, :cond_0

    .line 103
    if-le v1, v3, :cond_f

    .line 104
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 106
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 176
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 177
    const/4 v2, 0x0

    .line 184
    :goto_0
    return-object v2

    .line 180
    :cond_0
    new-array v1, p0, [C

    .line 181
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 182
    sget-object v2, Lmiui/push/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lmiui/push/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
