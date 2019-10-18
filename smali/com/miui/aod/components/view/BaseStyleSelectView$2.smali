.class Lcom/miui/aod/components/view/BaseStyleSelectView$2;
.super Ljava/lang/Object;
.source "BaseStyleSelectView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/view/BaseStyleSelectView;->inflate(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$200(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$300(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$2;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$200(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
