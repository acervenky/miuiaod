.class Lcom/miui/aod/settings/AODStyleActivity$1;
.super Ljava/lang/Object;
.source "AODStyleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/settings/AODStyleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/AODStyleActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/AODStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/AODStyleActivity$1;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity$1;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/AODStyleActivity;->access$100(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/AODStyleController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/AODStyleActivity$1;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/AODStyleActivity;->access$000(Lcom/miui/aod/settings/AODStyleActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity$1;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/AODStyleActivity;->access$200(Lcom/miui/aod/settings/AODStyleActivity;)Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/aod/settings/AODStyleActivity$ImageAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/aod/settings/AODStyleActivity$1;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/AODStyleActivity;->access$400(Lcom/miui/aod/settings/AODStyleActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/settings/AODStyleActivity$1;->this$0:Lcom/miui/aod/settings/AODStyleActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/AODStyleActivity;->access$300(Lcom/miui/aod/settings/AODStyleActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
