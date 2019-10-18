.class public Lcom/miui/aod/widget/BoundedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "BoundedLinearLayout.java"


# instance fields
.field private final mBoundedMaxHeight:I

.field private final mBoundedMaxWidth:I

.field private final mBoundedMinHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxWidth:I

    iput p1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxHeight:I

    iput p1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMinHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/miui/aod/R$styleable;->BoundedView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxWidth:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxHeight:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMinHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxWidth:I

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iget v0, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxWidth:I

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxHeight:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxHeight:I

    if-ge v1, v0, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v0, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMaxHeight:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/miui/aod/widget/BoundedLinearLayout;->getMeasuredHeight()I

    move-result p1

    iget p2, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMinHeight:I

    if-lez p2, :cond_2

    iget p2, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMinHeight:I

    if-le p2, p1, :cond_2

    iget p1, p0, Lcom/miui/aod/widget/BoundedLinearLayout;->mBoundedMinHeight:I

    invoke-virtual {p0}, Lcom/miui/aod/widget/BoundedLinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/miui/aod/widget/BoundedLinearLayout;->setMeasuredDimension(II)V

    :cond_2
    return-void
.end method
