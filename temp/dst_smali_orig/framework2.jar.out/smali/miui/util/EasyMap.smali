.class public Lmiui/util/EasyMap;
.super Ljava/util/HashMap;
.source "EasyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, this:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<TK;TV;>;"
    .local p1, k:Ljava/lang/Object;,"TK;"
    .local p2, v:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lmiui/util/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lmiui/util/EasyMap;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lmiui/util/EasyMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/util/EasyMap;,"Lmiui/util/EasyMap<TK;TV;>;"
    .local p1, k:Ljava/lang/Object;,"TK;"
    .local p2, v:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Lmiui/util/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
