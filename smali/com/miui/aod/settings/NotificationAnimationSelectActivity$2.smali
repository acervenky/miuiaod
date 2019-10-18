.class Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;
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

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-virtual {v0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/notification/NotificationStyleManager;->getSelectedStyleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$300(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {v0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$500(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$2;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {v1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$400(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
