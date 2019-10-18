.class Lcom/miui/aod/components/view/BaseStyleSelectView$1;
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

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$000(Lcom/miui/aod/components/view/BaseStyleSelectView;)Lcom/miui/aod/components/view/AodContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/components/view/AodContainerView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$000(Lcom/miui/aod/components/view/BaseStyleSelectView;)Lcom/miui/aod/components/view/AodContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/aod/components/view/AodContainerView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v2}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$000(Lcom/miui/aod/components/view/BaseStyleSelectView;)Lcom/miui/aod/components/view/AodContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/aod/components/view/AodContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$102(Lcom/miui/aod/components/view/BaseStyleSelectView;I)I

    iget-object v0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$1;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$000(Lcom/miui/aod/components/view/BaseStyleSelectView;)Lcom/miui/aod/components/view/AodContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/components/view/AodContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
