.class Lcom/miui/aod/components/widget/ImageSelectView$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ImageSelectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/widget/ImageSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/widget/ImageSelectView;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/widget/ImageSelectView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/widget/ImageSelectView$1;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateDtToFit(IIIII)I

    move-result p1

    iget-object p0, p0, Lcom/miui/aod/components/widget/ImageSelectView$1;->this$0:Lcom/miui/aod/components/widget/ImageSelectView;

    invoke-virtual {p0}, Lcom/miui/aod/components/widget/ImageSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0b0035

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 0

    const p0, 0x3e23d70a    # 0.16f

    return p0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
