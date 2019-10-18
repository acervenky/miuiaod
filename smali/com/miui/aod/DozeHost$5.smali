.class Lcom/miui/aod/DozeHost$5;
.super Ljava/lang/Object;
.source "DozeHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/DozeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/DozeHost;


# direct methods
.method constructor <init>(Lcom/miui/aod/DozeHost;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost$5;->this$0:Lcom/miui/aod/DozeHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/DozeHost$5;->this$0:Lcom/miui/aod/DozeHost;

    invoke-static {v0}, Lcom/miui/aod/DozeHost;->access$000(Lcom/miui/aod/DozeHost;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/DozeHost$5;->this$0:Lcom/miui/aod/DozeHost;

    invoke-static {p0}, Lcom/miui/aod/DozeHost;->access$000(Lcom/miui/aod/DozeHost;)Landroid/view/ViewGroup;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method
