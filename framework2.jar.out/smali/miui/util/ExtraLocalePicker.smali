.class public Lmiui/util/ExtraLocalePicker;
.super Ljava/lang/Object;
.source "ExtraLocalePicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLocaleOrder([Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 1
    .parameter "localeInfos"

    .prologue
    .line 11
    const-string v0, "en_US"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 12
    const-string v0, "zh_TW"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 13
    const-string v0, "zh_CN"

    invoke-static {p0, v0}, Lmiui/util/ExtraLocalePicker;->moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static filterLocale(Landroid/content/res/Resources;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "resources"
    .parameter "locales"

    .prologue
    .line 34
    const v4, 0x6060011

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, filter:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v3, matched:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 38
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 39
    aget-object v4, v0, v1

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    .end local v2           #j:I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method private static moveLocaleToFirst([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "localeInfos"
    .parameter "firstLocaleCode"

    .prologue
    .line 17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 18
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    .local v3, localeCode:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    if-nez v0, :cond_1

    .line 31
    .end local v3           #localeCode:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 23
    .restart local v3       #localeCode:Ljava/lang/String;
    :cond_1
    aget-object v2, p0, v0

    .line 24
    .local v2, locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    move v1, v0

    .local v1, j:I
    :goto_2
    if-lez v1, :cond_2

    .line 25
    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v1

    .line 24
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 27
    :cond_2
    const/4 v4, 0x0

    aput-object v2, p0, v4

    goto :goto_1

    .line 17
    .end local v1           #j:I
    .end local v2           #locale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
