.class Lmiui/widget/MiCloudAdvancedSettingsBase$7$1;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase$7;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$7;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase$7;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7$1;->this$1:Lmiui/widget/MiCloudAdvancedSettingsBase$7;

    iget-object v0, v0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    const/4 v1, 0x0

    #calls: Lmiui/widget/MiCloudAdvancedSettingsBase;->updateSyncState(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$200(Lmiui/widget/MiCloudAdvancedSettingsBase;Ljava/lang/Boolean;)V

    .line 503
    return-void
.end method
