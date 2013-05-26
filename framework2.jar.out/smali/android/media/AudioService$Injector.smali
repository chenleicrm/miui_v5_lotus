.class Landroid/media/AudioService$Injector;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$Injector$ResolveInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method static adjustDirection(Lmiui/view/VolumePanel;II)I
    .locals 1
    .parameter "volumePanel"
    .parameter "flags"
    .parameter "direction"

    .prologue
    .line 109
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 p2, 0x0

    .line 114
    :cond_0
    return p2
.end method

.method static getPendingIntent(Landroid/media/AudioService$Injector$ResolveInfo;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "info"

    .prologue
    .line 210
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$Injector$ResolveInfo;->mComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/media/AudioService$Injector$ResolveInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static resolveReceiver(Landroid/content/Context;Ljava/util/Stack;Landroid/content/Intent;)Landroid/media/AudioService$Injector$ResolveInfo;
    .locals 14
    .parameter "context"
    .parameter
    .parameter "keyIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Landroid/media/AudioService$Injector$ResolveInfo;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, rcs:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 153
    const/4 v11, 0x0

    .line 200
    :goto_0
    return-object v11

    .line 156
    :cond_0
    invoke-static {p0}, Lmiui/util/ActivityManagerHelper;->getPackageNameListOrderByReceivePriority(Landroid/content/Context;)Lmiui/util/ActivityManagerHelper$PackageNameList;

    move-result-object v7

    .line 158
    .local v7, packageNames:Lmiui/util/ActivityManagerHelper$PackageNameList;
    if-eqz v7, :cond_1

    iget-object v11, v7, Lmiui/util/ActivityManagerHelper$PackageNameList;->mOrderList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 159
    :cond_1
    new-instance v12, Landroid/media/AudioService$Injector$ResolveInfo;

    const/4 v13, 0x0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v11, v11, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v12, v13, v11}, Landroid/media/AudioService$Injector$ResolveInfo;-><init>(Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    move-object v11, v12

    goto :goto_0

    .line 162
    :cond_2
    const/4 v9, 0x0

    .line 163
    .local v9, pi:Landroid/app/PendingIntent;
    const/4 v0, 0x0

    .line 165
    .local v0, component:Landroid/content/ComponentName;
    const v10, 0x7fffffff

    .line 166
    .local v10, priority:I
    const/4 v2, 0x0

    .line 167
    .local v2, i:I
    iget-object v11, v7, Lmiui/util/ActivityManagerHelper$PackageNameList;->mOrderList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 168
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 169
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 170
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 171
    .local v1, entry:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v4, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    .line 172
    .local v4, intent:Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 173
    move-object v9, v4

    .line 174
    move v10, v2

    .line 179
    .end local v1           #entry:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v4           #intent:Landroid/app/PendingIntent;
    :cond_4
    if-eqz v9, :cond_7

    .line 186
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    .end local v6           #name:Ljava/lang/String;
    :cond_5
    iget-object v11, v7, Lmiui/util/ActivityManagerHelper$PackageNameList;->mOrderList:Ljava/util/List;

    invoke-static {p0, v11, v10}, Lmiui/util/ActivityManagerHelper;->getMediaButtonReceiver(Landroid/content/Context;Ljava/util/List;I)Lmiui/util/ActivityManagerHelper$PriorityComponent;

    move-result-object v8

    .line 188
    .local v8, pc:Lmiui/util/ActivityManagerHelper$PriorityComponent;
    if-eqz v8, :cond_9

    .line 190
    const/4 v9, 0x0

    .line 192
    iget v11, v8, Lmiui/util/ActivityManagerHelper$PriorityComponent;->mPriority:I

    iget v12, v7, Lmiui/util/ActivityManagerHelper$PackageNameList;->mPlayingCount:I

    if-ge v11, v12, :cond_8

    iget-object v0, v8, Lmiui/util/ActivityManagerHelper$PriorityComponent;->mComponent:Landroid/content/ComponentName;

    .line 197
    :cond_6
    :goto_2
    const-string v12, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PendingIntent "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    :goto_3
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " ComponentName "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v0, :cond_b

    move-object v11, v0

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v11, Landroid/media/AudioService$Injector$ResolveInfo;

    invoke-direct {v11, v0, v9}, Landroid/media/AudioService$Injector$ResolveInfo;-><init>(Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 183
    .end local v8           #pc:Lmiui/util/ActivityManagerHelper$PriorityComponent;
    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    .restart local v6       #name:Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto :goto_1

    .line 192
    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    .end local v6           #name:Ljava/lang/String;
    .restart local v8       #pc:Lmiui/util/ActivityManagerHelper$PriorityComponent;
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 193
    :cond_9
    if-nez v9, :cond_6

    .line 194
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v9, v11, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    goto :goto_2

    .line 197
    :cond_a
    const-string v11, " null, "

    goto :goto_3

    :cond_b
    const-string v11, " null"

    goto :goto_4
.end method

.method static setComponentName(Landroid/content/Intent;Landroid/media/AudioService$Injector$ResolveInfo;)V
    .locals 1
    .parameter "keyIntent"
    .parameter "info"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/media/AudioService$Injector$ResolveInfo;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p1, Landroid/media/AudioService$Injector$ResolveInfo;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 207
    :cond_0
    return-void
.end method
