.class Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImageSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/ImageSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/widget/ImageSelectView;


# direct methods
.method private constructor <init>(Lcom/miui/aod/components/widget/ImageSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/components/widget/ImageSelectView;Lcom/miui/aod/components/widget/ImageSelectView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;-><init>(Lcom/miui/aod/components/widget/ImageSelectView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/ImageSelectView;->access$200(Lcom/miui/aod/components/widget/ImageSelectView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;I)V
    .locals 1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/ImageSelectView;->access$200(Lcom/miui/aod/components/widget/ImageSelectView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/ImageSelectView;->access$200(Lcom/miui/aod/components/widget/ImageSelectView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/components/DrawableData;

    iget-object p0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/ImageSelectView;->access$300(Lcom/miui/aod/components/widget/ImageSelectView;)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->bindDrawable(Lcom/miui/aod/components/DrawableData;Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-static {p2}, Lcom/miui/aod/components/widget/ImageSelectView;->access$100(Lcom/miui/aod/components/widget/ImageSelectView;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->getItemCount()I

    move-result p2

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {v0}, Lcom/miui/aod/components/widget/ImageSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
