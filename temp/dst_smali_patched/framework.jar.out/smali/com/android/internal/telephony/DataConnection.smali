.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcQosActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/DataConnection$CallSetupException;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field protected static final BASE:I = 0x40000

.field private static final CMD_TO_STRING_COUNT:I = 0x7

.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x40000

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field protected static final EVENT_DISCONNECT:I = 0x40004

.field protected static final EVENT_DISCONNECT_ALL:I = 0x40006

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_QOS_DISABLE:I = 0x40020

.field protected static final EVENT_QOS_DISABLE_DONE:I = 0x40021

.field protected static final EVENT_QOS_ENABLE:I = 0x4001e

.field protected static final EVENT_QOS_ENABLE_DONE:I = 0x4001f

.field protected static final EVENT_QOS_GET_STATUS:I = 0x40028

.field protected static final EVENT_QOS_GET_STATUS_DONE:I = 0x40029

.field protected static final EVENT_QOS_IND:I = 0x4002a

.field protected static final EVENT_QOS_MODIFY:I = 0x40022

.field protected static final EVENT_QOS_MODIFY_DONE:I = 0x40023

.field protected static final EVENT_QOS_RESUME:I = 0x40026

.field protected static final EVENT_QOS_RESUME_DONE:I = 0x40027

.field protected static final EVENT_QOS_SUSPEND:I = 0x40024

.field protected static final EVENT_QOS_SUSPEND_DONE:I = 0x40025

.field protected static final EVENT_RIL_CONNECTED:I = 0x40005

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field private static final LOG_TAG:Ljava/lang/String; = "DataConnection"

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final VDBG:Z

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;

