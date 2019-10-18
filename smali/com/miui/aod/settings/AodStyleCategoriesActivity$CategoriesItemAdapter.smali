.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AodStyleCategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategoriesItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/category/CategoriesItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;


# direct methods
.method public constructor <init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->mCategoriesItemInfos:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->mCategoriesItemInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->mCategoriesItemInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    const p0, 0x7f030031

    return p0

    :cond_0
    const p0, 0x7f03001f

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->onBindViewHolder(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->onBindViewHolder(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;I)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/aod/components/widget/CategoriesItemView;

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->mCategoriesItemInfos:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/category/CategoriesItemInfo;

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/widget/CategoriesItemView;->init(Lcom/miui/aod/category/CategoriesItemInfo;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$400(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v0}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iget-object v0, p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->mCategoriesItemInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/aod/category/CategoriesItemInfo;

    invoke-virtual {v2}, Lcom/miui/aod/category/CategoriesItemInfo;->getStyleInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p2, v0, v1}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    iget-object p2, p1, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$2;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->bind()V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->onBindViewHolder(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;I)V

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

    invoke-virtual {p1, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->handleUpdateTime(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f03001f

    if-eq p2, v1, :cond_1

    const v1, 0x7f030031

    if-eq p2, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$400(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f03003b

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    iget-object p2, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->this$0:Lcom/miui/aod/settings/AodStyleCategoriesActivity;

    invoke-static {p2}, Lcom/miui/aod/settings/AodStyleCategoriesActivity;->access$400(Lcom/miui/aod/settings/AodStyleCategoriesActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/components/widget/CategoriesItemView;

    new-instance p2, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$1;

    invoke-direct {p2, p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$1;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;)V

    invoke-virtual {p1, p2}, Lcom/miui/aod/components/widget/CategoriesItemView;->setOnItemClickListener(Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;)V

    new-instance p2, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;-><init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/aod/category/CategoriesItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->mCategoriesItemInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
