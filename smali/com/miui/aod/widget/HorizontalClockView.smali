.class public Lcom/miui/aod/widget/HorizontalClockView;
.super Landroid/widget/FrameLayout;
.source "HorizontalClockView.java"


# instance fields
.field protected mClockHorizontal:Landroid/widget/TextView;

.field private mClockPaddingTop:I

.field private mClockStyle:I

.field private mDateLunarView:Landroid/widget/TextView;

.field private mDateMarginBottom:I

.field private mDateMarginTop:I

.field private mDateStyle:I

.field protected mDateView:Landroid/widget/TextView;

.field private mGravity:I

.field private mHorizontalStyle:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public init(II)V
    .locals 4

    iput p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mSize:I

    iput p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mGravity:I

    iget p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mGravity:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mSize:I

    const v2, 0x7f0c00d7

    if-nez v1, :cond_2

    iput v2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockStyle:I

    const v1, 0x7f0c00b7

    iput v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateStyle:I

    if-eqz p1, :cond_1

    const p1, 0x7f0c00bd

    goto :goto_1

    :cond_1
    const p1, 0x7f0c00bf

    :goto_1
    iput p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mHorizontalStyle:I

    goto :goto_5

    :cond_2
    iget v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mSize:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const v1, 0x7f0c00d9

    iput v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockStyle:I

    const v1, 0x7f0c00b8

    iput v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateStyle:I

    if-eqz p1, :cond_3

    const p1, 0x7f0c00be

    goto :goto_2

    :cond_3
    const p1, 0x7f0c00c0

    :goto_2
    iput p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mHorizontalStyle:I

    goto :goto_5

    :cond_4
    iput v2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockStyle:I

    if-eqz p1, :cond_5

    const v1, 0x7f0c00b5

    goto :goto_3

    :cond_5
    const v1, 0x7f0c00b4

    :goto_3
    iput v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateStyle:I

    if-eqz p1, :cond_6

    const p1, 0x7f0c00bc

    goto :goto_4

    :cond_6
    const p1, 0x7f0c00bb

    :goto_4
    iput p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mHorizontalStyle:I

    :goto_5
    invoke-virtual {p0}, Lcom/miui/aod/widget/HorizontalClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "fonts/MitypeMonoRoundedNormalCondensed.otf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    const v1, 0x7f1100bf

    invoke-virtual {p0, v1}, Lcom/miui/aod/widget/HorizontalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f1100c0

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/HorizontalClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateStyle:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const p1, 0x7f1100c1

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/HorizontalClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateLunarView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateLunarView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateStyle:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/HorizontalClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mHorizontalStyle:I

    sget-object v2, Lcom/miui/aod/R$styleable;->horizontalClock:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockPaddingTop:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateMarginTop:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateMarginBottom:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateMarginTop:I

    iget v1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateMarginBottom:I

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateLunarView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateMarginBottom:I

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/miui/aod/widget/HorizontalClockView;->mDateLunarView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget p0, p0, Lcom/miui/aod/widget/HorizontalClockView;->mClockPaddingTop:I

    invoke-virtual {p1, v0, p0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
