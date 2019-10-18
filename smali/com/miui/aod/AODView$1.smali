.class Lcom/miui/aod/AODView$1;
.super Ljava/lang/Object;
.source "AODView.java"

# interfaces
.implements Lcom/miui/aod/util/NotificationController$NotificationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/AODView;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/aod/util/NotificationController$NotificationData;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    invoke-static {v0}, Lcom/miui/aod/AODView;->access$000(Lcom/miui/aod/AODView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    new-instance v1, Lcom/miui/aod/AODView$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/aod/AODView$1$1;-><init>(Lcom/miui/aod/AODView$1;ZLjava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODView;->post(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    invoke-static {v0}, Lcom/miui/aod/AODView;->access$000(Lcom/miui/aod/AODView;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/util/NotificationController$NotificationData;

    iget-object v1, v1, Lcom/miui/aod/util/NotificationController$NotificationData;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/aod/AODView;->access$200(Lcom/miui/aod/AODView;Ljava/util/List;)V

    :cond_1
    iget-object p0, p0, Lcom/miui/aod/AODView$1;->this$0:Lcom/miui/aod/AODView;

    invoke-static {p0}, Lcom/miui/aod/AODView;->access$300(Lcom/miui/aod/AODView;)V

    return-void
.end method
