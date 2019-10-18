.class Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CategoriesItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/CategoriesItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;

.field private mItemHeight:I

.field private mItemWidth:I

.field private mStyleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mStyleInfos:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/components/widget/CategoriesItemView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mStyleInfos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->setItemWidth(I)V

    return-void
.end method

.method private setItemWidth(I)V
    .locals 4

    iput p1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mItemWidth:I

    int-to-double v0, p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mItemHeight:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mStyleInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;I)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mStyleInfos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->bind(Lcom/miui/aod/common/StyleInfo;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->handleUpdateTime(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mItemWidth:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mItemHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p2, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;

    invoke-direct {p2, p1, p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;-><init>(Landroid/view/View;Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;)V

    return-object p2
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->onViewDetachedFromWindow(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->recycle()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/common/StyleInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mStyleInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mStyleInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;->mItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;

    return-void
.end method
