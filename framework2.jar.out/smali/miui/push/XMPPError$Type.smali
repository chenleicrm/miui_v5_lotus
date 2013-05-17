.class public final enum Lmiui/push/XMPPError$Type;
.super Ljava/lang/Enum;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/push/XMPPError$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/push/XMPPError$Type;

.field public static final enum AUTH:Lmiui/push/XMPPError$Type;

.field public static final enum CANCEL:Lmiui/push/XMPPError$Type;

.field public static final enum CLIENT:Lmiui/push/XMPPError$Type;

.field public static final enum CONTINUE:Lmiui/push/XMPPError$Type;

.field public static final enum MODIFY:Lmiui/push/XMPPError$Type;

.field public static final enum WAIT:Lmiui/push/XMPPError$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    new-instance v0, Lmiui/push/XMPPError$Type;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v3}, Lmiui/push/XMPPError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    .line 473
    new-instance v0, Lmiui/push/XMPPError$Type;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lmiui/push/XMPPError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    .line 474
    new-instance v0, Lmiui/push/XMPPError$Type;

    const-string v1, "MODIFY"

    invoke-direct {v0, v1, v5}, Lmiui/push/XMPPError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    .line 475
    new-instance v0, Lmiui/push/XMPPError$Type;

    const-string v1, "AUTH"

    invoke-direct {v0, v1, v6}, Lmiui/push/XMPPError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    .line 476
    new-instance v0, Lmiui/push/XMPPError$Type;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v7}, Lmiui/push/XMPPError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/XMPPError$Type;->CONTINUE:Lmiui/push/XMPPError$Type;

    .line 477
    new-instance v0, Lmiui/push/XMPPError$Type;

    const-string v1, "CLIENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/push/XMPPError$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/push/XMPPError$Type;->CLIENT:Lmiui/push/XMPPError$Type;

    .line 471
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/push/XMPPError$Type;

    sget-object v1, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/push/XMPPError$Type;->CONTINUE:Lmiui/push/XMPPError$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/push/XMPPError$Type;->CLIENT:Lmiui/push/XMPPError$Type;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/push/XMPPError$Type;->$VALUES:[Lmiui/push/XMPPError$Type;

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
    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/push/XMPPError$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 471
    const-class v0, Lmiui/push/XMPPError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/push/XMPPError$Type;

    return-object v0
.end method

.method public static values()[Lmiui/push/XMPPError$Type;
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lmiui/push/XMPPError$Type;->$VALUES:[Lmiui/push/XMPPError$Type;

    invoke-virtual {v0}, [Lmiui/push/XMPPError$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/XMPPError$Type;

    return-object v0
.end method
