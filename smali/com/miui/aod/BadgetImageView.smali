.class public Lcom/miui/aod/BadgetImageView;
.super Landroid/widget/ImageView;
.source "BadgetImageView.java"


# instance fields
.field private mBadget:I

.field private mBadgetPaint:Landroid/graphics/Paint;

.field private mIconStyle:I

.field private mTextMargin:I

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/BadgetImageView;->mIconStyle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/aod/BadgetImageView;->mBadget:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/aod/BadgetImageView;->mIconStyle:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/aod/BadgetImageView;->mBadget:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    iget-object p0, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/aod/BadgetImageView;->mIconStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/aod/BadgetImageView;->mBadget:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/miui/aod/BadgetImageView;->mTextSize:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/miui/aod/BadgetImageView;->mTextMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBadget(II)V
    .locals 1

    iput p1, p0, Lcom/miui/aod/BadgetImageView;->mBadget:I

    iput p2, p0, Lcom/miui/aod/BadgetImageView;->mIconStyle:I

    iget-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    iget-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p1, p0, Lcom/miui/aod/BadgetImageView;->mIconStyle:I

    if-ne p1, p2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/BadgetImageView;->mBadget:I

    iget-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "fonts/Mitype2018-90.otf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00e0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/BadgetImageView;->mTextSize:I

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00de

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/BadgetImageView;->mTextMargin:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f0f0025

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/aod/BadgetImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00df

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/miui/aod/BadgetImageView;->mTextSize:I

    :goto_0
    iget-object p1, p0, Lcom/miui/aod/BadgetImageView;->mBadgetPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/miui/aod/BadgetImageView;->mTextSize:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
