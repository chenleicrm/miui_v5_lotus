.class final Lmiui/telephony/CallerInfo$1;
.super Landroid/os/AsyncTask;
.source "CallerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CallerInfo;->doAntiSpamQuery(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)Lcom/android/internal/telephony/CallerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field provider:I

.field title:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$previousResult:Lcom/android/internal/telephony/CallerInfo;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/telephony/CallerInfo$1;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iput-object p4, p0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput p5, p0, Lmiui/telephony/CallerInfo$1;->val$token:I

    iput-object p6, p0, Lmiui/telephony/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lmiui/telephony/CallerInfo$1;->title:Ljava/lang/String;

    .line 155
    const/16 v0, 0x65

    iput v0, p0, Lmiui/telephony/CallerInfo$1;->provider:I

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lmiui/telephony/CallerInfo$1;->count:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/telephony/CallerInfo$1;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    .line 159
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 161
    .local v0, cached:Z
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1;->val$number:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/provider/dataupdate/AntiSpamUtils;->queryFromCloud(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/dataupdate/MarkedNumberItem;

    move-result-object v1

    .line 162
    .local v1, item:Lmiui/provider/dataupdate/MarkedNumberItem;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getProvider()I

    move-result v2

    iput v2, p0, Lmiui/telephony/CallerInfo$1;->provider:I

    .line 164
    invoke-virtual {v1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCount()I

    move-result v2

    iput v2, p0, Lmiui/telephony/CallerInfo$1;->count:I

    .line 165
    invoke-virtual {v1}, Lmiui/provider/dataupdate/MarkedNumberItem;->getCatTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/telephony/CallerInfo$1;->title:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget v3, p0, Lmiui/telephony/CallerInfo$1;->provider:I

    iput v3, v2, Lmiui/telephony/ExtraCallerInfo;->provider:I

    .line 167
    iget v2, p0, Lmiui/telephony/CallerInfo$1;->provider:I

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    .line 169
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iput-boolean v4, v2, Lmiui/telephony/ExtraCallerInfo;->isSpNumber:Z

    .line 170
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1;->title:Ljava/lang/String;

    iput-object v3, v2, Lmiui/telephony/ExtraCallerInfo;->displayName:Ljava/lang/String;

    .line 179
    :goto_0
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lmiui/provider/dataupdate/AntiSpamUtils;->saveQueryResult(Landroid/content/Context;Lmiui/provider/dataupdate/MarkedNumberItem;Z)V

    .line 181
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 173
    :cond_1
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iput-boolean v4, v2, Lmiui/telephony/ExtraCallerInfo;->isMardked:Z

    .line 174
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1;->title:Ljava/lang/String;

    iput-object v3, v2, Lmiui/telephony/ExtraCallerInfo;->markTitle:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->extra:Lmiui/telephony/ExtraCallerInfo;

    iget v3, p0, Lmiui/telephony/CallerInfo$1;->count:I

    iput v3, v2, Lmiui/telephony/ExtraCallerInfo;->markCount:I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/telephony/CallerInfo$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lmiui/telephony/CallerInfo$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lmiui/telephony/CallerInfo$1;->val$token:I

    iget-object v2, p0, Lmiui/telephony/CallerInfo$1;->val$cookie:Ljava/lang/Object;

    iget-object v3, p0, Lmiui/telephony/CallerInfo$1;->val$previousResult:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 189
    :cond_0
    return-void
.end method
