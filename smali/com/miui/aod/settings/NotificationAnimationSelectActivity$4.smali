.class Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;
.super Ljava/lang/Object;
.source "NotificationAnimationSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/settings/NotificationAnimationSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    iget-object v0, v0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->mPreviewStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    iget-boolean v1, v1, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->m24HourFormat:Z

    invoke-virtual {v0, v1}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$500(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$4;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$600(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
