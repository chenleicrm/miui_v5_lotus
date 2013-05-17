.class public abstract Lmiui/maml/ActionCommand;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$1;,
        Lmiui/maml/ActionCommand$AnimationProperty;,
        Lmiui/maml/ActionCommand$VisibilityProperty;,
        Lmiui/maml/ActionCommand$PropertyCommand;,
        Lmiui/maml/ActionCommand$DelayCommand;,
        Lmiui/maml/ActionCommand$ConditionCommand;,
        Lmiui/maml/ActionCommand$SoundCommand;,
        Lmiui/maml/ActionCommand$IntentCommand;,
        Lmiui/maml/ActionCommand$VariableBinderCommand;,
        Lmiui/maml/ActionCommand$VariableAssignmentCommand;,
        Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;,
        Lmiui/maml/ActionCommand$BluetoothSwitchCommand;,
        Lmiui/maml/ActionCommand$DataSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiSwitchCommand;,
        Lmiui/maml/ActionCommand$WifiStateTracker;,
        Lmiui/maml/ActionCommand$StateTracker;,
        Lmiui/maml/ActionCommand$OnOffCommandHelper;,
        Lmiui/maml/ActionCommand$RingModeCommand;,
        Lmiui/maml/ActionCommand$ModeToggleHelper;,
        Lmiui/maml/ActionCommand$NotificationReceiver;,
        Lmiui/maml/ActionCommand$StatefulActionCommand;
    }
.end annotation


# static fields
.field private static final COMMAND_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final COMMAND_DATA:Ljava/lang/String; = "Data"

.field private static final COMMAND_RING_MODE:Ljava/lang/String; = "RingMode"

.field private static final COMMAND_USB_STORAGE:Ljava/lang/String; = "UsbStorage"

.field private static final COMMAND_WIFI:Ljava/lang/String; = "Wifi"

.field private static final LOG_TAG:Ljava/lang/String; = "ActionCommand"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field public static final TAG_NAME:Ljava/lang/String; = "Command"

.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field protected mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput-object p1, p0, Lmiui/maml/ActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 1077
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/maml/ActionCommand;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;
    .locals 4
    .parameter "root"
    .parameter "target"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1049
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-object v2

    .line 1052
    :cond_1
    new-instance v1, Lmiui/maml/util/Variable;

    invoke-direct {v1, p1}, Lmiui/maml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v1, targetObj:Lmiui/maml/util/Variable;
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1054
    invoke-static {p0, p1, p2}, Lmiui/maml/ActionCommand$PropertyCommand;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand$PropertyCommand;

    move-result-object v2

    goto :goto_0

    .line 1057
    :cond_2
    invoke-virtual {v1}, Lmiui/maml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, property:Ljava/lang/String;
    const-string v3, "RingMode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1059
    new-instance v2, Lmiui/maml/ActionCommand$RingModeCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$RingModeCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    :cond_3
    const-string v3, "Wifi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1061
    new-instance v2, Lmiui/maml/ActionCommand$WifiSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$WifiSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_4
    const-string v3, "Data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1063
    new-instance v2, Lmiui/maml/ActionCommand$DataSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$DataSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1064
    :cond_5
    const-string v3, "Bluetooth"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1065
    new-instance v2, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$BluetoothSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    :cond_6
    const-string v3, "UsbStorage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1067
    new-instance v2, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-direct {v2, p0, p2}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;-><init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static create(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/ActionCommand;
    .locals 12
    .parameter "ele"
    .parameter "root"

    .prologue
    const-wide/16 v10, 0x0

    .line 1015
    if-nez p0, :cond_0

    .line 1016
    const/4 v4, 0x0

    .line 1045
    :goto_0
    return-object v4

    .line 1018
    :cond_0
    const-string v9, "condition"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    .line 1019
    .local v0, condition:Lmiui/maml/data/Expression;
    const-string v9, "delayCondition"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    .line 1020
    .local v3, delayCondition:Lmiui/maml/data/Expression;
    const-string v9, "delay"

    invoke-static {p0, v9, v10, v11}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1021
    .local v1, delay:J
    const/4 v4, 0x0

    .line 1022
    .local v4, ret:Lmiui/maml/ActionCommand;
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 1023
    .local v6, tag:Ljava/lang/String;
    const-string v9, "Command"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1024
    const-string v9, "target"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1025
    .local v7, target:Ljava/lang/String;
    const-string v9, "value"

    invoke-interface {p0, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1026
    .local v8, value:Ljava/lang/String;
    invoke-static {p1, v7, v8}, Lmiui/maml/ActionCommand;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/ActionCommand;

    move-result-object v4

    move-object v5, v4

    .line 1036
    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .end local v7           #target:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .local v5, ret:Lmiui/maml/ActionCommand;
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 1037
    new-instance v4, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v4, v5, v3}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .line 1039
    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    :cond_1
    cmp-long v9, v1, v10

    if-lez v9, :cond_2

    if-eqz v5, :cond_2

    .line 1040
    new-instance v4, Lmiui/maml/ActionCommand$DelayCommand;

    invoke-direct {v4, v5, v1, v2}, Lmiui/maml/ActionCommand$DelayCommand;-><init>(Lmiui/maml/ActionCommand;J)V

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .line 1042
    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    :cond_2
    if-eqz v0, :cond_7

    if-eqz v5, :cond_7

    .line 1043
    new-instance v4, Lmiui/maml/ActionCommand$ConditionCommand;

    invoke-direct {v4, v5, v0}, Lmiui/maml/ActionCommand$ConditionCommand;-><init>(Lmiui/maml/ActionCommand;Lmiui/maml/data/Expression;)V

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    goto :goto_0

    .line 1027
    :cond_3
    const-string v9, "VariableCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1028
    new-instance v4, Lmiui/maml/ActionCommand$VariableAssignmentCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1029
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_4
    const-string v9, "BinderCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1030
    new-instance v4, Lmiui/maml/ActionCommand$VariableBinderCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$VariableBinderCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1031
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_5
    const-string v9, "IntentCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1032
    new-instance v4, Lmiui/maml/ActionCommand$IntentCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$IntentCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    .line 1033
    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    :cond_6
    const-string v9, "SoundCommand"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1034
    new-instance v4, Lmiui/maml/ActionCommand$SoundCommand;

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    invoke-direct {v4, p1, p0}, Lmiui/maml/ActionCommand$SoundCommand;-><init>(Lmiui/maml/ScreenElementRoot;Lorg/w3c/dom/Element;)V

    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1

    :cond_7
    move-object v4, v5

    .end local v5           #ret:Lmiui/maml/ActionCommand;
    .restart local v4       #ret:Lmiui/maml/ActionCommand;
    goto/16 :goto_0

    :cond_8
    move-object v5, v4

    .end local v4           #ret:Lmiui/maml/ActionCommand;
    .restart local v5       #ret:Lmiui/maml/ActionCommand;
    goto :goto_1
.end method


# virtual methods
.method protected abstract doPerform()V
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1095
    return-void
.end method

.method protected getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 1092
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method

.method public perform()V
    .locals 1

    .prologue
    .line 1080
    invoke-virtual {p0}, Lmiui/maml/ActionCommand;->doPerform()V

    .line 1081
    iget-object v0, p0, Lmiui/maml/ActionCommand;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    .line 1082
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 1101
    return-void
.end method
