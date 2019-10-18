.class Lcom/miui/aod/widget/NotificationAnimationView$1;
.super Ljava/lang/Object;
.source "NotificationAnimationView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/widget/NotificationAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/widget/NotificationAnimationView;


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/NotificationAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/NotificationAnimationView$1;->this$0:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/widget/NotificationAnimationView$1;->this$0:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-static {v0, p1, p2}, Lcom/miui/aod/widget/NotificationAnimationView;->access$000(Lcom/miui/aod/widget/NotificationAnimationView;J)V

    iget-object p1, p0, Lcom/miui/aod/widget/NotificationAnimationView$1;->this$0:Lcom/miui/aod/widget/NotificationAnimationView;

    invoke-static {p1}, Lcom/miui/aod/widget/NotificationAnimationView;->access$100(Lcom/miui/aod/widget/NotificationAnimationView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
