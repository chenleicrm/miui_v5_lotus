.class public Lmiui/maml/elements/MusicControlScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final CHECK_STREAM_MUSIC_DELAY:I = 0x3e8

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MAX_ALBUM_COVER_PIXEL_SIZE:I = 0x400000

.field private static final MUSIC_NONE:I = 0x0

.field private static final MUSIC_PLAY:I = 0x2

.field private static final MUSIC_STOP:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private isPaused:Z

.field private mAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mArtistVar:Lmiui/maml/util/IndexedStringVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

.field private mCheckStreamMusicRunnable:Ljava/lang/Runnable;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

.field private mFilter:Landroid/content/IntentFilter;

.field private mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

.field private mIsOnlineSongBlocking:Z

.field private mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

.field private mMusicStatus:I

.field private mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/maml/elements/TextScreenElement;

.field private mTitleVar:Lmiui/maml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 5
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 169
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$1;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 430
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$2;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    .line 439
    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {v1, p0}, Lmiui/maml/elements/MusicControlScreenElement$3;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    .line 93
    const-string v1, "music_prev"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    .line 94
    const-string v1, "music_next"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    .line 95
    const-string v1, "music_play"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    .line 96
    const-string v1, "music_pause"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    .line 97
    const-string v1, "music_display"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/TextScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    .line 98
    const-string v1, "music_album_cover"

    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    .line 99
    invoke-direct {p0, p0}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 101
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    new-instance v1, Lmiui/maml/ScreenElementLoadException;

    const-string v2, "invalid music control"

    invoke-direct {v1, v2}, Lmiui/maml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 105
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 106
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 107
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 108
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 109
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v1, :cond_2

    .line 110
    const-string v1, "defAlbumCover"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, strDefAlbumCoverBmp:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v1, v0}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 118
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 122
    .end local v0           #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_2
    const-string v1, "autoShow"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 123
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 125
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_3

    .line 126
    new-instance v1, Lmiui/maml/util/IndexedNumberVariable;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    const-string v3, "music_state"

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    .line 128
    :cond_3
    return-void

    .line 114
    .restart local v0       #strDefAlbumCoverBmp:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6020081

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/ButtonScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    return-object v0
.end method

