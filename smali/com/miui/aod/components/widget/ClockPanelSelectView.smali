.class public Lcom/miui/aod/components/widget/ClockPanelSelectView;
.super Landroid/support/v7/widget/RecyclerView;
.source "ClockPanelSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;,
        Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;,
        Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;,
        Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mCateName:Ljava/lang/String;

.field private mCurrentSelection:I

.field private mDivider:I

.field private mIs24Format:Z

.field private mItemClickListener:Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mSpacesItemDecoration:Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mParameters:Ljava/util/List;

    new-instance p2, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;-><init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;Lcom/miui/aod/components/widget/ClockPanelSelectView$1;)V

    iput-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance p2, Lcom/miui/aod/components/widget/ClockPanelSelectView$1;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/miui/aod/components/widget/ClockPanelSelectView$1;-><init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mIs24Format:Z

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of p2, p1, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_0
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0036

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setDivider(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mParameters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/aod/components/widget/ClockPanelSelectView;)I
    .locals 0

    iget p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCurrentSelection:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCateName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mIs24Format:Z

    return p0
.end method

.method static synthetic access$600(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->setItemSelected(I)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;

    iget-object v1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCateName:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mParameters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;->onItemClick(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDate(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCateName:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mParameters:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDivider(I)V
    .locals 1

    iput p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mDivider:I

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mSpacesItemDecoration:Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance p1, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;

    iget v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mDivider:I

    invoke-direct {p1, p0, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;-><init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;I)V

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mSpacesItemDecoration:Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;

    new-instance p1, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;

    iget v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mDivider:I

    invoke-direct {p1, p0, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;-><init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;I)V

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setItemSelected(I)V
    .locals 2

    iget v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCurrentSelection:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCurrentSelection:I

    iput p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mCurrentSelection:I

    iget-object v1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mItemClickListener:Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateTime()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iget-boolean p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView;->mIs24Format:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
