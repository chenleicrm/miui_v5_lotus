.class Lmiui/push/XMPPError$ErrorSpecification;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorSpecification"
.end annotation


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/push/XMPPError$Condition;",
            "Lmiui/push/XMPPError$ErrorSpecification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private condition:Lmiui/push/XMPPError$Condition;

.field private type:Lmiui/push/XMPPError$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lmiui/push/XMPPError$ErrorSpecification;->errorSpecifications()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lmiui/push/XMPPError$ErrorSpecification;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V
    .locals 0
    .parameter "condition"
    .parameter "type"
    .parameter "code"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lmiui/push/XMPPError$ErrorSpecification;->code:I

    iput-object p2, p0, Lmiui/push/XMPPError$ErrorSpecification;->type:Lmiui/push/XMPPError$Type;

    iput-object p1, p0, Lmiui/push/XMPPError$ErrorSpecification;->condition:Lmiui/push/XMPPError$Condition;

    return-void
.end method

.method private static errorSpecifications()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lmiui/push/XMPPError$Condition;",
            "Lmiui/push/XMPPError$ErrorSpecification;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x197

    const/16 v9, 0x12e

    const/16 v8, 0x1f4

    const/16 v7, 0x194

    const/16 v6, 0x190

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .local v0, instances:Ljava/util/Map;,"Ljava/util/Map<Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$ErrorSpecification;>;"
    sget-object v1, Lmiui/push/XMPPError$Condition;->interna_server_error:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->interna_server_error:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v8}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->forbidden:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->forbidden:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x193

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->bad_request:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->bad_request:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v6}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->item_not_found:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->item_not_found:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v7}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->conflict:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->conflict:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x199

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->feature_not_implemented:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->feature_not_implemented:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x1f5

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->gone:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->gone:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v9}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->jid_malformed:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->jid_malformed:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v6}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->no_acceptable:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->no_acceptable:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x196

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->not_allowed:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->not_allowed:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x195

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->not_authorized:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->not_authorized:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x191

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->payment_required:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->payment_required:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x192

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->recipient_unavailable:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->recipient_unavailable:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v7}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->redirect:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->redirect:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->MODIFY:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v9}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->registration_required:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->registration_required:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v10}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->remote_server_not_found:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->remote_server_not_found:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v7}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->remote_server_timeout:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->remote_server_timeout:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x1f8

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->remote_server_error:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->remote_server_error:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x1f6

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->resource_constraint:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->resource_constraint:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v8}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->service_unavailable:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->service_unavailable:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x1f7

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->subscription_required:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->subscription_required:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->AUTH:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v10}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->undefined_condition:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->undefined_condition:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v8}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->unexpected_request:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->unexpected_request:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->WAIT:Lmiui/push/XMPPError$Type;

    invoke-direct {v2, v3, v4, v6}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/push/XMPPError$Condition;->request_timeout:Lmiui/push/XMPPError$Condition;

    new-instance v2, Lmiui/push/XMPPError$ErrorSpecification;

    sget-object v3, Lmiui/push/XMPPError$Condition;->request_timeout:Lmiui/push/XMPPError$Condition;

    sget-object v4, Lmiui/push/XMPPError$Type;->CANCEL:Lmiui/push/XMPPError$Type;

    const/16 v5, 0x198

    invoke-direct {v2, v3, v4, v5}, Lmiui/push/XMPPError$ErrorSpecification;-><init>(Lmiui/push/XMPPError$Condition;Lmiui/push/XMPPError$Type;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected static specFor(Lmiui/push/XMPPError$Condition;)Lmiui/push/XMPPError$ErrorSpecification;
    .locals 1
    .parameter "condition"

    .prologue
    sget-object v0, Lmiui/push/XMPPError$ErrorSpecification;->instances:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/XMPPError$ErrorSpecification;

    return-object v0
.end method


# virtual methods
.method protected getCode()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/push/XMPPError$ErrorSpecification;->code:I

    return v0
.end method

.method protected getCondition()Lmiui/push/XMPPError$Condition;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/XMPPError$ErrorSpecification;->condition:Lmiui/push/XMPPError$Condition;

    return-object v0
.end method

.method protected getType()Lmiui/push/XMPPError$Type;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/XMPPError$ErrorSpecification;->type:Lmiui/push/XMPPError$Type;

    return-object v0
.end method
