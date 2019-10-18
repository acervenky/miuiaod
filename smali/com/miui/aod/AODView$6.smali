.class Lcom/miui/aod/AODView$6;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/AODView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/AODView;


# direct methods
.method constructor <init>(Lcom/miui/aod/AODView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/AODView$6;->this$0:Lcom/miui/aod/AODView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p1, 0x0

    if-ne p3, p7, :cond_1

    if-eq p5, p9, :cond_0

    goto :goto_0

    :cond_0
    move p6, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p6, 0x1

    :goto_1
    if-eqz p6, :cond_3

    sub-int p6, p5, p3

    if-lez p6, :cond_2

    iget-object p6, p0, Lcom/miui/aod/AODView$6;->this$0:Lcom/miui/aod/AODView;

    invoke-static {p6}, Lcom/miui/aod/AODView;->access$500(Lcom/miui/aod/AODView;)Lcom/miui/aod/AODUpdatePositionController;

    move-result-object p6

    invoke-virtual {p6, p2, p3, p4, p5}, Lcom/miui/aod/AODUpdatePositionController;->setViewPosition(IIII)V

    :cond_2
    iget-object p2, p0, Lcom/miui/aod/AODView$6;->this$0:Lcom/miui/aod/AODView;

    invoke-static {p2}, Lcom/miui/aod/AODView;->access$500(Lcom/miui/aod/AODView;)Lcom/miui/aod/AODUpdatePositionController;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/aod/AODView$6;->this$0:Lcom/miui/aod/AODView;

    invoke-static {p0}, Lcom/miui/aod/AODView;->access$600(Lcom/miui/aod/AODView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/miui/aod/AODUpdatePositionController;->updatePosition(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method
