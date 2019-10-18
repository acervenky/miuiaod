.class Lcom/miui/aod/components/view/BaseStyleSelectView$4;
.super Ljava/lang/Object;
.source "BaseStyleSelectView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/components/view/BaseStyleSelectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentMS:J

.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->mCurrentMS:J

    sub-long/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->mDownX:F

    sub-float/2addr p1, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v3, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->mDownY:F

    sub-float/2addr p2, v3

    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    const/4 v4, 0x1

    if-lez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    const-wide/16 v5, 0x64

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    :cond_1
    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {p1}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$300(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/BottomSheetBehavior;->getState()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/aod/components/view/BaseStyleSelectView$ExitSelectViewEvent;

    invoke-direct {v0}, Lcom/miui/aod/components/view/BaseStyleSelectView$ExitSelectViewEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$300(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-virtual {p1, v0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->showPreviewMode(Z)V

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$300(Lcom/miui/aod/components/view/BaseStyleSelectView;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    :goto_1
    return v4

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->mDownY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$4;->mCurrentMS:J

    :cond_4
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
