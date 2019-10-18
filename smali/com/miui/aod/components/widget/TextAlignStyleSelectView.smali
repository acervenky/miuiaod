.class public Lcom/miui/aod/components/widget/TextAlignStyleSelectView;
.super Landroid/support/v7/widget/RecyclerView;
.source "TextAlignStyleSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;,
        Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;,
        Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;,
        Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;
    }
.end annotation


# static fields
.field public static final COUNT_FACTOR:I = 0x3


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCurrentSelection:I

.field private mDivider:I

.field private mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/aod/resource/DrawableGravityData;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickListener:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mSpacesItemDecoration:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDrawables:Ljava/util/List;

    new-instance p2, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;-><init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;Lcom/miui/aod/components/widget/TextAlignStyleSelectView$1;)V

    iput-object p2, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$1;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$1;-><init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of p2, p1, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/16 p1, 0x10

    invoke-static {p1}, Lcom/miui/aod/Utils;->dp2Px(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setDivider(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDrawables:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mCurrentSelection:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method


# virtual methods
.method public getSelection()I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mCurrentSelection:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->setItemSelected(I)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/aod/resource/DrawableGravityData;

    invoke-interface {v0, p1, p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;->onItemClick(ILcom/miui/aod/resource/DrawableGravityData;)V

    :cond_0
    return-void
.end method

.method public setDivider(I)V
    .locals 1

    iput p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDivider:I

    iget-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mSpacesItemDecoration:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;

    iget v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDivider:I

    invoke-direct {p1, p0, v0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;-><init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;I)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mSpacesItemDecoration:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;

    new-instance p1, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;

    iget v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDivider:I

    invoke-direct {p1, p0, v0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;-><init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;I)V

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setDrawableData(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/miui/aod/resource/DrawableGravityData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mDrawables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setItemSelected(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mCurrentSelection:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mCurrentSelection:I

    iput p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mCurrentSelection:I

    iget-object v1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/TextAlignStyleSelectView$OnItemClickListener;

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
