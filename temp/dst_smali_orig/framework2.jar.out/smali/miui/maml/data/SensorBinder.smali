.class public Lmiui/maml/data/SensorBinder;
.super Lmiui/maml/data/VariableBinder;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/SensorBinder$Variable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:I = 0x30d40

.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field private static final SENSOR_TYPES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static mSensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mType:Ljava/lang/String;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/maml/data/SensorBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string v1, "orientation"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string v1, "gravity"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string v1, "accelerometer"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string v1, "linear_acceleration"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-string v1, "pressure"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mVariables:Ljava/util/HashMap;

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    const-string v0, "rate"

    const v1, 0x30d40

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/SensorBinder;->mRate:I

    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/maml/data/SensorBinder;->getSensorType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    const-string v0, "SensorBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get sensor! TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lmiui/maml/data/SensorBinder$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/SensorBinder$1;-><init>(Lmiui/maml/data/SensorBinder;)V

    iput-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, p1}, Lmiui/maml/data/SensorBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lmiui/maml/data/SensorBinder;I)Lmiui/maml/data/SensorBinder$Variable;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/SensorBinder;->getVariable(I)Lmiui/maml/data/SensorBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method private getSensorType(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    sget-object v1, Lmiui/maml/data/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, type:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getVariable(I)Lmiui/maml/data/SensorBinder$Variable;
    .locals 2
    .parameter "index"

    .prologue
    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mVariables:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/SensorBinder$Variable;

    return-object v0
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 5
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v3, "Variable"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, variables:Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v1, Lmiui/maml/data/SensorBinder$Variable;

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lmiui/maml/data/SensorBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v1, v3, v4}, Lmiui/maml/data/SensorBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .local v1, v:Lmiui/maml/data/SensorBinder$Variable;
    iget-object v3, p0, Lmiui/maml/data/SensorBinder;->mVariables:Ljava/util/HashMap;

    iget v4, v1, Lmiui/maml/data/SensorBinder$Variable;->mIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #v:Lmiui/maml/data/SensorBinder$Variable;
    :cond_0
    return-void
.end method

.method private registerListener()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lmiui/maml/data/SensorBinder;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lmiui/maml/data/SensorBinder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/maml/data/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/maml/data/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/SensorBinder;->mRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/maml/data/SensorBinder;->registerListener()V

    return-void
.end method
