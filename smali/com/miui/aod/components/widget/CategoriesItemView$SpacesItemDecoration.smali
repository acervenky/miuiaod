.class public Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "CategoriesItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/CategoriesItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpacesItemDecoration"
.end annotation


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    iget p4, p0, Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;->space:I

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/miui/aod/components/widget/CategoriesItemView$SpacesItemDecoration;->space:I

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/aod/Utils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/aod/components/widget/CategoriesItemView;->access$200()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/aod/components/widget/CategoriesItemView;->access$200()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p0, p2, :cond_3

    invoke-static {}, Lcom/miui/aod/Utils;->isLayoutRtl()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/miui/aod/components/widget/CategoriesItemView;->access$200()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/aod/components/widget/CategoriesItemView;->access$200()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_0
    return-void
.end method
