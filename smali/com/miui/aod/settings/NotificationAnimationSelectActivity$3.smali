.class Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;
.super Ljava/lang/Object;
.source "NotificationAnimationSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/NotificationAnimationSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentMS:J

.field private mDownX:F

.field private mDownY:F

.field final synthetic this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->mCurrentMS:J

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->mDownX:F

    sub-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->mDownY:F

    sub-float/2addr p2, p0

    const-wide/16 v2, 0x64

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x41a00000    # 20.0f

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->mDownY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$3;->mCurrentMS:J

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
