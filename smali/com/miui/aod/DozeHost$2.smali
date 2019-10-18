.class Lcom/miui/aod/DozeHost$2;
.super Ljava/lang/Object;
.source "DozeHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/DozeHost;->setAodClockVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/DozeHost;

.field final synthetic val$visibility:Z


# direct methods
.method constructor <init>(Lcom/miui/aod/DozeHost;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost$2;->this$0:Lcom/miui/aod/DozeHost;

    iput-boolean p2, p0, Lcom/miui/aod/DozeHost$2;->val$visibility:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/DozeHost$2;->this$0:Lcom/miui/aod/DozeHost;

    invoke-static {v0}, Lcom/miui/aod/DozeHost;->access$000(Lcom/miui/aod/DozeHost;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/aod/DozeHost$2;->val$visibility:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
