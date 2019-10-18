.class public Lcom/miui/aod/widget/SunClockView;
.super Landroid/widget/FrameLayout;
.source "SunClockView.java"


# instance fields
.field private mClockHorizontal:Landroid/widget/TextView;

.field private mClockPaddingTop:I

.field private mClockStyle:I

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


# virtual methods
.method public setSize(I)V
    .locals 3

    iput p1, p0, Lcom/miui/aod/widget/SunClockView;->mSize:I

    const p1, 0x7f1100bf

    invoke-virtual {p0, p1}, Lcom/miui/aod/widget/SunClockView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/widget/SunClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget p1, p0, Lcom/miui/aod/widget/SunClockView;->mSize:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const p1, 0x7f0c00ad

    iput p1, p0, Lcom/miui/aod/widget/SunClockView;->mClockStyle:I

    const p1, 0x7f0b01cf

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/aod/widget/SunClockView;->mSize:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const p1, 0x7f0c00ae

    iput p1, p0, Lcom/miui/aod/widget/SunClockView;->mClockStyle:I

    const p1, 0x7f0b01d0

    iget-object v1, p0, Lcom/miui/aod/widget/SunClockView;->mClockHorizontal:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLetterSpacing(F)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/aod/widget/SunClockView;->mSize:I

    const v1, 0x7f0c00ac

    if-ne p1, v0, :cond_2

    iput v1, p0, Lcom/miui/aod/widget/SunClockView;->mClockStyle:I

    const p1, 0x7f0b01ce

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/miui/aod/widget/SunClockView;->mClockStyle:I

    const p1, 0x7f0b01cd

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/SunClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/widget/SunClockView;->mClockPaddingTop:I

    invoke-virtual {p0}, Lcom/miui/aod/widget/SunClockView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "fonts/Mitype2018-60.otf"

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/aod/widget/SunClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget v2, p0, Lcom/miui/aod/widget/SunClockView;->mClockStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Lcom/miui/aod/widget/SunClockView;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SunClockView;->mClockHorizontal:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p1, p0, Lcom/miui/aod/widget/SunClockView;->mClockHorizontal:Landroid/widget/TextView;

    iget p0, p0, Lcom/miui/aod/widget/SunClockView;->mClockPaddingTop:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
