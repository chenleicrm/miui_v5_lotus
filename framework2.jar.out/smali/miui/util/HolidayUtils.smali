.class public Lmiui/util/HolidayUtils;
.super Ljava/lang/Object;
.source "HolidayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/HolidayUtils$HolidayData;
    }
.end annotation


# static fields
.field private static final DATA_SYSTEM_PATH:Ljava/lang/String; = "/data/system/"

.field private static final HOLIDAY_DATA:Ljava/lang/String; = "{\"versioncode\":1,\"holiday\":[{\"year\":2013,\"workday\":[5,6,47,48,97,117,118,159,160,265,272,285],\"freeday\":[1,2,3,40,41,42,43,44,45,46,94,95,96,119,120,121,161,162,163,262,263,264,274,275,276,277,278,279,280]}]}"

.field private static final HOLIDAY_DATA_FILE_PATH:Ljava/lang/String; = "/data/system/holidaydata"

.field private static final HOLIDAY_DATA_NAME:Ljava/lang/String; = "holidaydata"

.field private static final HOLIDAY_URL:Ljava/lang/String; = "http://api.comm.miui.com/holiday/holiday.jsp"

.field private static final HOLIDAY_VERSION_FILE_PATH:Ljava/lang/String; = "/data/system/holidayversion"

.field private static final HOLIDAY_VERSION_NAME:Ljava/lang/String; = "holidayversion"

.field private static final JSON_TAG_FREEDAY:Ljava/lang/String; = "freeday"

.field private static final JSON_TAG_HOLIDAY:Ljava/lang/String; = "holiday"

.field private static final JSON_TAG_VERSION:Ljava/lang/String; = "versioncode"

.field private static final JSON_TAG_WORKDAY:Ljava/lang/String; = "workday"

.field private static final JSON_TAG_YEAR:Ljava/lang/String; = "year"

.field private static final LOG_TAG:Ljava/lang/String; = "HolidayUtils"

.field private static sInstance:Lmiui/util/HolidayUtils;


