.class public Lcom/miui/aod/widget/SignatureAodView;
.super Landroid/widget/FrameLayout;
.source "SignatureAodView.java"

# interfaces
.implements Lcom/miui/aod/components/view/IPreAodView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;
    }
.end annotation


# instance fields
.field private mITextSizeListener:Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;

.field private mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

.field private mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;


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

.method static synthetic access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/category/TextStyleCategoryInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/aod/widget/SignatureAodView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/widget/SignatureAodView;->configFixSizeSignatureContent()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mITextSizeListener:Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;

    return-object p0
.end method

.method private configFixSizeSignatureContent()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setAutoSizeTextTypeWithDefaults(I)V

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setAutoFormatText(ZLcom/miui/aod/components/view/VerticalTextView$TextFormat;)V

    return-void
.end method


# virtual methods
.method public getShowContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getShowText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShowTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p0

    return-object p0
.end method

.method public getSignatureContent()Lcom/miui/aod/components/view/SquareVerticalTextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f1100c6

    invoke-virtual {p0, v0}, Lcom/miui/aod/widget/SignatureAodView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/view/SquareVerticalTextView;

    iput-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    return-void
.end method

.method public set24GradientColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isChangeColorAlongTime()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {v0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getDrawableMask()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {v0, p1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setDrawableMask(I)V

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextSizeChangedListener(Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mITextSizeListener:Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;

    return-void
.end method

.method public update(Lcom/miui/aod/common/StyleInfo;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    instance-of v0, p1, Lcom/miui/aod/category/TextStyleCategoryInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/miui/aod/category/TextStyleCategoryInfo;

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isVertical()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setVerticalMode(Z)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setIsSquare(Z)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getPureGravity()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setGravity(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getFontWeight()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/graphics/Typeface$Builder;

    const-string v1, "system/fonts/MiLanProVF.ttf"

    invoke-direct {p1, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'wght\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getFontWeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {v1, p1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isVertical()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v4}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setLineSpacing(FF)V

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object v3, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v3}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object v3

    iget v3, v3, Lcom/miui/aod/components/view/VerticalTextView$TextFormat;->lineCount:I

    invoke-virtual {v1, v3}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/miui/aod/widget/SignatureAodView$1;

    invoke-direct {v1, p0}, Lcom/miui/aod/widget/SignatureAodView$1;-><init>(Lcom/miui/aod/widget/SignatureAodView;)V

    invoke-virtual {p0, v1}, Lcom/miui/aod/widget/SignatureAodView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v3, v4}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setCJKVerticalSpace(FF)V

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v3, v4}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setLineSpacing(FF)V

    :goto_1
    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isChangeColorAlongTime()Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getClockMask()I

    move-result v1

    invoke-static {v1}, Lcom/miui/aod/resource/AodDrawables;->isPureColor(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {v1, v3}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setDrawableMask(I)V

    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v5}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getClockMask()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object v4, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v4}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getClockMask()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setDrawableMask(I)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->get24GradientDrawableRes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/aod/widget/SignatureAodView;->set24GradientColor(I)V

    :goto_2
    const/16 v1, 0xc4

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/16 p1, 0xc

    invoke-static {p1}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result p1

    if-nez p2, :cond_6

    const/16 p1, 0xe

    invoke-static {p1}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result p1

    :cond_6
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/miui/aod/widget/SignatureAodView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getShowedContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setAutoFormatText(ZLcom/miui/aod/components/view/VerticalTextView$TextFormat;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    const/16 p2, 0x8

    iget-object v2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1, p2, v1, v0, v0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getShowedContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    new-instance p2, Lcom/miui/aod/widget/SignatureAodView$3;

    invoke-direct {p2, p0, p1}, Lcom/miui/aod/widget/SignatureAodView$3;-><init>(Lcom/miui/aod/widget/SignatureAodView;I)V

    invoke-virtual {p0, p2}, Lcom/miui/aod/widget/SignatureAodView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0b00cd

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0b00cc

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/16 p2, 0x14

    invoke-static {p2}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setAutoFormatText(ZLcom/miui/aod/components/view/VerticalTextView$TextFormat;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    const/16 p2, 0xf

    iget-object v2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1, p2, v1, v0, v0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    new-instance p2, Lcom/miui/aod/widget/SignatureAodView$2;

    invoke-direct {p2, p0}, Lcom/miui/aod/widget/SignatureAodView$2;-><init>(Lcom/miui/aod/widget/SignatureAodView;)V

    invoke-virtual {p1, p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    const/high16 p2, 0x42380000    # 46.0f

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setTextSize(F)V

    :cond_a
    invoke-direct {p0}, Lcom/miui/aod/widget/SignatureAodView;->configFixSizeSignatureContent()V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView;->mSignatureContent:Lcom/miui/aod/components/view/SquareVerticalTextView;

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
