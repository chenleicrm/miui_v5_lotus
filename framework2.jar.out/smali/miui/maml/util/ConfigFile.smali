.class public Lmiui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ConfigFile$OnLoadElementListener;,
        Lmiui/maml/util/ConfigFile$Gadget;,
        Lmiui/maml/util/ConfigFile$Variable;
    }
.end annotation


# static fields
.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 240
    const-string v0, "Gadgets"

    const-string v1, "Gadget"

    new-instance v2, Lmiui/maml/util/ConfigFile$3;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$3;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 250
    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 6
    .parameter "root"
    .parameter "listTag"
    .parameter "itemTag"
    .parameter "listener"

    .prologue
    .line 257
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 258
    if-nez p1, :cond_1

    .line 268
    :cond_0
    return-void

    .line 260
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 261
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 262
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 263
    .local v3, node:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 264
    check-cast v2, Lorg/w3c/dom/Element;

    .line 265
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {p4, v2}, Lmiui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 261
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 231
    const-string v0, "Tasks"

    const-string v1, "Intent"

    new-instance v2, Lmiui/maml/util/ConfigFile$2;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$2;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 237
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 222
    const-string v0, "Variables"

    const-string v1, "Variable"

    new-instance v2, Lmiui/maml/util/ConfigFile$1;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$1;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 228
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    :cond_2
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 320
    .local v0, item:Lmiui/maml/util/ConfigFile$Variable;
    if-nez v0, :cond_3

    .line 321
    new-instance v0, Lmiui/maml/util/ConfigFile$Variable;

    .end local v0           #item:Lmiui/maml/util/ConfigFile$Variable;
    invoke-direct {v0}, Lmiui/maml/util/ConfigFile$Variable;-><init>()V

    .line 322
    .restart local v0       #item:Lmiui/maml/util/ConfigFile$Variable;
    iput-object p1, v0, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_3
    iput-object p3, v0, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 326
    iput-object p2, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method private writeGadgets(Ljava/io/FileWriter;)V
    .locals 9
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 176
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 191
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v4, "Gadgets"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 181
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "path"

    aput-object v4, v2, v6

    const-string v4, "x"

    aput-object v4, v2, v5

    const-string v4, "y"

    aput-object v4, v2, v7

    .line 184
    .local v2, names:[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/ConfigFile$Gadget;

    .line 185
    .local v1, item:Lmiui/maml/util/ConfigFile$Gadget;
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v4, v3, v6

    iget v4, v1, Lmiui/maml/util/ConfigFile$Gadget;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v1, Lmiui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 188
    .local v3, values:[Ljava/lang/String;
    const-string v4, "Gadget"

    invoke-static {p1, v4, v2, v3, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 190
    .end local v1           #item:Lmiui/maml/util/ConfigFile$Gadget;
    .end local v3           #values:[Ljava/lang/String;
    :cond_1
    const-string v4, "Gadgets"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V
    .locals 1
    .parameter "fw"
    .parameter "tag"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 195
    if-eqz p2, :cond_0

    .line 196
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 198
    const-string v0, ">\n"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "fw"
    .parameter "tag"
    .parameter "names"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 203
    return-void
.end method

.method private static writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .parameter "fw"
    .parameter "tag"
    .parameter "names"
    .parameter "values"
    .parameter "ignoreEmptyValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v1, "<"

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 210
    if-eqz p4, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 213
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 214
    const-string v1, "=\""

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 215
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 216
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_1
    const-string v1, "/>\n"

    invoke-virtual {p0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private writeTasks(Ljava/io/FileWriter;)V
    .locals 11
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 157
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 173
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v4, "Tasks"

    invoke-static {p1, v4, v7}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 162
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    sget-object v4, Lmiui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v4, v2, v7

    sget-object v4, Lmiui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    aput-object v4, v2, v6

    sget-object v4, Lmiui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    aput-object v4, v2, v8

    sget-object v4, Lmiui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    aput-object v4, v2, v9

    sget-object v4, Lmiui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    aput-object v4, v2, v10

    const/4 v4, 0x5

    sget-object v5, Lmiui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    sget-object v5, Lmiui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 166
    .local v2, names:[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/Task;

    .line 167
    .local v1, item:Lmiui/maml/util/Task;
    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v1, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v1, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v1, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, v1, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    aput-object v4, v3, v10

    const/4 v4, 0x5

    iget-object v5, v1, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v1, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 170
    .local v3, values:[Ljava/lang/String;
    const-string v4, "Intent"

    invoke-static {p1, v4, v2, v3, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 172
    .end local v1           #item:Lmiui/maml/util/Task;
    .end local v3           #values:[Ljava/lang/String;
    :cond_1
    const-string v4, "Tasks"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private writeVariables(Ljava/io/FileWriter;)V
    .locals 9
    .parameter "fw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 154
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v4, "Variables"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 144
    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v5

    const-string v4, "type"

    aput-object v4, v2, v6

    const-string v4, "value"

    aput-object v4, v2, v7

    .line 147
    .local v2, names:[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/util/ConfigFile$Variable;

    .line 148
    .local v1, item:Lmiui/maml/util/ConfigFile$Variable;
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v1, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 151
    .local v3, values:[Ljava/lang/String;
    const-string v4, "Variable"

    invoke-static {p1, v4, v2, v3}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 153
    .end local v1           #item:Lmiui/maml/util/ConfigFile$Variable;
    .end local v3           #values:[Ljava/lang/String;
    :cond_1
    const-string v4, "Variables"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .parameter "id"

    .prologue
    .line 311
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 271
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 272
    .local v0, item:Lmiui/maml/util/ConfigFile$Variable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v6, 0x0

    .line 107
    iput-object p1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 108
    iget-object v7, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 109
    iget-object v7, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 110
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 113
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 114
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 115
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 116
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 117
    .local v5, root:Lorg/w3c/dom/Element;
    if-nez v5, :cond_1

    .line 135
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return v6

    .line 119
    .restart local v0       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2       #doc:Lorg/w3c/dom/Document;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #root:Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Config"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    invoke-direct {p0, v5}, Lmiui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 122
    invoke-direct {p0, v5}, Lmiui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 123
    invoke-direct {p0, v5}, Lmiui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 124
    const/4 v6, 0x1

    goto :goto_0

    .line 126
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    .line 127
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    .line 129
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 131
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 133
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method public moveGadget(Lmiui/maml/util/ConfigFile$Gadget;I)V
    .locals 1
    .parameter "g"
    .parameter "position"

    .prologue
    .line 305
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 308
    :cond_0
    return-void
.end method

.method public putGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .locals 1
    .parameter "g"

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 284
    invoke-static {p2, p3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 280
    const-string v0, "number"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 276
    const-string v0, "string"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public putTask(Lmiui/maml/util/Task;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 288
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .locals 1
    .parameter "g"

    .prologue
    .line 300
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public save()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/maml/util/ConfigFile;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 7
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, fw:Ljava/io/FileWriter;
    const-string v4, "Config"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 92
    invoke-direct {p0, v1}, Lmiui/maml/util/ConfigFile;->writeVariables(Ljava/io/FileWriter;)V

    .line 93
    invoke-direct {p0, v1}, Lmiui/maml/util/ConfigFile;->writeTasks(Ljava/io/FileWriter;)V

    .line 94
    invoke-direct {p0, v1}, Lmiui/maml/util/ConfigFile;->writeGadgets(Ljava/io/FileWriter;)V

    .line 95
    const-string v4, "Config"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/io/FileWriter;Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 97
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 98
    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {p1, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1           #fw:Ljava/io/FileWriter;
    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    .line 101
    goto :goto_0
.end method
