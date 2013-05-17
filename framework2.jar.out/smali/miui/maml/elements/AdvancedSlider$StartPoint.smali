.class Lmiui/maml/elements/AdvancedSlider$StartPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 602
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    .line 603
    const-string v0, "StartPoint"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 604
    return-void
.end method


# virtual methods
.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .parameter "pre"
    .parameter "s"

    .prologue
    .line 608
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 612
    :cond_0
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$1;->$SwitchMap$miui$maml$elements$AdvancedSlider$State:[I

    invoke-virtual {p2}, Lmiui/maml/elements/AdvancedSlider$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 622
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    goto :goto_0

    .line 614
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mNormalSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :pswitch_1
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    #getter for: Lmiui/maml/elements/AdvancedSlider;->mPressed:Z
    invoke-static {v0}, Lmiui/maml/elements/AdvancedSlider;->access$500(Lmiui/maml/elements/AdvancedSlider;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$StartPoint;->mPressedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)V

    goto :goto_1

    .line 612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
