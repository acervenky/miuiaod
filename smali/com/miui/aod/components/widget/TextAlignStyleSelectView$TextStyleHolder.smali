.class Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TextAlignStyleSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/TextAlignStyleSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextStyleHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindDrawable(Lcom/miui/aod/resource/DrawableGravityData;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020288

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/components/widget/TextAlignStyleSelectView$TextStyleHolder;->mIcon:Landroid/widget/ImageView;

    iget p1, p1, Lcom/miui/aod/resource/DrawableGravityData;->mResId:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
