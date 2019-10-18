.class public Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;
.super Lcom/miui/aod/components/view/BaseStyleSelectView;
.source "PureColorAndImageStyleSelectView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PureColorAndImageStyleS"


# instance fields
.field private mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

.field private mBgSelectTitleTv:Landroid/widget/TextView;

.field private mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;-><init>(Landroid/content/Context;)V

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

.method public static synthetic lambda$6JEWRsWlhLu2jczZ1CoJjS6eitI(Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->onBackgroundSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method public static synthetic lambda$gr1WtB1r6BbKA7XiA5Ubc1wZMno(Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->onColorSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method private onBackgroundSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockBgResID()I

    move-result p1

    iget v0, p2, Lcom/miui/aod/components/DrawableData;->mResId:I

    if-eq p1, v0, :cond_0

    const-string p1, "PureColorAndImageStyleS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundSelect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p2, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setClockBgName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method

.method private onColorSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

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

    const-string p1, "PureColorAndImageStyleS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorSelect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p2, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setColorName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method


# virtual methods
.method public inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03005c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100e4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/widget/ColorSelectView;

    iput-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    new-instance v0, Lcom/miui/aod/components/view/-$$Lambda$PureColorAndImageStyleSelectView$gr1WtB1r6BbKA7XiA5Ubc1wZMno;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/-$$Lambda$PureColorAndImageStyleSelectView$gr1WtB1r6BbKA7XiA5Ubc1wZMno;-><init>(Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;)V

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ColorSelectView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100e9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/widget/ImageSelectView;

    iput-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    new-instance v0, Lcom/miui/aod/components/view/-$$Lambda$PureColorAndImageStyleSelectView$6JEWRsWlhLu2jczZ1CoJjS6eitI;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/-$$Lambda$PureColorAndImageStyleSelectView$6JEWRsWlhLu2jczZ1CoJjS6eitI;-><init>(Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;)V

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ImageSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ImageSelectView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f110107

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBgSelectTitleTv:Landroid/widget/TextView;

    return-void
.end method

.method protected initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/aod/resource/AodDrawables;->getPureDrawables()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setDrawableData(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getColorName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->findDrawableById(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/miui/aod/components/widget/ColorSelectView;->setItemSelected(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    iget-object v1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mColorSelectView:Lcom/miui/aod/components/widget/ColorSelectView;

    invoke-virtual {v1}, Lcom/miui/aod/components/widget/ColorSelectView;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/aod/components/widget/ColorSelectView;->smoothScrollToPosition(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mCateNameSelected:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/aod/resource/AodDrawables;->getDrawableListByCateName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getBgCluster()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/aod/util/AodUtils;->getClusterData(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {v2, v1}, Lcom/miui/aod/components/widget/ImageSelectView;->setDrawableData(Ljava/util/Collection;)V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBgSelectTitleTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockBgName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->findDrawableById(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {v0, p1}, Lcom/miui/aod/components/widget/ImageSelectView;->setItemSelected(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    iget-object p0, p0, Lcom/miui/aod/components/view/PureColorAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ImageSelectView;->getSelection()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/widget/ImageSelectView;->smoothScrollToPosition(I)V

    :cond_4
    return-void
.end method
