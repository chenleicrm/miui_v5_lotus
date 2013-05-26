.class Landroid/view/inputmethod/InputMethodManager$Injector;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleBindLose(Landroid/view/inputmethod/InputMethodManager;Lcom/android/internal/view/InputBindResult;)V
    .locals 2
    .parameter "inputMethodManager"
    .parameter "res"

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const-string v0, "InputMethodManager"

    const-string v1, "Bind error!finishInputLocked and closeCurrentInput"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 208
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    .line 210
    :cond_0
    return-void
.end method
