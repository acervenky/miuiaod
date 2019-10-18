.class public Lcom/miui/aod/components/view/ClockStyleSelectView;
.super Lcom/miui/aod/components/view/BaseStyleSelectView;
.source "ClockStyleSelectView.java"


# instance fields
.field private mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

.field private mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

.field private mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

.field private mColorTitle:Landroid/widget/TextView;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mGson:Lcom/google/gson/Gson;

.field private mPanelTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/aod/components/view/ClockStyleSelectView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/ClockStyleSelectView;->updateColorSelectorState(Z)V

    return-void
.end method

.method private compareStyleParameter(Ljava/lang/String;Lcom/miui/aod/common/StyleInfo;)Z
    .locals 1

    iget-object p0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p0, p2}, Lcom/miui/aod/common/StyleInfo;->compareToForPresetStyle(Lcom/miui/aod/common/StyleInfo;)Z

    move-result p0

    return p0
.end method

.method private findClockStyleByStyleInfo(Ljava/util/List;Lcom/miui/aod/common/StyleInfo;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/aod/common/StyleInfo;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/miui/aod/components/view/ClockStyleSelectView;->compareStyleParameter(Ljava/lang/String;Lcom/miui/aod/common/StyleInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
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

.method public static synthetic lambda$9pTlz5qGTzjCwuf5RU20zkqvIsk(Lcom/miui/aod/components/view/ClockStyleSelectView;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/ClockStyleSelectView;->onColorSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method private onColorSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

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

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p2, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setColorName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/ClockStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method private updateColorSelectState(Ljava/util/List;Lcom/miui/aod/common/StyleInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;",
            "Lcom/miui/aod/common/StyleInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/ClockStyleSelectView;->findDrawableById(Ljava/util/List;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v0, p2}, Lcom/miui/aod/components/widget/ColorSelectView;->setItemSelected(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1}, Lcom/miui/aod/components/widget/ColorSelectView;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->smoothScrollToPosition(I)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/DrawableData;

    invoke-direct {p0, p2, p1}, Lcom/miui/aod/components/view/ClockStyleSelectView;->onColorSelect(ILcom/miui/aod/components/DrawableData;)V

    :cond_0
    return-void
.end method

.method private updateColorSelectorState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ColorSelectView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mContainerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100e6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/widget/ClockPanelSelectView;

    iput-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    new-instance v1, Lcom/miui/aod/components/view/-$$Lambda$utbW21xbENRV8VbAawORzNlPgoc;

    invoke-direct {v1, p0}, Lcom/miui/aod/components/view/-$$Lambda$utbW21xbENRV8VbAawORzNlPgoc;-><init>(Lcom/miui/aod/components/view/ClockStyleSelectView;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100e4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/widget/ColorSelectView;

    iput-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100e3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    new-instance v1, Lcom/miui/aod/components/view/-$$Lambda$ClockStyleSelectView$9pTlz5qGTzjCwuf5RU20zkqvIsk;

    invoke-direct {v1, p0}, Lcom/miui/aod/components/view/-$$Lambda$ClockStyleSelectView$9pTlz5qGTzjCwuf5RU20zkqvIsk;-><init>(Lcom/miui/aod/components/view/ClockStyleSelectView;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ColorSelectView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f1100e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mPanelTitleTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v1, 0x7f110106

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/aod/components/view/ClockStyleSelectView$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/aod/components/view/ClockStyleSelectView$1;-><init>(Lcom/miui/aod/components/view/ClockStyleSelectView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V
    .locals 5

    instance-of v0, p1, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "aod_pure_color_1"

    invoke-static {v2}, Lcom/miui/aod/resource/AodDrawables;->getDrawableDataByName(Ljava/lang/String;)Lcom/miui/aod/components/DrawableData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->getGradientDrawables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v2, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setDrawableData(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/aod/common/StyleInfo;->setColorName(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/components/view/ClockStyleSelectView;->updateColorSelectState(Ljava/util/List;Lcom/miui/aod/common/StyleInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/aod/common/StyleInfo$PresetStyle;->mStyleParameters:[Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getBgCluster()[I

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/aod/util/AodUtils;->getClusterData(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mPanelTitleTv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getPresetStyle()Lcom/miui/aod/common/StyleInfo$PresetStyle;

    move-result-object v4

    iget v4, v4, Lcom/miui/aod/common/StyleInfo$PresetStyle;->mTitleResId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    iget-object v3, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mCateNameSelected:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setDate(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/components/view/ClockStyleSelectView;->findClockStyleByStyleInfo(Ljava/util/List;Lcom/miui/aod/common/StyleInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-virtual {v1, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setItemSelected(I)V

    iget-object v1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-virtual {v1, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->smoothScrollToPosition(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mPanelTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-virtual {v0, v2}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->supportChangeColorAlongTime()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100e7

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mChangeColorAlongTimeSb:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {v0}, Lcom/miui/aod/common/StyleInfo;->isChangeColorAlongTime()Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->isChangeColorAlongTime()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/ClockStyleSelectView;->updateColorSelectorState(Z)V

    return-void
.end method

.method public onClockSelected(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    instance-of p1, p1, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    check-cast p1, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    iget-object p2, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mGson:Lcom/google/gson/Gson;

    const-class v0, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    check-cast p1, Lcom/miui/aod/category/ClockPanelCategoryInfo;

    invoke-virtual {p2}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->getPanel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/ClockPanelCategoryInfo;->setPanel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    instance-of p1, p1, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    check-cast p1, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    iget-object p2, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mGson:Lcom/google/gson/Gson;

    const-class v0, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {p2, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/aod/category/LinearTimeCategoryInfo;

    invoke-virtual {p1}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result p3

    invoke-virtual {p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result v0

    if-eq p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->setVertical(Z)V

    invoke-virtual {p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->setLeftGravity(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result p3

    invoke-virtual {p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result v0

    if-eq p3, v0, :cond_4

    invoke-virtual {p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isLeftGravity()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->setLeftGravity(Z)V

    invoke-virtual {p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->isVertical()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/LinearTimeCategoryInfo;->setVertical(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/aod/components/view/ClockStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/widget/ColorSelectView;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/widget/ColorSelectView;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {p1}, Lcom/miui/aod/components/widget/ColorSelectView;->getData()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/ClockStyleSelectView;->updateColorSelectState(Ljava/util/List;Lcom/miui/aod/common/StyleInfo;)V

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method public updateTime()V
    .locals 0

    invoke-super {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->updateTime()V

    iget-object p0, p0, Lcom/miui/aod/components/view/ClockStyleSelectView;->mClockPanelSelectView:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->updateTime()V

    return-void
.end method
