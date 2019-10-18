.class Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AodStyleCategoriesActivity.java"

# interfaces
.implements Lcom/miui/aod/components/widget/ITimeUpdate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->this$1:Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/aod/components/view/AodContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/miui/aod/components/view/AodContainerView;

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/aod/components/view/AodContainerView;->handleUpdateTime(Z)V

    :cond_0
    return-void
.end method

.method public handleUpdateTime(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/miui/aod/components/widget/ITimeUpdate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/settings/AodStyleCategoriesActivity$CategoriesItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Lcom/miui/aod/components/widget/ITimeUpdate;

    invoke-interface {p0, p1}, Lcom/miui/aod/components/widget/ITimeUpdate;->handleUpdateTime(Z)V

    :cond_0
    return-void
.end method