# instance fields
.field private mHolidayArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HolidayUtils$HolidayData;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    .line 75
    invoke-direct {p0}, Lmiui/util/HolidayUtils;->initHolidayData()V

    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance()Lmiui/util/HolidayUtils;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lmiui/util/HolidayUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lmiui/util/HolidayUtils;->sInstance:Lmiui/util/HolidayUtils;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lmiui/util/HolidayUtils;

    invoke-direct {v0}, Lmiui/util/HolidayUtils;-><init>()V

    sput-object v0, Lmiui/util/HolidayUtils;->sInstance:Lmiui/util/HolidayUtils;

    .line 71
    :cond_0
    sget-object v0, Lmiui/util/HolidayUtils;->sInstance:Lmiui/util/HolidayUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTheYearHolidayData(I)I
    .locals 3
    .parameter "year"

    .prologue
    .line 170
    const/4 v1, -0x1

    .line 171
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 172
    iget-object v2, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HolidayUtils$HolidayData;

    #getter for: Lmiui/util/HolidayUtils$HolidayData;->mYear:I
    invoke-static {v2}, Lmiui/util/HolidayUtils$HolidayData;->access$200(Lmiui/util/HolidayUtils$HolidayData;)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 173
    move v1, v0

    .line 177
    :cond_0
    return v1

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initHolidayData()V
    .locals 10

    .prologue
    .line 79
    const-string v7, "{\"versioncode\":1,\"holiday\":[{\"year\":2013,\"workday\":[5,6,47,48,97,117,118,159,160,265,272,285],\"freeday\":[1,2,3,40,41,42,43,44,45,46,94,95,96,119,120,121,161,162,163,262,263,264,274,275,276,277,278,279,280]}]}"

    invoke-direct {p0, v7}, Lmiui/util/HolidayUtils;->parseHoliday(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/system/holidaydata"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const/4 v4, 0x0

    .line 85
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v6, sb:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    .line 87
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 88
    .local v3, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 97
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v7, "HolidayUtils"

    const-string v8, "file not found"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    if-eqz v4, :cond_0

    .line 105
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    return-void

    .line 92
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v7, "versioncode"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lmiui/util/HolidayUtils;->mVersionCode:I

    if-le v7, v8, :cond_2

    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/util/HolidayUtils;->parseHoliday(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8

    .line 103
    :cond_2
    if-eqz v5, :cond_0

    .line 105
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 106
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    const-string v7, "HolidayUtils"

    const-string v8, "error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 106
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    const-string v7, "HolidayUtils"

    const-string v8, "error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 99
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "HolidayUtils"

    const-string v8, "io exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 103
    if-eqz v4, :cond_0

    .line 105
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 106
    :catch_4
    move-exception v0

    .line 107
    const-string v7, "HolidayUtils"

    const-string v8, "error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 100
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 101
    .local v0, e:Lorg/json/JSONException;
    :goto_4
    :try_start_8
    const-string v7, "HolidayUtils"

    const-string v8, "json exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 103
    if-eqz v4, :cond_0

    .line 105
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 106
    :catch_6
    move-exception v0

    .line 107
    .local v0, e:Ljava/io/IOException;
    const-string v7, "HolidayUtils"

    const-string v8, "error"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_3

    .line 105
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 108
    :cond_3
    :goto_6
    throw v7

    .line 106
    :catch_7
    move-exception v0

    .line 107
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "HolidayUtils"

    const-string v9, "error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 103
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 100
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 98
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 96
    .end local v3           #line:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method

.method private isWeekEnd(Ljava/util/Calendar;)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x7

    .line 165
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseHoliday(Ljava/lang/String;)V
    .locals 14
    .parameter "data"

    .prologue
    .line 116
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v11, "versioncode"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lmiui/util/HolidayUtils;->mVersionCode:I

    .line 118
    const-string v11, "HolidayUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lmiui/util/HolidayUtils;->mVersionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v11, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 120
    const-string v11, "holiday"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 121
    .local v10, years:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_2

    .line 122
    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 123
    .local v9, yearObj:Lorg/json/JSONObject;
    const-string v11, "year"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 125
    .local v8, year:I
    const-string v11, "workday"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 126
    .local v7, workdayArray:Lorg/json/JSONArray;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 127
    .local v6, workSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 128
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 131
    :cond_0
    const-string v11, "freeday"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    .local v2, freedayArray:Lorg/json/JSONArray;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v1, freeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 134
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 137
    :cond_1
    iget-object v11, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    new-instance v12, Lmiui/util/HolidayUtils$HolidayData;

    invoke-direct {v12, p0, v8, v6, v1}, Lmiui/util/HolidayUtils$HolidayData;-><init>(Lmiui/util/HolidayUtils;ILjava/util/HashSet;Ljava/util/HashSet;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v1           #freeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2           #freedayArray:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .end local v6           #workSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v7           #workdayArray:Lorg/json/JSONArray;
    .end local v8           #year:I
    .end local v9           #yearObj:Lorg/json/JSONObject;
    .end local v10           #years:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Lorg/json/JSONException;
    const-string v11, "HolidayUtils"

    const-string v12, "json exception"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    return-void
.end method


# virtual methods
.method public getHolidayVersionCode()I
    .locals 8

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, version:I
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/holidayversion"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/system/holidayversion"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 224
    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, versionStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v3

    .line 233
    :cond_0
    if-eqz v2, :cond_1

    .line 235
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #versionStr:Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 236
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v4       #versionStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HolidayUtils"

    const-string v6, "read holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #versionStr:Ljava/lang/String;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "HolidayUtils"

    const-string v6, "read holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    if-eqz v1, :cond_1

    .line 235
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 236
    :catch_2
    move-exception v0

    .line 237
    .local v0, e:Ljava/io/IOException;
    const-string v5, "HolidayUtils"

    const-string v6, "read holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 230
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 231
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v5, "HolidayUtils"

    const-string v6, "read holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    if-eqz v1, :cond_1

    .line 235
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 236
    :catch_4
    move-exception v0

    .line 237
    const-string v5, "HolidayUtils"

    const-string v6, "read holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 235
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 238
    :cond_2
    :goto_4
    throw v5

    .line 236
    :catch_5
    move-exception v0

    .line 237
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "HolidayUtils"

    const-string v7, "read holiday version error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 233
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 230
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 228
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public isHoliday(Ljava/util/Calendar;)Z
    .locals 6
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lmiui/util/HolidayUtils;->isNeedToUpdate(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lmiui/util/HolidayUtils;->isWeekEnd(Ljava/util/Calendar;)Z

    move-result v3

    .line 161
    :goto_0
    return v3

    .line 151
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 152
    .local v2, year:I
    invoke-direct {p0, v2}, Lmiui/util/HolidayUtils;->getTheYearHolidayData(I)I

    move-result v1

    .line 153
    .local v1, index:I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 154
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 155
    .local v0, dayOfYear:I
    iget-object v3, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/HolidayUtils$HolidayData;

    #getter for: Lmiui/util/HolidayUtils$HolidayData;->mFreedaySet:Ljava/util/HashSet;
    invoke-static {v3}, Lmiui/util/HolidayUtils$HolidayData;->access$000(Lmiui/util/HolidayUtils$HolidayData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lmiui/util/HolidayUtils;->isWeekEnd(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmiui/util/HolidayUtils;->mHolidayArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/HolidayUtils$HolidayData;

    #getter for: Lmiui/util/HolidayUtils$HolidayData;->mWorkdaySet:Ljava/util/HashSet;
    invoke-static {v3}, Lmiui/util/HolidayUtils$HolidayData;->access$100(Lmiui/util/HolidayUtils$HolidayData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    .line 157
    goto :goto_0

    .line 161
    .end local v0           #dayOfYear:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isNeedToUpdate()Z
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/util/HolidayUtils;->isNeedToUpdate(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public isNeedToUpdate(Ljava/util/Calendar;)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, update:Z
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/util/HolidayUtils;->getTheYearHolidayData(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lmiui/util/HolidayUtils;->getTheYearHolidayData(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x1

    .line 188
    :cond_1
    iget v1, p0, Lmiui/util/HolidayUtils;->mVersionCode:I

    invoke-virtual {p0}, Lmiui/util/HolidayUtils;->getHolidayVersionCode()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_2
    return v0
.end method

.method public setHolidayVersionCode(Ljava/lang/String;)V
    .locals 7
    .parameter "version"

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, writer:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "holidayversion"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v1, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .end local v2           #writer:Ljava/io/FileWriter;
    .local v3, writer:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 207
    if-eqz v3, :cond_0

    .line 209
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/system/holidayversion"

    invoke-static {v4, v5}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-object v2, v3

    .line 216
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 210
    .end local v2           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    const-string v4, "HolidayUtils"

    const-string v5, "write holiday version error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 205
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "HolidayUtils"

    const-string v5, "write holiday version error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    if-eqz v2, :cond_1

    .line 209
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 214
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/system/holidayversion"

    invoke-static {v4, v5}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 210
    :catch_2
    move-exception v0

    .line 211
    const-string v4, "HolidayUtils"

    const-string v5, "write holiday version error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 209
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 214
    :cond_2
    :goto_5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data/system/holidayversion"

    invoke-static {v5, v6}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    throw v4

    .line 210
    :catch_3
    move-exception v0

    .line 211
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "HolidayUtils"

    const-string v6, "write holiday version error"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    goto :goto_4

    .line 204
    .end local v2           #writer:Ljava/io/FileWriter;
    .restart local v3       #writer:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #writer:Ljava/io/FileWriter;
    .restart local v2       #writer:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public updateHolidayFile()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 249
    .local v4, out:Ljava/io/OutputStream;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v8

    const-string v10, "holidaydata"

    invoke-direct {v6, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v6, tmpFile:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string v8, "http://api.comm.miui.com/holiday/holiday.jsp"

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 252
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 253
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 254
    .end local v4           #out:Ljava/io/OutputStream;
    .local v5, out:Ljava/io/OutputStream;
    const/16 v8, 0x400

    :try_start_1
    new-array v0, v8, [B

    .line 256
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, len:I
    if-lez v3, :cond_2

    .line 257
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 260
    .end local v0           #buf:[B
    .end local v3           #len:I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 261
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v7           #url:Ljava/net/URL;
    .local v1, e:Ljava/net/MalformedURLException;
    .restart local v4       #out:Ljava/io/OutputStream;
    :goto_1
    :try_start_2
    const-string v8, "HolidayUtils"

    const-string v10, "url exception"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    if-eqz v2, :cond_0

    .line 267
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 272
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 274
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 279
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "/data/system/holidaydata"

    invoke-static {v8, v10}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    invoke-direct {p0}, Lmiui/util/HolidayUtils;->initHolidayData()V

    :goto_4
    move v8, v9

    .line 282
    :goto_5
    return v8

    .line 259
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v0       #buf:[B
    .restart local v3       #len:I
    .restart local v5       #out:Ljava/io/OutputStream;
    .restart local v7       #url:Ljava/net/URL;
    :cond_2
    const/4 v8, 0x1

    .line 265
    if-eqz v2, :cond_3

    .line 267
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 272
    :cond_3
    :goto_6
    if-eqz v5, :cond_4

    .line 274
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 279
    :cond_4
    :goto_7
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data/system/holidaydata"

    invoke-static {v9, v10}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    invoke-direct {p0}, Lmiui/util/HolidayUtils;->initHolidayData()V

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 268
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 269
    .local v1, e:Ljava/io/IOException;
    const-string v9, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 275
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 276
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 268
    .end local v0           #buf:[B
    .end local v3           #len:I
    .end local v5           #out:Ljava/io/OutputStream;
    .end local v7           #url:Ljava/net/URL;
    .local v1, e:Ljava/net/MalformedURLException;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 269
    .local v1, e:Ljava/io/IOException;
    const-string v8, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 275
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 276
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 262
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    :goto_8
    :try_start_7
    const-string v8, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 265
    if-eqz v2, :cond_5

    .line 267
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 272
    :cond_5
    :goto_9
    if-eqz v4, :cond_6

    .line 274
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 279
    :cond_6
    :goto_a
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v10, "/data/system/holidaydata"

    invoke-static {v8, v10}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    invoke-direct {p0}, Lmiui/util/HolidayUtils;->initHolidayData()V

    goto :goto_4

    .line 268
    :catch_6
    move-exception v1

    .line 269
    const-string v8, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 275
    :catch_7
    move-exception v1

    .line 276
    const-string v8, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 265
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_b
    if-eqz v2, :cond_7

    .line 267
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 272
    :cond_7
    :goto_c
    if-eqz v4, :cond_8

    .line 274
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 279
    :cond_8
    :goto_d
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/data/system/holidaydata"

    invoke-static {v9, v10}, Lmiui/os/Shell;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 280
    invoke-direct {p0}, Lmiui/util/HolidayUtils;->initHolidayData()V

    throw v8

    .line 268
    :catch_8
    move-exception v1

    .line 269
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 275
    .end local v1           #e:Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 276
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "HolidayUtils"

    const-string v10, "io exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 265
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    .restart local v7       #url:Ljava/net/URL;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_b

    .line 262
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_a
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_8

    .line 260
    .end local v7           #url:Ljava/net/URL;
    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method
