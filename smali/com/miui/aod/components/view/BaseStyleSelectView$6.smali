.class Lcom/miui/aod/components/view/BaseStyleSelectView$6;
.super Ljava/lang/Object;
.source "BaseStyleSelectView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/components/view/BaseStyleSelectView;->configSelectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;


# direct methods
.method constructor <init>(Lcom/miui/aod/components/view/BaseStyleSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$6;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$6;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    iget-object p1, p1, Lcom/miui/aod/components/view/BaseStyleSelectView;->mStyleInfo:Lcom/miui/aod/common/StyleInfo;

    invoke-virtual {p1, p2}, Lcom/miui/aod/common/StyleInfo;->switchOnNotificationIcon(Z)V

    iget-object p0, p0, Lcom/miui/aod/components/view/BaseStyleSelectView$6;->this$0:Lcom/miui/aod/components/view/BaseStyleSelectView;

    invoke-static {p0}, Lcom/miui/aod/components/view/BaseStyleSelectView;->access$000(Lcom/miui/aod/components/view/BaseStyleSelectView;)Lcom/miui/aod/components/view/AodContainerView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/miui/aod/components/view/AodContainerView;->showNotificationIcon(Z)V

    return-void
.end method
