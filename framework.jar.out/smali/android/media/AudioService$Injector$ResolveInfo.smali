.class Landroid/media/AudioService$Injector$ResolveInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolveInfo"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "component"
    .parameter "pi"

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/media/AudioService$Injector$ResolveInfo;->mComponent:Landroid/content/ComponentName;

    .line 123
    iput-object p2, p0, Landroid/media/AudioService$Injector$ResolveInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 124
    return-void
.end method
