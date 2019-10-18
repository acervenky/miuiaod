.class public Lcom/miui/aod/components/widget/NotificationAnimationSelectView;
.super Landroid/support/v7/widget/RecyclerView;
.source "NotificationAnimationSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;,
        Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;,
        Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;,
        Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorSelectAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCurrentSelection:I

.field private mDivider:I

.field private mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickListener:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mSpacesItemDecoration:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    new-instance p2, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorSelectAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorSelectAdapter;-><init>(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;Lcom/miui/aod/components/widget/NotificationAnimationSelectView$1;)V

    iput-object p2, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$1;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$1;-><init>(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of p2, p1, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mCurrentSelection:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private setItemSelected(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mCurrentSelection:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mCurrentSelection:I

    iput p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mCurrentSelection:I

    iget-object v1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setItemSelected(I)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/components/DrawableData;

    invoke-interface {v0, p1, p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;->onItemClick(ILcom/miui/aod/components/DrawableData;)V

    :cond_0
    return-void
.end method

.method public setDivider(I)V
    .locals 1

    iput p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDivider:I

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mSpacesItemDecoration:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;

    iget v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDivider:I

    invoke-direct {p1, p0, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;-><init>(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;I)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mSpacesItemDecoration:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;

    new-instance p1, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;

    iget v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDivider:I

    invoke-direct {p1, p0, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$SpacesItemDecoration;-><init>(Lcom/miui/aod/components/widget/NotificationAnimationSelectView;I)V

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setDrawableData(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/aod/components/DrawableData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setDivider(I)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemSelected(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/aod/components/DrawableData;

    iget-object v2, v2, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setItemSelected(I)V

    invoke-virtual {p0, v0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->smoothScrollToPosition(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/components/DrawableData;

    invoke-interface {p1, v0, p0}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;->onItemClick(ILcom/miui/aod/components/DrawableData;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/NotificationAnimationSelectView$OnItemClickListener;

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
