.class public Lmiui/maml/util/FancyIconResourceLoader;
.super Lmiui/maml/ResourceLoader;
.source "FancyIconResourceLoader.java"


# instance fields
.field private mRelatviePathBaseIcons:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "relativePathBaseIcons"

    .prologue
    invoke-direct {p0}, Lmiui/maml/ResourceLoader;-><init>()V

    iput-object p1, p0, Lmiui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .parameter "size"

    .prologue
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lmiui/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .local v0, info:Lmiui/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    iget-wide v2, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mSize:J

    aput-wide v2, p2, v1

    :cond_1
    iget-object v1, v0, Lmiui/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    goto :goto_0
.end method

.method protected resourceExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/util/FancyIconResourceLoader;->mRelatviePathBaseIcons:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->hasIcon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
