.class public final Lmiui/net/ExtendedAuthToken;
.super Ljava/lang/Object;
.source "ExtendedAuthToken.java"


# static fields
.field private static final SP:Ljava/lang/String; = ","


# instance fields
.field public final authToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"
    .parameter "security"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    iput-object p2, p0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;
    .locals 1
    .parameter "authToken"
    .parameter "security"

    .prologue
    new-instance v0, Lmiui/net/ExtendedAuthToken;

    invoke-direct {v0, p0, p1}, Lmiui/net/ExtendedAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lmiui/net/ExtendedAuthToken;
    .locals 4
    .parameter "plain"

    .prologue
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, parts:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v1, Lmiui/net/ExtendedAuthToken;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lmiui/net/ExtendedAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lmiui/net/ExtendedAuthToken;

    .local v0, that:Lmiui/net/ExtendedAuthToken;
    iget-object v3, p0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    iget-object v4, v0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_6
    iget-object v3, p0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    iget-object v4, v0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toPlain()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/net/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/net/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
