.class Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;
.super Ljava/lang/Object;
.source "CustomizedApplicationInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CustomizedApplicationInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationSettings"
.end annotation


# static fields
.field private static final CDF_REVISION_PROPERTY:Ljava/lang/String; = "ro.semc.version.cust_revision"

.field private static final SW_REVISION:Ljava/lang/String; = "ro.semc.version.sw_revision"


# instance fields
.field private mInstalledPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    .line 680
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/pm/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, settingsFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-direct {p0, v0}, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->read(Ljava/io/File;)V

    .line 684
    :cond_0
    return-void
.end method

.method private read(Ljava/io/File;)V
    .locals 11
    .parameter "settingsFile"

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 703
    const/4 v1, 0x0

    .line 705
    .local v1, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 706
    .end local v1           #in:Ljava/io/FileInputStream;
    .local v2, in:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 707
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v4, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 711
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, type:I
    if-eq v6, v8, :cond_1

    if-ne v6, v9, :cond_0

    .line 715
    :cond_1
    if-eq v6, v8, :cond_3

    .line 716
    sget-object v7, Lcom/android/server/pm/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    const-string v8, "No start tag found in application installer settings"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 738
    if-eqz v2, :cond_9

    .line 740
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 743
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :goto_0
    const/4 v1, 0x0

    .line 746
    .restart local v1       #in:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    return-void

    .line 720
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_3
    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 722
    .local v3, outerDepth:I
    :cond_4
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v9, :cond_8

    if-ne v6, v10, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_8

    .line 723
    :cond_5
    if-eq v6, v10, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    .line 726
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 728
    .local v5, tagName:Ljava/lang/String;
    const-string v7, "last-platform-version"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 729
    const/4 v7, 0x0

    const-string v8, "swversion"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mSoftwareVersion:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 734
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #tagName:Ljava/lang/String;
    .end local v6           #type:I
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 735
    .end local v2           #in:Ljava/io/FileInputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    sget-object v7, Lcom/android/server/pm/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A XmlPullParserException occured when parsing. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 738
    if-eqz v1, :cond_2

    .line 740
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 741
    :catch_1
    move-exception v7

    goto :goto_0

    .line 730
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #outerDepth:I
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #tagName:Ljava/lang/String;
    .restart local v6       #type:I
    :cond_6
    :try_start_6
    const-string v7, "installed"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 731
    invoke-direct {p0, v4}, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->readInstalled(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 736
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #tagName:Ljava/lang/String;
    .end local v6           #type:I
    :catch_2
    move-exception v7

    move-object v1, v2

    .line 738
    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v1, :cond_2

    .line 740
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 741
    :catch_3
    move-exception v7

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v1, :cond_7

    .line 740
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 743
    :goto_6
    const/4 v1, 0x0

    .line 738
    :cond_7
    throw v7

    .line 741
    :catch_4
    move-exception v8

    goto :goto_6

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :catch_5
    move-exception v7

    goto :goto_0

    .line 738
    .restart local v3       #outerDepth:I
    :cond_8
    if-eqz v2, :cond_9

    .line 740
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 741
    :catch_6
    move-exception v7

    goto :goto_0

    .line 738
    .end local v3           #outerDepth:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #type:I
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto :goto_5

    .line 736
    :catch_7
    move-exception v7

    goto :goto_4

    .line 734
    :catch_8
    move-exception v0

    goto :goto_3

    .end local v1           #in:Ljava/io/FileInputStream;
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:I
    :cond_9
    move-object v1, v2

    .end local v2           #in:Ljava/io/FileInputStream;
    .restart local v1       #in:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private readInstalled(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 750
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 753
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 754
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 758
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 760
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 762
    iget-object v4, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 771
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 764
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/server/pm/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in settings file: <installed> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 769
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/android/server/pm/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <installed>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 774
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method isPreinstalled(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method save(Ljava/lang/String;)V
    .locals 9
    .parameter "version"

    .prologue
    .line 778
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/android/server/pm/CustomizedApplicationInstaller;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 780
    .local v1, fstr:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 782
    .local v5, str:Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 783
    .local v4, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v6, "utf-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 784
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 785
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 788
    const/4 v6, 0x0

    const-string v7, "packages"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 789
    const/4 v6, 0x0

    const-string v7, "last-platform-version"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 790
    if-eqz p1, :cond_0

    .line 791
    const/4 v6, 0x0

    const-string v7, "swversion"

    invoke-interface {v4, v6, v7, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 793
    :cond_0
    const/4 v6, 0x0

    const-string v7, "last-platform-version"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 794
    const/4 v6, 0x0

    const-string v7, "installed"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 795
    iget-object v6, p0, Lcom/android/server/pm/CustomizedApplicationInstaller$ApplicationSettings;->mInstalledPackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 796
    .local v3, packageName:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "item"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 797
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v4, v6, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 798
    const/4 v6, 0x0

    const-string v7, "item"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    .end local v1           #fstr:Ljava/io/FileOutputStream;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v5           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Ljava/io/IOException;
    sget-object v6, Lcom/android/server/pm/CustomizedApplicationInstaller;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ApplicationSettings.save(): IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 801
    .restart local v1       #fstr:Ljava/io/FileOutputStream;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v5       #str:Ljava/io/BufferedOutputStream;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    const-string v7, "installed"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 802
    const/4 v6, 0x0

    const-string v7, "packages"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 804
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 806
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 807
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 808
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 809
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
