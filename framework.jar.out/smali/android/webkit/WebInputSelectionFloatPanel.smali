.class public Landroid/webkit/WebInputSelectionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "WebInputSelectionFloatPanel.java"


# instance fields
.field private mBottomOffset:I

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0, p1}, Landroid/webkit/WebInputSelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Landroid/webkit/WebInputSelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/WebInputSelectionFloatPanel;
    .locals 8
    .parameter "context"
    .parameter "wvclassic"

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x6030071

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebInputSelectionFloatPanel;

    .line 37
    .local v2, instance:Landroid/webkit/WebInputSelectionFloatPanel;
    const v6, 0x60b0036

    invoke-virtual {v2, v6}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, copyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 39
    new-instance v6, Landroid/webkit/WebInputSelectionFloatPanel$1;

    invoke-direct {v6, p1, v2}, Landroid/webkit/WebInputSelectionFloatPanel$1;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v6, 0x60b0037

    invoke-virtual {v2, v6}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, cutView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 54
    new-instance v6, Landroid/webkit/WebInputSelectionFloatPanel$2;

    invoke-direct {v6, p1, v2}, Landroid/webkit/WebInputSelectionFloatPanel$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v6, 0x60b0038

    invoke-virtual {v2, v6}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 68
    .local v3, pasteView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 69
    new-instance v5, Landroid/webkit/WebInputSelectionFloatPanel$3;

    invoke-direct {v5, p1, v2}, Landroid/webkit/WebInputSelectionFloatPanel$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebInputSelectionFloatPanel;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v4, v5

    check-cast v4, Landroid/view/ViewGroup;

    .line 82
    .local v4, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/webkit/WebInputSelectionFloatPanel;->setVisibility(I)V

    .line 84
    invoke-direct {v2, p0}, Landroid/webkit/WebInputSelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 85
    .end local v1           #cutView:Landroid/view/View;
    .end local v2           #instance:Landroid/webkit/WebInputSelectionFloatPanel;
    .end local v3           #pasteView:Landroid/view/View;
    .end local v4           #rootView:Landroid/view/ViewGroup;
    :goto_0
    return-object v2

    .line 48
    .restart local v2       #instance:Landroid/webkit/WebInputSelectionFloatPanel;
    :cond_0
    const-string/jumbo v6, "show WebInputSelectionFloatPanel"

    const-string/jumbo v7, "no copy view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 49
    goto :goto_0

    .line 63
    .restart local v1       #cutView:Landroid/view/View;
    :cond_1
    const-string/jumbo v6, "show WebInputSelectionFloatPanel"

    const-string/jumbo v7, "no cut view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 64
    goto :goto_0

    .line 78
    .restart local v3       #pasteView:Landroid/view/View;
    :cond_2
    const-string/jumbo v6, "show WebInputSelectionFloatPanel"

    const-string/jumbo v7, "no paste view."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 79
    goto :goto_0
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mTopOffset:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mBottomOffset:I

    .line 33
    return-void
.end method


# virtual methods
.method public showAt(IIZ)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "upOrDown"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 89
    invoke-virtual {p0, v5}, Landroid/webkit/WebInputSelectionFloatPanel;->setVisibility(I)V

    .line 90
    const v4, 0x60b0032

    invoke-virtual {p0, v4}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 91
    .local v3, upArrow:Landroid/view/View;
    const v4, 0x60b002f

    invoke-virtual {p0, v4}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, downArrow:Landroid/view/View;
    const v4, 0x60b0068

    invoke-virtual {p0, v4}, Landroid/webkit/WebInputSelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 93
    .local v2, panel:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 94
    :cond_0
    const-string/jumbo v4, "show WebInputSelectionFloatPanel"

    const-string v5, "couldn\'t find view"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    if-eqz p3, :cond_2

    move-object v0, v3

    .line 102
    .local v0, arrow:Landroid/view/View;
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    int-to-float v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setX(F)V

    .line 104
    int-to-float v4, p2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 105
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 107
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 110
    if-eqz p3, :cond_3

    .line 111
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p2, v4

    iget v5, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mTopOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    .line 117
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .end local v0           #arrow:Landroid/view/View;
    :cond_2
    move-object v0, v1

    .line 100
    goto :goto_1

    .line 114
    .restart local v0       #arrow:Landroid/view/View;
    :cond_3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 115
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p2

    iget v5, p0, Landroid/webkit/WebInputSelectionFloatPanel;->mBottomOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    goto :goto_2
.end method
