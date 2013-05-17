.class Lcom/android/internal/telephony/cat/SelectItemParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field loadTitleIcon:Z

.field menu:Lcom/android/internal/telephony/cat/Menu;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V
    .locals 1
    .parameter "cmdDet"
    .parameter "menu"
    .parameter "loadTitleIcon"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->loadTitleIcon:Z

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    .line 170
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->loadTitleIcon:Z

    .line 171
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 4
    .parameter "icon"

    .prologue
    const/4 v2, 0x1

    .line 174
    iget-object v3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_4

    .line 175
    if-eqz p1, :cond_3

    .line 176
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->loadTitleIcon:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iput-object p1, v3, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Item;

    .line 180
    .local v1, item:Lcom/android/internal/telephony/cat/Item;
    iget-object v3, v1, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 183
    iput-object p1, v1, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 189
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/internal/telephony/cat/Item;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->menu:Lcom/android/internal/telephony/cat/Menu;

    iput-boolean v2, v3, Lcom/android/internal/telephony/cat/Menu;->iconLoadingFailed:Z

    .line 192
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
