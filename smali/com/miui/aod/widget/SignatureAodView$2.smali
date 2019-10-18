.class Lcom/miui/aod/widget/SignatureAodView$2;
.super Ljava/lang/Object;
.source "SignatureAodView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/SignatureAodView;->update(Lcom/miui/aod/common/StyleInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/widget/SignatureAodView;


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/SignatureAodView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/aod/components/view/SquareVerticalTextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$100(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/category/TextStyleCategoryInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p2}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getTextSize()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Lcom/miui/aod/Utils;->px2Dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/miui/aod/category/TextStyleCategoryInfo;->setTextSize(F)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$200(Lcom/miui/aod/widget/SignatureAodView;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$300(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$300(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/aod/widget/SignatureAodView$2;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p0}, Lcom/miui/aod/widget/SignatureAodView;->access$100(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/category/TextStyleCategoryInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/category/TextStyleCategoryInfo;->getTextSize()F

    move-result p0

    float-to-int p0, p0

    invoke-interface {p1, p0}, Lcom/miui/aod/widget/SignatureAodView$ITextSizeListener;->onTextSizeChanged(I)V

    :cond_0
    return-void
.end method
