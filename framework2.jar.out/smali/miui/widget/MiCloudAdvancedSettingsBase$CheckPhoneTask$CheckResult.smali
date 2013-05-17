.class public final enum Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;
.super Ljava/lang/Enum;
.source "MiCloudAdvancedSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

.field public static final enum RESULT_ACTIVATING:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

.field public static final enum RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

.field public static final enum RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v2}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    .line 583
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    const-string v1, "RESULT_NOT_ACTIVATED"

    invoke-direct {v0, v1, v3}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    .line 584
    new-instance v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    const-string v1, "RESULT_ACTIVATING"

    invoke-direct {v0, v1, v4}, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_ACTIVATING:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    .line 581
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    sget-object v1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_OK:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_NOT_ACTIVATED:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->RESULT_ACTIVATING:Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->$VALUES:[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 581
    const-class v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    return-object v0
.end method

.method public static values()[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->$VALUES:[Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    invoke-virtual {v0}, [Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/widget/MiCloudAdvancedSettingsBase$CheckPhoneTask$CheckResult;

    return-object v0
.end method
