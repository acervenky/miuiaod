.class Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ClockPanelSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/ClockPanelSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorSelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;


# direct methods
.method private constructor <init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;Lcom/miui/aod/components/widget/ClockPanelSelectView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;-><init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$200(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;I)V
    .locals 1

    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$200(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$200(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$300(Lcom/miui/aod/components/widget/ClockPanelSelectView;)I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->bindDrawable(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->onBindViewHolder(Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;I)V

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

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->updateTime(Z)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {p2}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$100(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorSelectAdapter;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-direct {p2, p0, p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;-><init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;Landroid/view/View;)V

    return-object p2
.end method
