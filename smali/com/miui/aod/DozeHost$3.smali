.class Lcom/miui/aod/DozeHost$3;
.super Ljava/lang/Object;
.source "DozeHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/DozeHost;->fireAodState(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/DozeHost;

.field final synthetic val$callbacks:Ljava/util/List;

.field final synthetic val$on:Z

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/aod/DozeHost;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/DozeHost$3;->this$0:Lcom/miui/aod/DozeHost;

    iput-object p2, p0, Lcom/miui/aod/DozeHost$3;->val$callbacks:Ljava/util/List;

    iput-boolean p3, p0, Lcom/miui/aod/DozeHost$3;->val$on:Z

    iput-object p4, p0, Lcom/miui/aod/DozeHost$3;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/aod/DozeHost$3;->val$callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/aod/DozeHost$Callback;

    iget-boolean v2, p0, Lcom/miui/aod/DozeHost$3;->val$on:Z

    iget-object v3, p0, Lcom/miui/aod/DozeHost$3;->val$reason:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/miui/aod/DozeHost$Callback;->fireAodState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
