.class Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TextAlignStyleSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/TextAlignStyleSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextStyleSelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;


# direct methods
.method private constructor <init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;Lcom/miui/aod/components/widget/TextAlignStyleSelectView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;-><init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->access$200(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;I)V
    .locals 1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->access$200(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->access$200(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/resource/DrawableGravityData;

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->access$300(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;->bindDrawable(Lcom/miui/aod/resource/DrawableGravityData;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-static {p2}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->access$100(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f030063

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleSelectAdapter;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
