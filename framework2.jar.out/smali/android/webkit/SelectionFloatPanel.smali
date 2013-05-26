.class public Landroid/webkit/SelectionFloatPanel;
.super Landroid/widget/FrameLayout;
.source "SelectionFloatPanel.java"


# static fields
.field private static sHeight:I

.field private static sWidth:I


# instance fields
.field private mBottomOffset:I

.field private mTopOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput v0, Landroid/webkit/SelectionFloatPanel;->sHeight:I

    .line 19
    sput v0, Landroid/webkit/SelectionFloatPanel;->sWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Landroid/webkit/SelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-direct {p0, p1}, Landroid/webkit/SelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/webkit/WebViewClassic;)Landroid/webkit/SelectionFloatPanel;
    .locals 11
    .parameter "context"
    .parameter "wvclassic"

    .prologue
    const/4 v8, 0x0

    .line 39
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x6030016

    invoke-virtual {v9, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/SelectionFloatPanel;

    .line 40
    .local v0, instance:Landroid/webkit/SelectionFloatPanel;
    new-instance v1, Landroid/webkit/SelectionFloatPanel$1;

    invoke-direct {v1, p1, v0}, Landroid/webkit/SelectionFloatPanel$1;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/SelectionFloatPanel;)V

    .line 49
    .local v1, l:Landroid/view/View$OnClickListener;
    const v9, 0x60b0036

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 50
    .local v4, vCopy:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v3, Landroid/webkit/SelectionFloatPanel$2;

    invoke-direct {v3, p1, v0}, Landroid/webkit/SelectionFloatPanel$2;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/SelectionFloatPanel;)V

    .line 65
    .local v3, selectAllListener:Landroid/view/View$OnClickListener;
    const v9, 0x60b003b

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 66
    .local v5, vSelectAll:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 67
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v7, Landroid/webkit/SelectionFloatPanel$3;

    invoke-direct {v7, p1, v0}, Landroid/webkit/SelectionFloatPanel$3;-><init>(Landroid/webkit/WebViewClassic;Landroid/webkit/SelectionFloatPanel;)V

    .line 81
    .local v7, webSearchListener:Landroid/view/View$OnClickListener;
    const v9, 0x60b003c

    invoke-virtual {v0, v9}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 82
    .local v6, vWebSearch:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 83
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Landroid/view/ViewGroup;

    .line 90
    .local v2, rootView:Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/webkit/SelectionFloatPanel;->setVisibility(I)V

    .line 92
    invoke-direct {v0, p0}, Landroid/webkit/SelectionFloatPanel;->initArrowOffset(Landroid/content/Context;)V

    .line 93
    .end local v0           #instance:Landroid/webkit/SelectionFloatPanel;
    .end local v2           #rootView:Landroid/view/ViewGroup;
    .end local v3           #selectAllListener:Landroid/view/View$OnClickListener;
    .end local v5           #vSelectAll:Landroid/view/View;
    .end local v6           #vWebSearch:Landroid/view/View;
    .end local v7           #webSearchListener:Landroid/view/View$OnClickListener;
    :goto_0
    return-object v0

    .line 53
    .restart local v0       #instance:Landroid/webkit/SelectionFloatPanel;
    :cond_0
    const-string/jumbo v9, "showFloat"

    const-string/jumbo v10, "no copy view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 54
    goto :goto_0

    .line 69
    .restart local v3       #selectAllListener:Landroid/view/View$OnClickListener;
    .restart local v5       #vSelectAll:Landroid/view/View;
    :cond_1
    const-string/jumbo v9, "showFloat"

    const-string/jumbo v10, "no selectAll view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 70
    goto :goto_0

    .line 85
    .restart local v6       #vWebSearch:Landroid/view/View;
    .restart local v7       #webSearchListener:Landroid/view/View$OnClickListener;
    :cond_2
    const-string/jumbo v9, "showFloat"

    const-string/jumbo v10, "no webSearch view."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 86
    goto :goto_0
.end method

.method private initArrowOffset(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/SelectionFloatPanel;->mTopOffset:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/SelectionFloatPanel;->mBottomOffset:I

    .line 36
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 99
    invoke-virtual {p0}, Landroid/webkit/SelectionFloatPanel;->getMeasuredHeight()I

    move-result v0

    sput v0, Landroid/webkit/SelectionFloatPanel;->sHeight:I

    .line 100
    invoke-virtual {p0}, Landroid/webkit/SelectionFloatPanel;->getMeasuredWidth()I

    move-result v0

    sput v0, Landroid/webkit/SelectionFloatPanel;->sWidth:I

    .line 101
    return-void
.end method

.method public showAt(IIZ)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "upOrDown"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p0, v5}, Landroid/webkit/SelectionFloatPanel;->setVisibility(I)V

    .line 113
    const v4, 0x60b0032

    invoke-virtual {p0, v4}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, upArrow:Landroid/view/View;
    const v4, 0x60b002f

    invoke-virtual {p0, v4}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, downArrow:Landroid/view/View;
    const v4, 0x60b0068

    invoke-virtual {p0, v4}, Landroid/webkit/SelectionFloatPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 116
    .local v2, panel:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 117
    :cond_0
    const-string v4, "FloatPanelView"

    const-string v5, "couldn\'t find view"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 123
    if-eqz p3, :cond_2

    move-object v0, v3

    .line 125
    .local v0, arrow:Landroid/view/View;
    :goto_1
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    int-to-float v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setX(F)V

    .line 127
    int-to-float v4, p2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setY(F)V

    .line 128
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 130
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 133
    if-eqz p3, :cond_3

    .line 134
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setX(F)V

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, p2, v4

    iget v5, p0, Landroid/webkit/SelectionFloatPanel;->mTopOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    .line 140
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .end local v0           #arrow:Landroid/view/View;
    :cond_2
    move-object v0, v1

    .line 123
    goto :goto_1

    .line 137
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

    .line 138
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, p2

    iget v5, p0, Landroid/webkit/SelectionFloatPanel;->mBottomOffset:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    goto :goto_2
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    .line 104
    sget v0, Landroid/webkit/SelectionFloatPanel;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    .line 108
    sget v0, Landroid/webkit/SelectionFloatPanel;->sWidth:I

    return v0
.end method
