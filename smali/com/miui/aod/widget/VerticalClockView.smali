.class public Lcom/miui/aod/widget/VerticalClockView;
.super Landroid/widget/FrameLayout;
.source "VerticalClockView.java"


# instance fields
.field private mClockStyle:I

.field private mDateLunar:Landroid/widget/TextView;

.field private mDateMarginBottom:I

.field private mDateStyle:I

.field private mDateView:Landroid/widget/TextView;

.field private mHourPaddingTop:I

.field private mHourTextView:Landroid/widget/TextView;

.field private mMinuteMarginTop:I

.field private mMinuteTextView:Landroid/widget/TextView;

.field private mSize:I

.field private mVerticalStyle:I


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
.method public setSize(I)V
    .locals 4

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mSize:I

    iget p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mSize:I

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const p1, 0x7f0c00da

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mClockStyle:I

    const p1, 0x7f0c00b7

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateStyle:I

    const p1, 0x7f0c00d0

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mVerticalStyle:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mSize:I

    const v1, 0x7f0c00b8

    if-ne p1, v0, :cond_1

    const p1, 0x7f0c00db

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mClockStyle:I

    iput v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateStyle:I

    const p1, 0x7f0c00d1

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mVerticalStyle:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mSize:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const p1, 0x7f0c00dc

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mClockStyle:I

    iput v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateStyle:I

    const p1, 0x7f0c00d2

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mVerticalStyle:I

    goto :goto_0

    :cond_2
    const p1, 0x7f0c00dd

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mClockStyle:I

    const p1, 0x7f0c00ba

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateStyle:I

    const p1, 0x7f0c00cf

    iput p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mVerticalStyle:I

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/VerticalClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "fonts/MitypeMonoRoundedNormalCondensed.otf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/aod/widget/VerticalClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/miui/aod/widget/VerticalClockView;->mVerticalStyle:I

    sget-object v3, Lcom/miui/aod/R$styleable;->verticalClock:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/aod/widget/VerticalClockView;->mHourPaddingTop:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteMarginTop:I

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateMarginBottom:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f1100c7

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/VerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mHourTextView:Landroid/widget/TextView;

    const v0, 0x7f1100c8

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/VerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mHourTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mClockStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mHourTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mHourTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mHourPaddingTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mClockStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteMarginTop:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mMinuteTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f1100c0

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/VerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateView:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateMarginBottom:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f1100c1

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/VerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateLunar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateLunar:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateStyle:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateMarginBottom:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/miui/aod/widget/VerticalClockView;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
