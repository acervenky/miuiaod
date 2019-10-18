.class Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ImageSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/ImageSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1100e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    instance-of p1, p1, Lcom/miui/aod/components/widget/RoundCornerImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b01c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    check-cast p0, Lcom/miui/aod/components/widget/RoundCornerImageView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/RoundCornerImageView;->setRectRoundRadius(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindDrawable(Lcom/miui/aod/components/DrawableData;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    iget p1, p1, Lcom/miui/aod/components/DrawableData;->mResId:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_0

    const p1, 0x7f020183

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/components/widget/ImageSelectView$ColorHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
