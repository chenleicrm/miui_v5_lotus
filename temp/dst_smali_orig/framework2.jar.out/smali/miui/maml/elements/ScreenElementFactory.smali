.class public Lmiui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    .locals 2
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/maml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .local v0, tag:Ljava/lang/String;
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmiui/maml/elements/TimepanelScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_1
    const-string v1, "ImageNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lmiui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_2
    const-string v1, "Text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lmiui/maml/elements/TextScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_3
    const-string v1, "DateTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_4
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_5
    const-string v1, "MusicControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_6
    const-string v1, "ElementGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_8
    const-string v1, "Var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lmiui/maml/elements/VariableElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_9
    const-string v1, "VarArray"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "SpectrumVisualizer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "Slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "FramerateController"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lmiui/maml/elements/FramerateController;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "VirtualScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lmiui/maml/elements/VirtualScreen;

    invoke-direct {v1, p1, p2}, Lmiui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
