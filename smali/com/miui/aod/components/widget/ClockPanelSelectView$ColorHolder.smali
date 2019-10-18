.class Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ClockPanelSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/ClockPanelSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorHolder"
.end annotation


# instance fields
.field private mAodStyleController:Lcom/miui/aod/AODStyleController;

.field private mIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;


# direct methods
.method public constructor <init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/miui/aod/AODStyleController;

    invoke-static {p1}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$100(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    const p1, 0x7f1100e2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    instance-of p1, p1, Lcom/miui/aod/components/widget/RoundCornerImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b01c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    check-cast p0, Lcom/miui/aod/components/widget/RoundCornerImageView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/RoundCornerImageView;->setRectRoundRadius(I)V

    :cond_0
    return-void
.end method

.method private hideViewById(Landroid/view/View;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindDrawable(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {v2}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$400(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/aod/AODStyleController;->inflateView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/aod/widget/IAodClock;

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$500(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1100c2

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->hideViewById(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1100c0

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->hideViewById(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1100c1

    invoke-direct {p0, p1, v0}, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->hideViewById(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/miui/aod/components/view/AodContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/AodContainerView;->showBatteryIcon(Z)V

    if-eqz p2, :cond_0

    const v0, 0x7f020183

    :cond_0
    const/4 p1, 0x0

    if-lez v0, :cond_1

    iget-object p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateTime(Z)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$ColorHolder;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    invoke-virtual {p0, p1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    return-void
.end method
