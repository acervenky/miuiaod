.class Lcom/miui/aod/widget/SignatureAodView$3;
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

.field final synthetic val$finalMargin:I


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/SignatureAodView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$3;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    iput p2, p0, Lcom/miui/aod/widget/SignatureAodView$3;->val$finalMargin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$3;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-virtual {p1, p0}, Lcom/miui/aod/widget/SignatureAodView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/miui/aod/widget/SignatureAodView$3;->this$0:Lcom/miui/aod/widget/SignatureAodView;

    invoke-static {p1}, Lcom/miui/aod/widget/SignatureAodView;->access$000(Lcom/miui/aod/widget/SignatureAodView;)Lcom/miui/aod/components/view/SquareVerticalTextView;

    move-result-object p1

    new-instance p3, Lcom/miui/aod/widget/SignatureAodView$3$1;

    invoke-direct {p3, p0, p4, p2}, Lcom/miui/aod/widget/SignatureAodView$3$1;-><init>(Lcom/miui/aod/widget/SignatureAodView$3;II)V

    invoke-virtual {p1, p3}, Lcom/miui/aod/components/view/SquareVerticalTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
