.class public Lcom/miui/aod/components/view/TextStyleSelectView;
.super Lcom/miui/aod/components/view/BaseStyleSelectView;
.source "TextStyleSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextStyleSelectView"


# instance fields
.field private mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

.field private mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

.field private mExceedLengthAlertTv:Landroid/widget/TextView;

.field private mFontThicknessSeekBar:Landroid/widget/SeekBar;

.field private mHLetterSpace:F

.field private mInputEt:Landroid/widget/EditText;

.field private mLetterSpaceAddIv:Landroid/widget/ImageView;

.field private mLetterSpaceContainer:Landroid/view/ViewGroup;

.field private mLetterSpaceDelIv:Landroid/widget/ImageView;

.field private mLetterSpaceValueTv:Landroid/widget/TextView;

.field private mLineSpaceAddIv:Landroid/widget/ImageView;

.field private mLineSpaceDelIv:Landroid/widget/ImageView;

.field private mLineSpaceValue:F

.field private mLineSpaceValueTmp:F

.field private mLineSpaceValueTv:Landroid/widget/TextView;

.field private mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

.field private mTextSizeSeekBar:Landroid/widget/SeekBar;

.field private mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

.field private mVLetterSpace:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/components/view/TextStyleSelectView;)Lcom/miui/aod/category/TextStyleCategoryInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/components/view/TextStyleSelectView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateColorSelectorState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/aod/components/view/TextStyleSelectView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mExceedLengthAlertTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/components/view/TextStyleSelectView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/aod/components/view/TextStyleSelectView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->setFontWeight(I)V

    return-void
.end method

.method private changeLineSpaceValue()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValueTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->getPresenter()Lcom/miui/aod/components/BaseStyleSelectPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->getIAodClock()Lcom/miui/aod/widget/IAodClock;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/SignatureClock;

    invoke-virtual {v0}, Lcom/miui/aod/widget/SignatureClock;->getView()Lcom/miui/aod/widget/SignatureAodView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/widget/SignatureAodView;->getSignatureContent()Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object v0

    iget p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValue:F

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/miui/aod/components/view/VerticalTextView;->setLineSpacing(FF)V

    return-void
.end method

