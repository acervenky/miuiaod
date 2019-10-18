.class Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CategoriesItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/aod/components/widget/ITimeUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# static fields
.field private static sSmallAodStyleControllers:Landroid/support/v4/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SimplePool<",
            "Lcom/miui/aod/AODStyleController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAODStyleController:Lcom/miui/aod/AODStyleController;

.field private mOnItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->sSmallAodStyleControllers:Landroid/support/v4/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mOnItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/aod/common/StyleInfo;)V
    .locals 3

    sget-object v0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->sSmallAodStyleControllers:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/AODStyleController;

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/aod/AODStyleController;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Lcom/miui/aod/common/StyleInfo;)Lcom/miui/aod/widget/IAodClock;

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public handleUpdateTime(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/aod/components/widget/ITimeUpdate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Lcom/miui/aod/components/widget/ITimeUpdate;

    invoke-interface {p0, p1}, Lcom/miui/aod/components/widget/ITimeUpdate;->handleUpdateTime(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mOnItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mOnItemClickListener:Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/aod/category/CategoryInfo;

    invoke-interface {p0, v0, p1}, Lcom/miui/aod/components/widget/CategoriesItemView$OnItemClickListener;->onItemClick(ILcom/miui/aod/category/CategoryInfo;)V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->sSmallAodStyleControllers:Landroid/support/v4/util/Pools$SimplePool;

    iget-object v1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$CategoryItemAdapter$ViewHolder;->mAODStyleController:Lcom/miui/aod/AODStyleController;

    :cond_0
    return-void
.end method
