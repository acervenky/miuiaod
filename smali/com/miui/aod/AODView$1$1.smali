.class Lcom/miui/aod/AODView$1$1;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/AODView$1;->onUpdate(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/aod/AODView$1;

.field final synthetic val$datas:Ljava/util/ArrayList;

.field final synthetic val$needAnimate:Z


# direct methods
.method constructor <init>(Lcom/miui/aod/AODView$1;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/AODView$1$1;->this$1:Lcom/miui/aod/AODView$1;

    iput-boolean p2, p0, Lcom/miui/aod/AODView$1$1;->val$needAnimate:Z

    iput-object p3, p0, Lcom/miui/aod/AODView$1$1;->val$datas:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/aod/AODView$1$1;->val$needAnimate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/AODView$1$1;->this$1:Lcom/miui/aod/AODView$1;

    iget-object v0, v0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    iget-object v1, p0, Lcom/miui/aod/AODView$1$1;->val$datas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/util/NotificationController$NotificationData;

    iget-object v1, v1, Lcom/miui/aod/util/NotificationController$NotificationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/aod/AODView;->access$100(Lcom/miui/aod/AODView;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/aod/AODView$1$1;->this$1:Lcom/miui/aod/AODView$1;

    iget-object v0, v0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    iget-object p0, p0, Lcom/miui/aod/AODView$1$1;->val$datas:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/miui/aod/AODView;->access$200(Lcom/miui/aod/AODView;Ljava/util/List;)V

    return-void
.end method
