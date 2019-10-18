.class Lcom/miui/aod/widget/ClockPanelView$2;
.super Ljava/lang/Object;
.source "ClockPanelView.java"

# interfaces
.implements Lcom/miui/aod/widget/FrameAnimationController$AnimationCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/ClockPanelView;->startBackgroundAnimation()V
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

    iput-object p1, p0, Lcom/miui/aod/widget/ClockPanelView$2;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView$2;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->resetBackground()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/miui/aod/widget/ClockPanelView$2;->this$0:Lcom/miui/aod/widget/ClockPanelView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/miui/aod/widget/ClockPanelView;->setOtherElementsVisibility(ZZ)V

    return-void
.end method
