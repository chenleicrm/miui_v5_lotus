.class public Lmiui/maml/data/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBinder:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method protected constructor <init>(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .parameter "binder"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmiui/maml/data/Variables;)V
    .locals 2
    .parameter "name"
    .parameter "type"
    .parameter "column"
    .parameter "row"
    .parameter "var"

    .prologue
    .line 144
    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-direct {v0, p1, p2, p5}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Variables;)V

    .line 145
    .local v0, v:Lmiui/maml/data/ContentProviderBinder$Variable;
    iput-object p3, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 146
    iput p4, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    .line 147
    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v1, v0}, Lmiui/maml/data/ContentProviderBinder;->addVariable(Lmiui/maml/data/ContentProviderBinder$Variable;)V

    .line 148
    return-void
.end method

.method public setArgs([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "args"

    .prologue
    .line 127
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "columns"

    .prologue
    .line 122
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "countName"

    .prologue
    .line 137
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/maml/data/ContentProviderBinder;->createCountVar()V

    .line 139
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mName:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "order"

    .prologue
    .line 132
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    iput-object p1, v0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "where"

    .prologue
    .line 112
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    new-instance v1, Lmiui/maml/util/TextFormatter;

    invoke-direct {v1, p1}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 113
    return-object p0
.end method

.method public setWhere(Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "whereFormat"
    .parameter "whereParas"

    .prologue
    .line 117
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$Builder;->mBinder:Lmiui/maml/data/ContentProviderBinder;

    new-instance v1, Lmiui/maml/util/TextFormatter;

    invoke-direct {v1, p1, p2}, Lmiui/maml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    .line 118
    return-object p0
.end method
