.class Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationAnimationSelectActivity.java"


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

    iput-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$000(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$100(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Z)V

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$200(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {p1}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$000(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$100(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;Z)V

    iget-object p0, p0, Lcom/miui/aod/settings/NotificationAnimationSelectActivity$1;->this$0:Lcom/miui/aod/settings/NotificationAnimationSelectActivity;

    invoke-static {p0}, Lcom/miui/aod/settings/NotificationAnimationSelectActivity;->access$200(Lcom/miui/aod/settings/NotificationAnimationSelectActivity;)Lcom/miui/aod/components/widget/NotificationAnimationSelectView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/aod/components/widget/NotificationAnimationSelectView;->setVisibility(I)V

    :cond_0
    return-void
.end method
