.class public Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "TextAlignStyleSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/TextAlignStyleSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I

.field final synthetic this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;


# direct methods
.method public constructor <init>(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p2, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    iget p4, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iget-object p4, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-virtual {p4}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f0b01ca

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/aod/Utils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$SpacesItemDecoration;->this$0:Lcom/miui/aod/components/widget/TextAlignStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/widget/TextAlignStyleSelectView;->access$400(Lcom/miui/aod/components/widget/TextAlignStyleSelectView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p2, p0, :cond_3

    invoke-static {}, Lcom/miui/aod/Utils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_2

    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iput p4, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_0
    return-void
.end method
