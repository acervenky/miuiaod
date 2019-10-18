.class public Lcom/miui/aod/components/view/GradientColorStyleSelectView;
.super Lcom/miui/aod/components/view/BaseStyleSelectView;
.source "GradientColorStyleSelectView.java"


# instance fields
.field private mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

.field private mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

.field private mStyleInfo:Lcom/miui/aod/common/StyleInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/components/view/GradientColorStyleSelectView;)Lcom/miui/aod/common/StyleInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/aod/components/view/GradientColorStyleSelectView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->updateColorSelectorState(Z)V

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

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {p2}, Lcom/miui/aod/resource/AodDrawables;->translateColorNameFromOldVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p2, v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/aod/components/DrawableData;

    iget-object v2, v2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p0
.end method

.method public static synthetic lambda$5BWopZ1fiSQrKHQMOH_wkh1Nw5k(Lcom/miui/aod/components/view/GradientColorStyleSelectView;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->onColorSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method private onColorSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

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

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p2, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setColorName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method private updateColorSelectorState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030051

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f110108

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/widget/ColorSelectView;

    iput-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    new-instance v1, Lcom/miui/aod/components/view/-$$Lambda$GradientColorStyleSelectView$5BWopZ1fiSQrKHQMOH_wkh1Nw5k;

    invoke-direct {v1, p0}, Lcom/miui/aod/components/view/-$$Lambda$GradientColorStyleSelectView$5BWopZ1fiSQrKHQMOH_wkh1Nw5k;-><init>(Lcom/miui/aod/components/view/GradientColorStyleSelectView;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ColorSelectView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f110106

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/aod/components/view/GradientColorStyleSelectView$1;-><init>(Lcom/miui/aod/components/view/GradientColorStyleSelectView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "aod_pure_color_1"

    invoke-static {v1}, Lcom/miui/aod/resource/AodDrawables;->getDrawableDataByName(Ljava/lang/String;)Lcom/miui/aod/components/DrawableData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->getGradientDrawables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setDrawableData(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->findDrawableById(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setItemSelected(I)V

    iget-object v1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v2, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v2}, Lcom/miui/aod/components/widget/ColorSelectView;->getSelection()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/aod/components/widget/ColorSelectView;->smoothScrollToPosition(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/DrawableData;

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->onColorSelect(ILcom/miui/aod/components/DrawableData;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->isChangeColorAlongTime()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isChangeColorAlongTime()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/GradientColorStyleSelectView;->updateColorSelectorState(Z)V

    return-void
.end method
