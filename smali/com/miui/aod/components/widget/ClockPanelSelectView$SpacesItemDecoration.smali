.class public Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ClockPanelSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/ClockPanelSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;


# direct methods
.method public constructor <init>(Lcom/miui/aod/components/widget/ClockPanelSelectView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p2, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    iget p4, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-virtual {p4}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0b0035

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lcom/miui/aod/components/widget/ClockPanelSelectView$SpacesItemDecoration;->this$0:Lcom/miui/aod/components/widget/ClockPanelSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/ClockPanelSelectView;->access$600(Lcom/miui/aod/components/widget/ClockPanelSelectView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_1

    iput p4, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-void
.end method
