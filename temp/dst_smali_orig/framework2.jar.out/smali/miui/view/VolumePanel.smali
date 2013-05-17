.class public Lmiui/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumePanel$VolumeChangeInfo;,
        Lmiui/view/VolumePanel$StreamControl;,
        Lmiui/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_UNIT:I = 0x32

.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lmiui/view/VolumePanel$StreamResources; = null

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x3e8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mIsAnimationCancel:Z

.field mLastAudibleRingVolume:I

.field private mOrientationChanged:I

.field mRestoreRingVolume:I

.field private mRingIsSilent:Z

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeChanged:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mVolumeDivider:Landroid/widget/ImageView;

.field private mVolumeHeadSet:Landroid/widget/ImageView;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumePanel:Landroid/view/View;

.field private mVolumePregress:Lmiui/v5/widget/CircleProgressView;

.field private mVolumeType:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    sput-boolean v2, Lmiui/view/VolumePanel;->LOGD:Z

    const/16 v0, 0x8

    new-array v0, v0, [Lmiui/view/VolumePanel$StreamResources;

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MasterStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RemoteStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 2
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    iput v0, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    iput v0, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    iput v1, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    iput v1, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    iput-object p1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    invoke-direct {p0}, Lmiui/view/VolumePanel;->listenToRingerMode()V

    return-void
.end method

.method static synthetic access$000(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Lmiui/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Lmiui/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/view/VolumePanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    return v0
.end method

.method static synthetic access$800(Lmiui/view/VolumePanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lmiui/view/VolumePanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createStreamControl()V
    .locals 7

    .prologue
    new-instance v5, Ljava/util/HashMap;

    sget-object v6, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    sget-object v5, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v5, v0

    .local v3, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v4, v3, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .local v4, streamType:I
    iget-boolean v5, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v5, :cond_0

    sget-object v5, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    if-ne v3, v5, :cond_0

    sget-object v3, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    :cond_0
    new-instance v2, Lmiui/view/VolumePanel$StreamControl;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lmiui/view/VolumePanel$StreamControl;-><init>(Lmiui/view/VolumePanel;Lmiui/view/VolumePanel$1;)V

    .local v2, sc:Lmiui/view/VolumePanel$StreamControl;
    iput v4, v2, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    iget v5, v3, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    .local v1, plusOne:I
    :goto_1
    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v5

    add-int/2addr v5, v1

    iput v5, v2, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    iget-object v5, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #plusOne:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .end local v2           #sc:Lmiui/view/VolumePanel$StreamControl;
    .end local v3           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    .end local v4           #streamType:I
    :cond_3
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$4;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reorderStream(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .local v0, active:Lmiui/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateState(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    iput p1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    iput p2, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private startMaxVolumeAnimation()V
    .locals 11

    .prologue
    const/16 v10, 0x46

    .local v10, ANIMATION_TIME:I
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v0, scaleAnimation1:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartTime(J)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f8ccccd

    const/high16 v3, 0x3f80

    const v4, 0x3f8ccccd

    const/high16 v5, 0x3f80

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .local v1, scaleAnimation2:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x46

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v2, Lmiui/view/VolumePanel$5;

    invoke-direct {v2, p0, v1}, Lmiui/view/VolumePanel$5;-><init>(Lmiui/view/VolumePanel;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startSilentAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v0, alphaAnimation1:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v1, alphaAnimation2:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Lmiui/view/VolumePanel$8;

    invoke-direct {v2, p0, v1}, Lmiui/view/VolumePanel$8;-><init>(Lmiui/view/VolumePanel;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startVibrateAnimation()V
    .locals 15

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    const/4 v0, 0x4

    new-array v12, v0, [Landroid/view/animation/RotateAnimation;

    .local v12, rotationAnimation:[Landroid/view/animation/RotateAnimation;
    const/4 v14, 0x0

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x4100

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    const/4 v0, 0x0

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v0, 0x0

    aget-object v0, v12, v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v14, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x4100

    const/high16 v2, -0x3f00

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    const/4 v0, 0x1

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v0, 0x1

    aget-object v0, v12, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v14, 0x2

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f00

    const/high16 v2, 0x4100

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    const/4 v0, 0x2

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v0, 0x2

    aget-object v0, v12, v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v14, 0x3

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f00

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    aput-object v0, v12, v14

    const/4 v0, 0x3

    aget-object v0, v12, v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v0, 0x3

    aget-object v0, v12, v0

    const-wide/16 v1, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v9, Lmiui/view/VolumePanel$6;

    invoke-direct {v9, p0, v12}, Lmiui/view/VolumePanel$6;-><init>(Lmiui/view/VolumePanel;[Landroid/view/animation/RotateAnimation;)V

    .local v9, animationListener:Landroid/view/animation/Animation$AnimationListener;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v12

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_0

    aget-object v0, v12, v10

    invoke-virtual {v0, v9}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v11, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Ljava/util/Random;-><init>(J)V

    .local v11, random:Ljava/util/Random;
    const/16 v7, 0xa

    .local v7, DISTANCEX:I
    const/4 v8, 0x5

    .local v8, DISTANCEY:I
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x4120

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x40a0

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v13, translateAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v0, 0x32

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lmiui/view/VolumePanel$7;

    invoke-direct {v0, p0, v11}, Lmiui/view/VolumePanel$7;-><init>(Lmiui/view/VolumePanel;Ljava/util/Random;)V

    invoke-virtual {v13, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private updateState(Lmiui/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setMaxProgress(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v4}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .local v0, muted:Z
    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    iget-object v4, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    const v4, 0x6020195

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/CircleProgressView;->setBackgroundResource(I)V

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    const v4, 0x60201a3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    const v4, 0x6020196

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    const v4, 0x60201a0

    invoke-virtual {v1, v4}, Lmiui/v5/widget/CircleProgressView;->setBackgroundResource(I)V

    :cond_0
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/16 v4, -0xc8

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v2}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    :cond_3
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v1, v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v3}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v1, v2}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateStreamDevice(I)V
    .locals 4
    .parameter "streamType"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .local v0, device:I
    if-nez p1, :cond_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    const v2, 0x60202c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    const v2, 0x60202bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, -0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onVibrate()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateState(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0

    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget v2, v0, Lmiui/view/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    new-instance v1, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v1, v4, v4}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, p1, p2, v1}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    return-void

    :cond_2
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->reorderStream(I)V

    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    :cond_5
    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 13
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v12, 0x602019a

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/16 v10, -0xc8

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .local v0, index:I
    iput-boolean v5, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    sget-boolean v7, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .local v1, max:I
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    iget-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumePanel$StreamControl;

    .local v3, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_5

    iget v7, v3, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    if-ne v7, v11, :cond_2

    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eq v7, v6, :cond_3

    :cond_2
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mIsAnimationCancel:Z

    :cond_3
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget v8, v3, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    invoke-virtual {v7, v8}, Lmiui/v5/widget/CircleProgressView;->setMaxProgress(I)V

    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v7, v0}, Lmiui/v5/widget/CircleProgressView;->setProgress(I)V

    iget v7, v3, Lmiui/view/VolumePanel$StreamControl;->maxVolume:I

    if-ne v0, v7, :cond_9

    iget-object v7, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lmiui/view/VolumePanel;->startMaxVolumeAnimation()V

    :cond_4
    :goto_1
    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v7

    if-eq p1, v7, :cond_a

    if-eq p1, v10, :cond_a

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-virtual {v7, v5}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    :cond_5
    :goto_2
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_6

    if-ne p1, v10, :cond_c

    const/4 v4, -0x1

    .local v4, stream:I
    :goto_3
    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .end local v4           #stream:I
    :cond_6
    if-eq p1, v10, :cond_7

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_7

    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v6, :cond_7

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    return-void

    .end local v3           #sc:Lmiui/view/VolumePanel$StreamControl;
    :sswitch_1
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_2
    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_8

    const v7, 0x6020197

    const v8, 0x6020198

    invoke-direct {p0, v7, v8}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v12, v12}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    :sswitch_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :sswitch_4
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .end local v2           #ringuri:Landroid/net/Uri;
    :sswitch_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :sswitch_6
    sget-boolean v7, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_9
    iget v7, v3, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    if-ne v7, v11, :cond_4

    iget-object v7, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lmiui/view/VolumePanel;->startSilentAnimation()V

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v8

    if-nez v8, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {v7, v5}, Lmiui/v5/widget/CircleProgressView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_c
    move v4, p1

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .parameter "streamType"
    .parameter "visible"

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne p2, v1, :cond_2

    .local v1, isVisible:Z
    :goto_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .local v2, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v3, v2, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    iput-boolean v1, v2, Lmiui/view/VolumePanel$StreamResources;->show:Z

    if-nez v1, :cond_1

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    .end local v1           #isVisible:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #isVisible:Z
    .restart local v2       #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #isVisible:Z
    .end local v2           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    invoke-direct {p0}, Lmiui/view/VolumePanel;->startVibrateAnimation()V

    goto :goto_0
.end method

.method protected onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"
    .parameter "vc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->reorderStream(I)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    if-ne v3, p1, :cond_2

    iget v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-nez v0, :cond_2

    iget v0, p3, Lmiui/view/VolumePanel$VolumeChangeInfo;->mFromVolume:I

    iput v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_5

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    :cond_5
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDisplaySafeVolumeWarning()V
    .locals 0

    .prologue
    return-void
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postMuteChanged(II)V

    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .parameter "flags"

    .prologue
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lmiui/view/VolumePanel;->postVolumeChanged(II)V

    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    invoke-virtual {p0, v1, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 7
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, from:I
    const/4 v2, 0x0

    .local v2, to:I
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    iget v0, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    iput v2, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    :cond_0
    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->updateStreamDevice(I)V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_2

    invoke-direct {p0}, Lmiui/view/VolumePanel;->createStreamControl()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_4

    iput p1, v1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    new-instance v3, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v3, v0, v2}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, v6, p1, p2, v3}, Lmiui/view/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v1       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_4
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown stream type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not bind any streamcontrol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public recreateIfNeeded()V
    .locals 12

    .prologue
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    const/4 v6, 0x0

    .local v6, themeChanged:I
    :goto_0
    if-nez v0, :cond_1

    const/4 v4, 0x0

    .local v4, orientationChanged:I
    :goto_1
    iget v9, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    if-ne v9, v6, :cond_2

    iget v9, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    if-ne v9, v4, :cond_2

    :goto_2
    return-void

    .end local v4           #orientationChanged:I
    .end local v6           #themeChanged:I
    :cond_0
    iget-object v9, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v6, v9, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    goto :goto_0

    .restart local v6       #themeChanged:I
    :cond_1
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1

    .restart local v4       #orientationChanged:I
    :cond_2
    iput v6, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    iput v4, p0, Lmiui/view/VolumePanel;->mOrientationChanged:I

    const/4 v9, 0x0

    iput-object v9, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .local v7, useMasterVolume:Z
    if-eqz v7, :cond_4

    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v9, v9

    if-ge v1, v9, :cond_4

    sget-object v9, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v5, v9, v1

    .local v5, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v9, v5, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v5, Lmiui/view/VolumePanel$StreamResources;->show:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    goto :goto_4

    .end local v1           #i:I
    .end local v5           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    :cond_4
    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x6030055

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Lmiui/view/VolumePanel$1;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$1;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeIcon:Landroid/widget/ImageView;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeType:Landroid/widget/TextView;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeHeadSet:Landroid/widget/ImageView;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00cf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumeDivider:Landroid/widget/ImageView;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lmiui/v5/widget/CircleProgressView;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumePregress:Lmiui/v5/widget/CircleProgressView;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x60b00b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVolumePanel:Landroid/view/View;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->dismiss()V

    :goto_5
    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v10, "Volume control"

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v10, Lmiui/view/VolumePanel$3;

    invoke-direct {v10, p0}, Lmiui/view/VolumePanel$3;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .local v8, window:Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x60a004d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_6
    const/4 v9, 0x0

    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v9, 0x7e4

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v9, -0x2

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v8, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x6090006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    goto/16 :goto_2

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_5
    new-instance v9, Lmiui/view/VolumePanel$2;

    iget-object v10, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const v11, 0x60d0046

    invoke-direct {v9, p0, v10, v11}, Lmiui/view/VolumePanel$2;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v9, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    new-array v9, v9, [Landroid/media/ToneGenerator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    iget-object v9, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v10, "vibrator"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    iput-object v9, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_5

    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v8       #window:Landroid/view/Window;
    :cond_6
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    const/4 v9, 0x0

    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_6
.end method