.method private findDrawableById(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/aod/components/DrawableData;

    iget-object v2, v2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static synthetic lambda$b6z4c870eOC7-E6jCF9pzVVMxY0(Lcom/miui/aod/components/view/TextStyleSelectView;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/TextStyleSelectView;->onColorSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method public static synthetic lambda$jOnCDikw2ZQ6XgHdWLOhmwOzd2I(Lcom/miui/aod/components/view/TextStyleSelectView;ILcom/miui/aod/resource/DrawableGravityData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/TextStyleSelectView;->onTextAlignSelect(ILcom/miui/aod/resource/DrawableGravityData;)V

    return-void
.end method

.method private onColorSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TextStyleSelectView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorSelect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p2, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setColorName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method private onTextAlignSelect(ILcom/miui/aod/resource/DrawableGravityData;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getGravity()I

    move-result p1

    iget v0, p2, Lcom/miui/aod/resource/DrawableGravityData;->gravity:I

    if-eq p1, v0, :cond_1

    and-int/lit16 p1, p1, 0x200

    iget v0, p2, Lcom/miui/aod/resource/DrawableGravityData;->gravity:I

    and-int/lit16 v0, v0, 0x200

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValue:F

    iget v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValueTmp:F

    iput v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValue:F

    iput p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValueTmp:F

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    check-cast p1, Lcom/miui/aod/category/TextStyleCategoryInfo;

    iget p2, p2, Lcom/miui/aod/resource/DrawableGravityData;->gravity:I

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setGravity(I)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_1
    return-void
.end method

.method private setFontWeight(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getFontWeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0, p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setFontWeight(I)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method private setTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0, p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method private updateColorSelectorState(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->getPresenter()Lcom/miui/aod/components/BaseStyleSelectPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->getIAodClock()Lcom/miui/aod/widget/IAodClock;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/miui/aod/widget/IAodClock;->updateTime(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyStyle()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->getPresenter()Lcom/miui/aod/components/BaseStyleSelectPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->getIAodClock()Lcom/miui/aod/widget/IAodClock;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/miui/aod/widget/ISignatureAodClock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    check-cast v0, Lcom/miui/aod/widget/ISignatureAodClock;

    invoke-interface {v0}, Lcom/miui/aod/widget/ISignatureAodClock;->getShowedContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setShowedContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-interface {v0}, Lcom/miui/aod/widget/ISignatureAodClock;->getTextFormat()Lcom/miui/aod/components/view/VerticalTextView$TextFormat;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setTextFormat(Lcom/miui/aod/components/view/VerticalTextView$TextFormat;)V

    :cond_0
    invoke-super {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->applyStyle()V

    return-void
.end method

.method public inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    const v2, 0x7f030064

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f1100e4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/widget/ColorSelectView;

    iput-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    new-instance v2, Lcom/miui/aod/components/view/-$$Lambda$TextStyleSelectView$b6z4c870eOC7-E6jCF9pzVVMxY0;

    invoke-direct {v2, p0}, Lcom/miui/aod/components/view/-$$Lambda$TextStyleSelectView$b6z4c870eOC7-E6jCF9pzVVMxY0;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {v0, v2}, Lcom/miui/aod/components/widget/ColorSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ColorSelectView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f11010c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    iput-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    sget-object v2, Lcom/miui/aod/resource/ImagePool;->sAlignTypeDrawableData:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setDrawableData(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    new-instance v2, Lcom/miui/aod/components/view/-$$Lambda$TextStyleSelectView$jOnCDikw2ZQ6XgHdWLOhmwOzd2I;

    invoke-direct {v2, p0}, Lcom/miui/aod/components/view/-$$Lambda$TextStyleSelectView$jOnCDikw2ZQ6XgHdWLOhmwOzd2I;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {v0, v2}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v2, 0x7f110106

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/miui/aod/components/view/TextStyleSelectView$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/aod/components/view/TextStyleSelectView$1;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f11010a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    new-instance v0, Lcom/miui/aod/components/view/TextStyleSelectView$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/TextStyleSelectView$2;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    new-instance v0, Lcom/miui/aod/components/view/TextStyleSelectView$3;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/TextStyleSelectView$3;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v2, Lcom/miui/aod/components/view/TextStyleSelectView$4;

    const/16 v3, 0x3c

    invoke-direct {v2, p0, v3}, Lcom/miui/aod/components/view/TextStyleSelectView$4;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Lcom/miui/aod/util/EmojiInputFilter;

    invoke-direct {v2}, Lcom/miui/aod/util/EmojiInputFilter;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f11010b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mExceedLengthAlertTv:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f11010d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextSizeSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/miui/aod/components/view/TextStyleSelectView$5;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/TextStyleSelectView$5;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f11010e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mFontThicknessSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mFontThicknessSeekBar:Landroid/widget/SeekBar;

    new-instance v0, Lcom/miui/aod/components/view/TextStyleSelectView$6;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/TextStyleSelectView$6;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110115

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceAddIv:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110113

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceDelIv:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110112

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceAddIv:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110110

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceDelIv:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f11010f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceContainer:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110111

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceValueTv:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110114

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValueTv:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceAddIv:Landroid/widget/ImageView;

    new-instance v0, Lcom/miui/aod/components/view/TextStyleSelectView$7;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/TextStyleSelectView$7;-><init>(Lcom/miui/aod/components/view/TextStyleSelectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initPreviewView(Landroid/view/ViewGroup;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/miui/aod/category/TextStyleCategoryInfo;

    iput-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->getGradientDrawables()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v2

    :goto_0
    sget-object v5, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    sget-object v5, Lcom/miui/aod/resource/AodDrawables;->sPureDrawableList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v4, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->setDrawableData(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->findDrawableById(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    if-gez p1, :cond_1

    move p1, v3

    :cond_1
    invoke-virtual {v1, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setItemSelected(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1}, Lcom/miui/aod/components/widget/ColorSelectView;->getSelection()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->smoothScrollToPosition(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getGravity()I

    move-result p1

    invoke-static {p1}, Lcom/miui/aod/resource/ImagePool;->getDrawableIndexByGravity(I)I

    move-result p1

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    if-gez p1, :cond_3

    move p1, v2

    :cond_3
    invoke-virtual {v1, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setItemSelected(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextAlignStyleSelectView:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    iget-object v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1}, Lcom/miui/aod/components/widget/ColorSelectView;->getSelection()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->smoothScrollToPosition(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextSizeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x43350000    # 181.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mFontThicknessSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getFontWeight()I

    move-result v0

    add-int/lit16 v0, v0, -0x96

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0x226

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {v0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isChangeColorAlongTime()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isChangeColorAlongTime()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/TextStyleSelectView;->updateColorSelectorState(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->isVertical()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceContainer:Landroid/view/ViewGroup;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceContainer:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_1
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getLineMultiplier()F

    move-result p1

    iput p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValue:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValueTmp:F

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValueTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLineSpaceValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mLetterSpaceValueTv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextStyleCategoryInfo:Lcom/miui/aod/category/TextStyleCategoryInfo;

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getLetterSpace()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/aod/components/view/TextStyleSelectView;->getPresenter()Lcom/miui/aod/components/BaseStyleSelectPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/components/BaseStyleSelectPresenter;->getIAodClock()Lcom/miui/aod/widget/IAodClock;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/widget/SignatureClock;

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureClock;->getView()Lcom/miui/aod/widget/SignatureAodView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getSignatureContent()Lcom/miui/aod/components/view/SquareVerticalTextView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f110115

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f110113

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f110112

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    :goto_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/aod/components/view/BaseStyleSelectView;->onStateChanged(Landroid/view/View;I)V

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/miui/aod/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    :goto_0
    return-void
.end method

.method public onTextSizeChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mTextSizeSeekBar:Landroid/widget/SeekBar;

    int-to-float p1, p1

    const/high16 v0, 0x41700000    # 15.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x43350000    # 181.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public showPreviewMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->showPreviewMode(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/aod/components/view/TextStyleSelectView;->mInputEt:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/miui/aod/Utils;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)Z

    return-void
.end method

.method public updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;
    .locals 2

    invoke-super {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/aod/widget/SignatureClock;

    invoke-virtual {v1}, Lcom/miui/aod/widget/SignatureClock;->getView()Lcom/miui/aod/widget/SignatureAodView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/miui/aod/widget/SignatureAodView;->setTextSizeChangedListener(Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;)V

    return-object v0
.end method
