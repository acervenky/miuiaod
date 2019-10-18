.class Lcom/miui/aod/widget/SignatureAodView$1;
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

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getLineHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p2}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->getLineHeight()I

    move-result p2

    div-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p2}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Lcom/miui/aod/components/view/SquareVerticalTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$1;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-virtual {p1, p0}, Lcom/miui/aod/widget/SignatureAodView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
