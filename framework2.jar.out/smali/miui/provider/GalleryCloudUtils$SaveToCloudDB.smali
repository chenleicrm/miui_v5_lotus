.class Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;
.super Ljava/lang/Object;
.source "GalleryCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/GalleryCloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveToCloudDB"
.end annotation


# instance fields
.field public dateTaken:J

.field public fileName:Ljava/lang/String;

.field public groupId:I

.field public localFlag:I

.field public localGroupId:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public serverType:I

.field public sha1:Ljava/lang/String;

.field public size:J

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "path"
    .parameter "size"
    .parameter "mimeType"
    .parameter "title"
    .parameter "fileName"
    .parameter "dateTaken"
    .parameter "groupId"
    .parameter "serverType"
    .parameter "localFlag"
    .parameter "localGroupId"
    .parameter "sha1"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->path:Ljava/lang/String;

    .line 117
    iput-wide p2, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->size:J

    .line 118
    iput-object p4, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->mimeType:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->title:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->fileName:Ljava/lang/String;

    .line 121
    iput-wide p7, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->dateTaken:J

    .line 122
    iput p9, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->groupId:I

    .line 123
    iput p10, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->serverType:I

    .line 124
    iput p11, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localFlag:I

    .line 125
    iput-object p12, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->localGroupId:Ljava/lang/String;

    .line 126
    iput-object p13, p0, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;->sha1:Ljava/lang/String;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;Lmiui/provider/GalleryCloudUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p13}, Lmiui/provider/GalleryCloudUtils$SaveToCloudDB;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
