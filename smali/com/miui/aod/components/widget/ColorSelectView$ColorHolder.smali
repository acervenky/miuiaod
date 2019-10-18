.class Lcom/miui/aod/components/widget/ColorSelectView$ColorHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ColorSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/ColorSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mSelectView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1100dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/aod/components/widget/ColorSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f1100db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/widget/ColorSelectView$ColorHolder;->mSelectView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindDrawable(Lcom/miui/aod/components/DrawableData;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ColorSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    iget p1, p1, Lcom/miui/aod/components/DrawableData;->mResId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/ColorSelectView$ColorHolder;->mSelectView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
