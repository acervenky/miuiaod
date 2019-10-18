.class Lcom/miui/aod/AODView$2;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Lcom/miui/aod/widget/NotificationAnimationView$AnimationDrawer$AnimationStateListener;


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

    iput-object p1, p0, Lcom/miui/aod/AODView$2;->this$0:Lcom/miui/aod/AODView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/AODView$2;->this$0:Lcom/miui/aod/AODView;

    invoke-virtual {v0}, Lcom/miui/aod/AODView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/aod/AODView$2;->this$0:Lcom/miui/aod/AODView;

    iget-object v1, v1, Lcom/miui/aod/AODView;->mAnimateInvisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/miui/aod/AODView$2;->this$0:Lcom/miui/aod/AODView;

    iget-object p0, p0, Lcom/miui/aod/AODView;->mAnimateInvisible:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
