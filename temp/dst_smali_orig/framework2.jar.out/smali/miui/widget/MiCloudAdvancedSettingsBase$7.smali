.class Lmiui/widget/MiCloudAdvancedSettingsBase$7;
.super Ljava/lang/Object;
.source "MiCloudAdvancedSettingsBase.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/MiCloudAdvancedSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudAdvancedSettingsBase;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    iget-object v0, p0, Lmiui/widget/MiCloudAdvancedSettingsBase$7;->this$0:Lmiui/widget/MiCloudAdvancedSettingsBase;

    #getter for: Lmiui/widget/MiCloudAdvancedSettingsBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/widget/MiCloudAdvancedSettingsBase;->access$600(Lmiui/widget/MiCloudAdvancedSettingsBase;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/widget/MiCloudAdvancedSettingsBase$7$1;

    invoke-direct {v1, p0}, Lmiui/widget/MiCloudAdvancedSettingsBase$7$1;-><init>(Lmiui/widget/MiCloudAdvancedSettingsBase$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