.field private static sCmdToString:[Ljava/lang/String;

.field private static sTempFailCauses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection$FailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field protected mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field protected mApn:Lcom/android/internal/telephony/ApnSetting;

.field protected mApnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field private mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

.field protected mQosFlowIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRefCount:I

.field private mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected mRetryOverride:I

.field protected mRilVersion:I

.field protected mTag:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EVENT_CONNECT"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "EVENT_SETUP_DATA_CONNECTION_DONE"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "EVENT_GET_LAST_FAIL_DONE"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "EVENT_DEACTIVATE_DONE"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "EVENT_DISCONNECT"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "EVENT_RIL_CONNECTED"

    aput-object v2, v0, v1

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "EVENT_DISCONNECT_ALL"

    aput-object v2, v0, v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->sTempFailCauses:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 3
    .parameter "phone"
    .parameter "name"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setProcessedMessagesSize(I)V

    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iput-object p5, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    iput p3, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    iput-object p4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    const-string v0, "ro.net.data_tmpfailures"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataConnection;->configureTempFailureCauses(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sTempFailCauses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->getSuggestedRetryTime(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->tearDownQos()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected static cmdToString(I)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    const/high16 v0, 0x4

    sub-int/2addr p0, v0

    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnection;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private configureTempFailureCauses(Ljava/lang/String;)V
    .locals 9
    .parameter "configStr"

    .prologue
    sget-object v7, Lcom/android/internal/telephony/DataConnection;->sTempFailCauses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, strTempFailCausesArray:[Ljava/lang/String;
    array-length v7, v6

    if-lez v7, :cond_0

    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, s:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v2

    .local v2, failCause:Lcom/android/internal/telephony/DataConnection$FailCause;
    sget-object v7, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq v2, v7, :cond_2

    sget-object v7, Lcom/android/internal/telephony/DataConnection;->sTempFailCauses:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #failCause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v7, "DataConnection"

    const-string v8, "Temporary failure causes was not customized correctly."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getSuggestedRetryTime(Landroid/os/AsyncResult;)I
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v1, -0x1

    .local v1, retry:I
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataCallState;

    .local v0, response:Lcom/android/internal/telephony/DataCallState;
    iget v1, v0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .end local v0           #response:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    return v1
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 5
    .parameter "cp"
    .parameter "cause"

    .prologue
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, timeStamp:J
    iget v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p2, v3, :cond_1

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyConnectionCompleted at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    new-instance v3, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/DataConnection$CallSetupException;-><init>(I)V

    invoke-static {v0, p2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    .locals 7
    .parameter "dp"
    .parameter "sendAll"

    .prologue
    const/4 v1, 0x0

    .local v1, alreadySent:Lcom/android/internal/telephony/ApnContext;
    const/4 v4, 0x0

    .local v4, reason:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .local v3, msg:Landroid/os/Message;
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_0

    iget-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #alreadySent:Lcom/android/internal/telephony/ApnContext;
    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .restart local v1       #alreadySent:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .local v0, a:Lcom/android/internal/telephony/ApnContext;
    if-eq v0, v1, :cond_2

    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v6, 0x4200f

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .restart local v3       #msg:Landroid/os/Message;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0           #a:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 5
    .parameter "ar"

    .prologue
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataCallState;

    .local v1, response:Lcom/android/internal/telephony/DataCallState;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted failed, ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .local v2, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    :goto_0
    return-object v2

    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    if-eqz v3, :cond_5

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    goto :goto_0

    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted received DataCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 6
    .parameter "response"
    .parameter "lp"

    .prologue
    const/4 v1, 0x0

    .local v1, okToUseSystemPropertyDns:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, propertyPrefix:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .local v0, dnsServers:[Ljava/lang/String;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/DataCallState;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v3

    return-object v3
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x0

    const v6, 0x40003

    const/4 v1, 0x0

    .local v1, discReason:I
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    if-eqz v4, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .local v2, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v3, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .local v3, m:Landroid/os/Message;
    iget-object v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string v5, "radioTurnedOff"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    :goto_1
    return-void

    .restart local v2       #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .restart local v3       #m:Landroid/os/Message;
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string v5, "pdpReset"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .end local v2           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v3           #m:Landroid/os/Message;
    :cond_2
    const-string v4, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v7, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private tearDownQos()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->qosRelease(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method private updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .parameter "newState"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    .local v0, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty old LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty new LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0
.end method


# virtual methods
.method public bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V
    .locals 2
    .parameter "onCompletedMsg"
    .parameter "apn"

    .prologue
    const/high16 v0, 0x4

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/ApnSetting;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected clearSettings()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iput-wide v2, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    iput-wide v2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    return-void
.end method

.method public configureRetry(III)Z
    .locals 1
    .parameter "maxRetryCount"
    .parameter "retryTime"
    .parameter "randomizationTime"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    move-result v0

    return v0
.end method

.method public configureRetry(Ljava/lang/String;)Z
    .locals 1
    .parameter "configStr"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v0, "DataConnection "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRilVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRetryOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " userData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->userData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getDataConnectionId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method protected getMessageInfo(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .local v0, info:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnectionAc;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQosStatus(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    const v0, 0x40028

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v0

    return v0
.end method

.method public getRetryTimer()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v0

    return v0
.end method

.method protected getRilRadioTechnology(I)I
    .locals 3
    .parameter "defaultRilRadioTechnology"

    .prologue
    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    move v0, p1

    .local v0, rilRadioTechnology:I
    :goto_0
    return v0

    .end local v0           #rilRadioTechnology:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .restart local v0       #rilRadioTechnology:I
    goto :goto_0
.end method

.method public increaseRetryCount()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    return-void
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isInactive()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQosAvailable()Z
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryForever()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v0

    return v0
.end method

.method public isRetryNeeded()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v0

    return v0
.end method

.method public isValidQos(I)Z
    .locals 2
    .parameter "qosId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method protected onQosGetStatus(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get QoS Status, qosId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40029

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getQosStatus(ILandroid/os/Message;)V

    return-void
.end method

.method protected onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V
    .locals 10
    .parameter "qosId"
    .parameter "ar"
    .parameter "error"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .local v3, qosStatusResp:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v2, 0x0

    .local v2, qosStatus:I
    const/16 v5, 0xc

    .local v5, status:I
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lt v6, v9, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entire Status Msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v3, v8

    if-eqz v6, :cond_1

    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid qosStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    :goto_0
    array-length v6, v3

    if-le v6, v9, :cond_1

    new-instance v4, Lcom/android/internal/telephony/QosSpec;

    .end local v4           #spec:Lcom/android/internal/telephony/QosSpec;
    invoke-direct {v4}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .restart local v4       #spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_0

    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/QosSpec;->createPipe(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :pswitch_0
    const/16 v5, 0xd

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x1

    goto :goto_0

    .restart local v0       #i:I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QoS Spec for upper layers:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .end local v0           #i:I
    :cond_1
    :goto_2
    new-instance v1, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v1}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .local v1, ind:Lcom/android/internal/telephony/QosIndication;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/QosIndication;->setQosState(I)V

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/QosIndication;->setQosSpec(Lcom/android/internal/telephony/QosSpec;)V

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v1           #ind:Lcom/android/internal/telephony/QosIndication;
    :cond_2
    const-string v6, "Invalid Qos Status message, going back to Active State"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onQosRelease(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Release, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40021

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->releaseQos(ILandroid/os/Message;)V

    return-void
.end method

.method protected onQosReleaseDone(ILjava/lang/String;)V
    .locals 4
    .parameter "qosId"
    .parameter "error"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosReleaseDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " QoS Flow Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosReleaseDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosResume(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Resume, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40027

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->resumeQos(ILandroid/os/Message;)V

    return-void
.end method

.method protected onQosResumeDone(ILjava/lang/String;)V
    .locals 3
    .parameter "qosId"
    .parameter "error"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosResumeDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosResumeDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 5
    .parameter "qosSpec"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Setup. QosSpec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getRilQosSpec()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x4001f

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V

    return-void
.end method

.method protected onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userData"
    .parameter "responses"
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .local v1, failure:Z
    const/16 v3, 0xc

    .local v3, state:I
    new-instance v2, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v2}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .local v2, ind:Lcom/android/internal/telephony/QosIndication;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/QosIndication;->setUserData(I)V

    if-nez p3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added QosId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " QoS Flow Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, p3}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQosSetupDone Complete, userData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    const-string v4, "Error in Qos Setup, going back to Active State"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method

.method protected onQosStateChangedInd(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .local v3, qosInd:[Ljava/lang/String;
    const/16 v4, 0xc

    .local v4, qosIndState:I
    if-eqz v3, :cond_0

    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Qos State Changed Ind:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQosStateChangedInd: qosId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v1}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .local v1, ind:Lcom/android/internal/telephony/QosIndication;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Unknown QoS ID, Ignoring Indication"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v2           #qosId:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception processing indication:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .restart local v2       #qosId:I
    :cond_3
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, qosState:I
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v6, "Invalid Qos State, ignoring indication!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    :goto_2
    const/4 v6, 0x3

    if-eq v4, v6, :cond_4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QoS connection dropped, qosId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v2           #qosId:I
    .end local v5           #qosState:I
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception processing indication:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #qosId:I
    .restart local v5       #qosState:I
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_2

    :pswitch_2
    const/4 v4, 0x3

    goto :goto_2

    :pswitch_3
    const/4 v4, 0x4

    goto :goto_2

    :pswitch_4
    const/16 v4, 0x8

    goto :goto_2

    :pswitch_5
    const/4 v4, 0x5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onQosSuspend(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Suspend, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40025

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->suspendQos(ILandroid/os/Message;)V

    return-void
.end method

.method protected onQosSuspendDone(ILjava/lang/String;)V
    .locals 3
    .parameter "qosId"
    .parameter "error"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosSuspendDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosSuspendDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public qosModify(ILcom/android/internal/telephony/QosSpec;)V
    .locals 2
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    const v0, 0x40022

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosRelease(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    const v0, 0x40020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosResume(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    const v0, 0x40026

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 1
    .parameter "qosSpec"

    .prologue
    const v0, 0x4001e

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public qosSuspend(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    const v0, 0x40024

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .parameter "retryCount"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRetryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    return-void
.end method

.method public tearDown(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    const v0, 0x40004

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    const v0, 0x40006

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