.method static synthetic access$1202(Lmiui/maml/elements/MusicControlScreenElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    return p1
.end method

.method static synthetic access$1300(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedNumberVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    return-object v0
.end method

.method static synthetic access$1400(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/elements/MusicControlScreenElement;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->setAlbumCover(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$402(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/TextScreenElement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$602(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/util/IndexedStringVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;

    return-object v0
.end method

.method static synthetic access$702(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/util/IndexedStringVariable;)Lmiui/maml/util/IndexedStringVariable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/util/IndexedStringVariable;

    return-object p1
.end method

.method static synthetic access$800(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updateMusic()V

    return-void
.end method

.method static synthetic access$900(Lmiui/maml/elements/MusicControlScreenElement;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableSpectrumVisualizerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .parameter "g"

    .prologue
    .line 131
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 132
    .local v2, se:Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 133
    check-cast v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 140
    .end local v2           #se:Lmiui/maml/elements/ScreenElement;
    :goto_0
    return-object v2

    .line 134
    .restart local v2       #se:Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 135
    check-cast v2, Lmiui/maml/elements/ElementGroup;

    .end local v2           #se:Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .line 136
    .local v1, ret:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 137
    goto :goto_0

    .line 140
    .end local v1           #ret:Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getKeyCode(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 515
    const-string v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const/16 v0, 0x58

    .line 522
    :goto_0
    return v0

    .line 517
    :cond_0
    const-string v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const/16 v0, 0x57

    goto :goto_0

    .line 519
    :cond_1
    const-string v0, "music_play"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "music_pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    const/16 v0, 0x55

    goto :goto_0

    .line 522
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private requestAlbum()V
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum(Landroid/content/Intent;Z)V

    .line 240
    return-void
.end method

.method private requestAlbum(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "forceRequest"

    .prologue
    .line 243
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-nez v4, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v4, "album"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, albumName:Ljava/lang/String;
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, artistName:Ljava/lang/String;
    if-nez p2, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    invoke-static {v0, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    invoke-static {v2, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-nez v4, :cond_0

    .line 254
    :cond_2
    const-string v4, "album_uri"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 255
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "album_path"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, albumPath:Ljava/lang/String;
    const/4 v4, 0x0

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 257
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    .line 258
    :cond_3
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestAlbum()V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private safeRegisterReceiver()V
    .locals 7

    .prologue
    .line 378
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    if-eqz v2, :cond_0

    .line 394
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 383
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 384
    new-instance v1, Landroid/content/Intent;

    const-string v2, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, requestIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 386
    .end local v1           #requestIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 389
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 391
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private safeUnregisterReceiver()V
    .locals 3

    .prologue
    .line 397
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    if-nez v1, :cond_0

    .line 407
    :goto_0
    return-void

    .line 400
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRegistered:Z

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MusicControlScreenElement"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMediaButtonBroadcast(II)V
    .locals 10
    .parameter "action"
    .parameter "keyCode"

    .prologue
    const/4 v9, 0x0

    .line 526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 527
    .local v1, eventtime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    move-wide v3, v1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 529
    .local v0, event:Landroid/view/KeyEvent;
    new-instance v8, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 530
    .local v8, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    const/16 v4, 0x8

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 531
    const-string v3, "forbid_double_click"

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private setAlbumCover(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 270
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-nez v2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 273
    :cond_0
    const-string v2, "album"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumName:Ljava/lang/String;

    .line 274
    const-string v2, "artist"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistName:Ljava/lang/String;

    .line 276
    :try_start_0
    const-string v2, "tmp_album_path"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, albumPath:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 278
    new-instance v2, Lmiui/util/InputStreamLoader;

    invoke-direct {v2, v0}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40

    invoke-static {v2, v3}, Lmiui/util/ImageUtils;->getBitmap(Lmiui/util/InputStreamLoader;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 279
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_1
    :goto_1
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v3, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    goto :goto_0

    .line 283
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 285
    .end local v0           #albumPath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v2, "MusicControlScreenElement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to load album cover bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v3, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    goto :goto_0

    .line 288
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #albumPath:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_2

    .end local v0           #albumPath:Ljava/lang/String;
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :cond_4
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_3

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    move-object v3, v2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumCoverBm:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v4, v2}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    throw v3

    .line 288
    :cond_5
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method private setupButton(Lmiui/maml/elements/ButtonScreenElement;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 146
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 148
    :cond_0
    return-void
.end method

.method private updateMusic()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 448
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 450
    .local v0, isMusicActive:Z
    if-nez v0, :cond_4

    move v1, v2

    .line 451
    .local v1, showPlay:Z
    :goto_0
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mIsOnlineSongBlocking:Z

    if-eqz v4, :cond_0

    .line 452
    const/4 v1, 0x0

    .line 455
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v4, v1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 456
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v4, v3}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 458
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    :cond_2
    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 459
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v2, :cond_3

    .line 460
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_5

    const-wide/high16 v2, 0x3ff0

    :goto_1
    invoke-virtual {v4, v2, v3}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 462
    :cond_3
    if-eqz v0, :cond_6

    const/high16 v2, 0x41f0

    :goto_2
    invoke-virtual {p0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 463
    return-void

    .end local v1           #showPlay:Z
    :cond_4
    move v1, v3

    .line 450
    goto :goto_0

    .line 460
    .restart local v1       #showPlay:Z
    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 462
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 372
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 375
    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 296
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 298
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    .line 300
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    .line 301
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.miui.player.refreshprogress"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "com.miui.player.playstatechanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iput-boolean v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    .line 308
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resume()V

    .line 310
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiui/util/AudioOutputHelper;->hasActiveReceivers(Landroid/content/Context;)Z

    move-result v0

    .line 311
    .local v0, isMusicActive:Z
    if-eqz v0, :cond_0

    .line 312
    const/4 v1, 0x2

    iput v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 314
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0, v3}, Lmiui/maml/elements/MusicControlScreenElement;->show(Z)V

    .line 318
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_1

    .line 319
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/util/IndexedNumberVariable;

    if-eqz v0, :cond_2

    const-wide/high16 v1, 0x3ff0

    :goto_0
    invoke-virtual {v3, v1, v2}, Lmiui/maml/util/IndexedNumberVariable;->set(D)V

    .line 321
    :cond_1
    return-void

    .line 319
    :cond_2
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 416
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    .line 417
    .local v0, keyCode:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 422
    :goto_0
    return v1

    .line 420
    :cond_0
    invoke-direct {p0, v1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 422
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 474
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 475
    .local v1, keyCode:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 476
    const/4 v2, 0x0

    .line 511
    :goto_0
    return v2

    .line 477
    :cond_0
    invoke-direct {p0, v2, v1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaButtonBroadcast(II)V

    .line 478
    move-object v0, p1

    .line 479
    .local v0, _name:Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$4;

    invoke-direct {v4, p0, v0}, Lmiui/maml/elements/MusicControlScreenElement$4;-><init>(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 324
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resume()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    .line 338
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 340
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 346
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    .line 351
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->show(Z)V

    .line 153
    if-nez p1, :cond_1

    .line 154
    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStatus:I

    .line 155
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeUnregisterReceiver()V

    .line 157
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v0, v2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->updateMusic()V

    .line 163
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->safeRegisterReceiver()V

    goto :goto_0
.end method

.method protected updateSpectrumVisualizer()V
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 467
    .local v0, isMusicActive:Z
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_0

    .line 468
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->isPaused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 470
    :cond_0
    return-void

    .line 468
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
