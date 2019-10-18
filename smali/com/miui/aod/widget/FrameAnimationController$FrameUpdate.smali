.class Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;
.super Ljava/lang/Object;
.source "FrameAnimationController.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/FrameAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameUpdate"
.end annotation


# instance fields
.field private volatile mDrawing:Z

.field private mLastFrameTime:J

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/miui/aod/widget/FrameAnimationController;


# direct methods
.method private constructor <init>(Lcom/miui/aod/widget/FrameAnimationController;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mLastFrameTime:J

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/aod/widget/FrameAnimationController;Lcom/miui/aod/widget/FrameAnimationController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;-><init>(Lcom/miui/aod/widget/FrameAnimationController;)V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6

    iget-object v0, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-static {v0}, Lcom/miui/aod/widget/FrameAnimationController;->access$300(Lcom/miui/aod/widget/FrameAnimationController;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mLastFrameTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-static {v1}, Lcom/miui/aod/widget/FrameAnimationController;->access$400(Lcom/miui/aod/widget/FrameAnimationController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    new-instance v3, Lcom/miui/aod/widget/-$$Lambda$CRyMdtatbkTX4yP3S65xs8lW7LE;

    invoke-direct {v3, v2}, Lcom/miui/aod/widget/-$$Lambda$CRyMdtatbkTX4yP3S65xs8lW7LE;-><init>(Lcom/miui/aod/widget/FrameAnimationController;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mLastFrameTime:J

    sub-long v1, p1, v1

    iget-boolean v3, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mDrawing:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-static {v3}, Lcom/miui/aod/widget/FrameAnimationController;->access$500(Lcom/miui/aod/widget/FrameAnimationController;)I

    move-result v3

    const v4, 0xf4240

    mul-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-static {v1}, Lcom/miui/aod/widget/FrameAnimationController;->access$300(Lcom/miui/aod/widget/FrameAnimationController;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-static {v0}, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->access$600(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->access$700(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/aod/widget/FrameAnimationController;->access$800(Lcom/miui/aod/widget/FrameAnimationController;Landroid/graphics/Bitmap;Landroid/graphics/Paint;Landroid/graphics/Matrix;I)V

    iput-wide p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mLastFrameTime:J

    invoke-static {v0}, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->access$900(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-static {p1}, Lcom/miui/aod/widget/FrameAnimationController;->access$400(Lcom/miui/aod/widget/FrameAnimationController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->this$0:Lcom/miui/aod/widget/FrameAnimationController;

    new-instance v1, Lcom/miui/aod/widget/-$$Lambda$MNtAKXUwQHbfrLzLP3Lz6L1WYKE;

    invoke-direct {v1, p2}, Lcom/miui/aod/widget/-$$Lambda$MNtAKXUwQHbfrLzLP3Lz6L1WYKE;-><init>(Lcom/miui/aod/widget/FrameAnimationController;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mDrawing:Z

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;->access$900(Lcom/miui/aod/widget/FrameAnimationController$BitmapInfo;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mDrawing:Z

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_4
    :goto_1
    return-void
.end method

.method setDrawing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mDrawing:Z

    iget-boolean p1, p0, Lcom/miui/aod/widget/FrameAnimationController$FrameUpdate;->mDrawing:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
