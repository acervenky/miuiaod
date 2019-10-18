.class Lcom/miui/aod/widget/SignatureAodView$3$1;
.super Ljava/lang/Object;
.source "SignatureAodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/SignatureAodView$3;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/aod/widget/SignatureAodView$3;

.field final synthetic val$left:I

.field final synthetic val$right:I


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/SignatureAodView$3;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->this$1:Lcom/miui/aod/widget/SignatureAodView$3;

    iput p2, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->val$right:I

    iput p3, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->val$left:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->this$1:Lcom/miui/aod/widget/SignatureAodView$3;

    iget-object v0, v0, Lcom/miui/aod/widget/SignatureAodView$3;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {v0}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object v0

    iget v1, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->val$right:I

    iget v2, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->val$left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->this$1:Lcom/miui/aod/widget/SignatureAodView$3;

    iget v2, v2, Lcom/miui/aod/widget/SignatureAodView$3;->val$finalMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->this$1:Lcom/miui/aod/widget/SignatureAodView$3;

    iget-object v2, v2, Lcom/miui/aod/widget/SignatureAodView$3;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {v2}, Lcom/miui/aod/widget/SignatureAodView;->access$100(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/category/TextStyleCategoryInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView$3$1;->this$1:Lcom/miui/aod/widget/SignatureAodView$3;

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView$3;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/SignatureAodView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b00cd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setTextSize(IFZ)V

    return-void
.end method
