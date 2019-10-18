.class Lcom/miui/aod/widget/ClockPanelView$1;
.super Ljava/lang/Object;
.source "ClockPanelView.java"

# interfaces
.implements Lcom/miui/aod/widget/AnimationView$AnimationDrawer$AnimationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/ClockPanelView;->startClockHandAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/widget/ClockPanelView;


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/ClockPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    iget-object v1, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-static {v1}, Lcom/miui/aod/widget/ClockPanelView;->access$100(Lcom/miui/aod/widget/ClockPanelView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/ClockPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-static {p0}, Lcom/miui/aod/widget/ClockPanelView;->access$100(Lcom/miui/aod/widget/ClockPanelView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/aod/widget/ClockPanelView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-static {v0}, Lcom/miui/aod/widget/ClockPanelView;->access$000(Lcom/miui/aod/widget/ClockPanelView;)Lcom/miui/aod/widget/AnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/aod/widget/AnimationView;->setAlpha(F)V

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView$1;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-static {p0}, Lcom/miui/aod/widget/ClockPanelView;->access$000(Lcom/miui/aod/widget/ClockPanelView;)Lcom/miui/aod/widget/AnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/aod/widget/AnimationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x384

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
