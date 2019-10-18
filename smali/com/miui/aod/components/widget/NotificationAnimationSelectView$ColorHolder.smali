.class Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotificationAnimationSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/widget/NotificationAnimationSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mIconContainer:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f1100fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f1100f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIconContainer:Landroid/view/View;

    const v0, 0x7f1100e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    instance-of p1, p1, Lcom/miui/aod/components/widget/RoundCornerImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b01c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    check-cast p0, Lcom/miui/aod/components/widget/RoundCornerImageView;

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/RoundCornerImageView;->setRectRoundRadius(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindDrawable(Lcom/miui/aod/components/DrawableData;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    iget v1, p1, Lcom/miui/aod/components/DrawableData;->mResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "none"

    iget-object v1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "screen_on"

    iget-object v1, p1, Lcom/miui/aod/components/DrawableData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    if-eqz p2, :cond_2

    const v0, 0x7f020183

    goto :goto_2

    :cond_2
    const v0, 0x7f0201b8

    :goto_2
    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mIconContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->getDrawbleTitle(Landroid/content/Context;Lcom/miui/aod/components/DrawableData;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0f001f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/components/widget/NotificationAnimationSelectView$ColorHolder;->mTitle:Landroid/widget/TextView;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void
.end method
