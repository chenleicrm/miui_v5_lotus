.class public Lmiui/provider/dataupdate/MarkedNumberItem;
.super Ljava/lang/Object;
.source "MarkedNumberItem.java"


# instance fields
.field private mAddr:Ljava/lang/String;

.field private mCatId:I

.field private mCatTitle:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCoord:Ljava/lang/String;

.field private mCount:I

.field private mIsSp:Z

.field private mNumber:Ljava/lang/String;

.field private mProvider:I

.field private mProviderTag:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "catId"
    .parameter "catTitle"
    .parameter "count"
    .parameter "provider"
    .parameter "providerTag"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mNumber:Ljava/lang/String;

    iput p2, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCatId:I

    iput-object p3, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCatTitle:Ljava/lang/String;

    iput p4, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCount:I

    iput p5, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProvider:I

    iput-object p6, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProviderTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mIsSp:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "number"
    .parameter "name"
    .parameter "province"
    .parameter "city"
    .parameter "addr"
    .parameter "type"
    .parameter "coord"
    .parameter "providerTag"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mNumber:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCatId:I

    iput-object p2, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCatTitle:Ljava/lang/String;

    iput-object p3, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProvince:Ljava/lang/String;

    iput-object p4, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCity:Ljava/lang/String;

    iput-object p5, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mAddr:Ljava/lang/String;

    iput-object p6, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mType:Ljava/lang/String;

    iput-object p7, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCoord:Ljava/lang/String;

    const/16 v0, 0x67

    iput v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProvider:I

    iput-object p8, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProviderTag:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mIsSp:Z

    return-void
.end method


# virtual methods
.method public getAddr()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCatId:I

    return v0
.end method

.method public getCatTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCatTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProvider:I

    return v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProviderTag:Ljava/lang/String;

    return-object v0
.end method

.method public isCustom()Z
    .locals 2

    .prologue
    iget v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mProvider:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSp()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/provider/dataupdate/MarkedNumberItem;->mIsSp:Z

    return v0
.end method
