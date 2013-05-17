.class Lmiui/util/HolidayUtils$HolidayData;
.super Ljava/lang/Object;
.source "HolidayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/HolidayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HolidayData"
.end annotation


# instance fields
.field private mFreedaySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkdaySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field final synthetic this$0:Lmiui/util/HolidayUtils;


# direct methods
.method public constructor <init>(Lmiui/util/HolidayUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lmiui/util/HolidayUtils$HolidayData;->this$0:Lmiui/util/HolidayUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lmiui/util/HolidayUtils;ILjava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter "year"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, workSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local p4, freeSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lmiui/util/HolidayUtils$HolidayData;->this$0:Lmiui/util/HolidayUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lmiui/util/HolidayUtils$HolidayData;->mYear:I

    .line 62
    iput-object p3, p0, Lmiui/util/HolidayUtils$HolidayData;->mWorkdaySet:Ljava/util/HashSet;

    .line 63
    iput-object p4, p0, Lmiui/util/HolidayUtils$HolidayData;->mFreedaySet:Ljava/util/HashSet;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lmiui/util/HolidayUtils$HolidayData;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/util/HolidayUtils$HolidayData;->mFreedaySet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/HolidayUtils$HolidayData;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lmiui/util/HolidayUtils$HolidayData;->mWorkdaySet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/util/HolidayUtils$HolidayData;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lmiui/util/HolidayUtils$HolidayData;->mYear:I

    return v0
.end method
