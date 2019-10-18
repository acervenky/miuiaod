.class public Lcom/miui/aod/widget/OnelineClockView;
.super Landroid/widget/FrameLayout;
.source "OnelineClockView.java"


# instance fields
.field private mClockHorizontal:Landroid/widget/TextView;

.field private mClockPadddingEnd:I

.field private mDate:Landroid/widget/TextView;

.field private mDateLunar:Landroid/widget/TextView;

.field private mDateStyle:I

.field private mOnelineStyle:I

.field private mPaddingTop:I

.field private mSize:I

.field private mTimePaddingBottom:I

.field private mTimeStyle:I


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


# virtual methods
.method public setSize(I)V
    .locals 4

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mSize:I

    iget p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mSize:I

    const/4 v0, 0x2

    if-nez p1, :cond_0

    const p1, 0x7f0c00b7

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateStyle:I

    const p1, 0x7f0c00c3

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mOnelineStyle:I

    const p1, 0x7f0c00c6

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mTimeStyle:I

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mSize:I

    if-eq p1, v0, :cond_3

    iget p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mSize:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mSize:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const p1, 0x7f0c00b6

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateStyle:I

    const p1, 0x7f0c00c1

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mOnelineStyle:I

    const p1, 0x7f0c00c5

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mTimeStyle:I

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_0
    const p1, 0x7f0c00b8

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateStyle:I

    const p1, 0x7f0c00c4

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mOnelineStyle:I

    const p1, 0x7f0c00c7

    iput p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mTimeStyle:I

    :goto_1
    const p1, 0x7f1100bf

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/OnelineClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mClockHorizontal:Landroid/widget/TextView;

    const p1, 0x7f1100c0

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/OnelineClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDate:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/OnelineClockView;->mTimeStyle:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/OnelineClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "fonts/MitypeRoundedNormal.otf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/aod/widget/OnelineClockView;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDate:Landroid/widget/TextView;

    iget v1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateStyle:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f1100c1

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/OnelineClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateLunar:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateLunar:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateStyle:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mDateLunar:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/OnelineClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/miui/aod/widget/OnelineClockView;->mOnelineStyle:I

    sget-object v2, Lcom/miui/aod/R$styleable;->oneline:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/aod/widget/OnelineClockView;->mPaddingTop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/miui/aod/widget/OnelineClockView;->mClockPadddingEnd:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/aod/widget/OnelineClockView;->mTimePaddingBottom:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mPaddingTop:I

    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/miui/aod/widget/OnelineClockView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/aod/widget/OnelineClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget p0, p0, Lcom/miui/aod/widget/OnelineClockView;->mTimePaddingBottom:I

    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
