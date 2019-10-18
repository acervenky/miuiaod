.class public Lcom/miui/aod/components/widget/CategoriesItemView;
.super Landroid/widget/LinearLayout;
.source "CategoriesItemView.java"

# interfaces
.implements Lcom/miui/aod/components/widget/ITimeUpdate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;,
        Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;,
        Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;
    }
.end annotation


# static fields
.field private static FIRST_ITEMSPACE:I

.field private static ITEMSPACE:I


# instance fields
.field private mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

.field private mCateroryItemsRv:Landroid/support/v7/widget/RecyclerView;

.field private mItemWidth:I

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result v0

    sput v0, Lcom/miui/aod/components/widget/CategoriesItemView;->ITEMSPACE:I

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result v0

    sput v0, Lcom/miui/aod/components/widget/CategoriesItemView;->FIRST_ITEMSPACE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/miui/aod/components/widget/CategoriesItemView;->FIRST_ITEMSPACE:I

    return v0
.end method


# virtual methods
.method public handleUpdateTime(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->getItemCount()I

    move-result p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/miui/aod/category/CategoriesItemInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mTitleTv:Landroid/widget/TextView;

    sget-object v1, Lcom/miui/aod/category/CategoryFactory;->sCategoryNameMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/miui/aod/category/CategoriesItemInfo;->getCateroryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    invoke-virtual {p1}, Lcom/miui/aod/category/CategoriesItemInfo;->getStyleInfos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f11001c

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/widget/CategoriesItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mTitleTv:Landroid/widget/TextView;

    const v0, 0x7f1100b9

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/widget/CategoriesItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCateroryItemsRv:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/CategoriesItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCateroryItemsRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;-><init>(Lcom/miui/aod/components/widget/CategoriesItemView$1;)V

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    invoke-static {}, Lcom/miui/aod/util/DeviceInfo;->getDefaultDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v1, Lcom/miui/aod/components/widget/CategoriesItemView;->ITEMSPACE:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Lcom/miui/aod/components/widget/CategoriesItemView;->FIRST_ITEMSPACE:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/CategoriesItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sput v1, Lcom/miui/aod/category/CategoryConstants;->SSMALL_RADIO:F

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    invoke-static {v1, v0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->access$100(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;I)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCateroryItemsRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCateroryItemsRv:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;

    sget v1, Lcom/miui/aod/components/widget/CategoriesItemView;->ITEMSPACE:I

    invoke-direct {v0, v1}, Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView;->mCategoryItemAdapter:Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->setOnItemClickListener(Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;)V

    :cond_0
    return-void
.end method
