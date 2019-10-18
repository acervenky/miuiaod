.class public Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;
.super Lcom/miui/aod/components/view/BaseStyleSelectView;
.source "DescriptionAndImageStyleSelectView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DescriptionAndImageStyleSelectView"


# instance fields
.field private mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

.field private mDescription:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


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

.method public static synthetic lambda$55_7L1E6jUA3g_LKM5AD57NKC7M(Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;ILcom/miui/aod/components/DrawableData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->onBackgroundSelect(ILcom/miui/aod/components/DrawableData;)V

    return-void
.end method

.method private onBackgroundSelect(ILcom/miui/aod/components/DrawableData;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockBgName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DescriptionAndImageStyleSelectView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundSelect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    iget-object p2, p2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->setClockBgName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->updateStyleInfoForPreview()Lcom/miui/aod/widget/IAodClock;

    :cond_0
    return-void
.end method


# virtual methods
.method public inflateStyleSelectPanelView(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030041

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100e9

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/widget/ImageSelectView;

    iput-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    new-instance v0, Lcom/miui/aod/components/view/-$$Lambda$DescriptionAndImageStyleSelectView$55_7L1E6jUA3g_LKM5AD57NKC7M;

    invoke-direct {v0, p0}, Lcom/miui/aod/components/view/-$$Lambda$DescriptionAndImageStyleSelectView$55_7L1E6jUA3g_LKM5AD57NKC7M;-><init>(Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;)V

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/widget/ImageSelectView;->setOnItemClickListener(Lcom/miui/aod/components/widget/ImageSelectView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f1100e8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mDescription:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mRootView:Landroid/view/ViewGroup;

    const v0, 0x7f11001c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method protected initStyleInfoSelectedInner(Lcom/miui/aod/common/StyleInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mCateNameSelected:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/aod/widget/ScopeInfoManager;->getDrawableListByCateName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getBgCluster()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/aod/util/AodUtils;->getClusterData(Ljava/util/List;[I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {v2, v1}, Lcom/miui/aod/components/widget/ImageSelectView;->setDrawableData(Ljava/util/Collection;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/aod/common/StyleInfo;->getClockBgName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->findDrawableById(Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {v0, p1}, Lcom/miui/aod/components/widget/ImageSelectView;->setItemSelected(I)V

    iget-object p1, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    iget-object p0, p0, Lcom/miui/aod/components/view/DescriptionAndImageStyleSelectView;->mBackgroundSelectView:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ImageSelectView;->getSelection()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/widget/ImageSelectView;->smoothScrollToPosition(I)V

    :cond_2
    return-void
.end method
