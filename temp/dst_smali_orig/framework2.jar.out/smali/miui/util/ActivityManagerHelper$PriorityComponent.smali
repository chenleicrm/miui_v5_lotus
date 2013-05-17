.class public Lmiui/util/ActivityManagerHelper$PriorityComponent;
.super Ljava/lang/Object;
.source "ActivityManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ActivityManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityComponent"
.end annotation


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mPriority:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .parameter "component"
    .parameter "p"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/ActivityManagerHelper$PriorityComponent;->mComponent:Landroid/content/ComponentName;

    iput p2, p0, Lmiui/util/ActivityManagerHelper$PriorityComponent;->mPriority:I

    return-void
.end method
